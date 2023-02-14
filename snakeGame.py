import pygame, random
from pygame.locals import *
from time import sleep
import glob
from Pilot import Pilot

# Helper functions
def on_grid_random():
    x = random.randint(0,29)
    y = random.randint(0,29)
    return (x * 10, y * 10)

def collision(c1, c2):
    return (c1[0] == c2[0]) and (c1[1] == c2[1])
          
def readInputsFromFile():
    lines = []
    with open('./pddlConvertedOut/cmds.txt', 'r') as f:
        last_line = f.readlines()[-1]
    f.close()
    return last_line.split(',')[0:-1]

# Macro definition for snake movement.
UP = 0
RIGHT = 1
DOWN = 2
LEFT = 3



pygame.init()
screen = pygame.display.set_mode((300, 300))
pygame.display.set_caption('Snake')

snake = [(100, 100), (110, 100), (120,100)]
snake_skin = pygame.Surface((10,10))
snake_skin.fill((255,255,255)) #White

apple_pos = on_grid_random()
apple = pygame.Surface((10,10))
apple.fill((150,0,0))

my_direction = LEFT

clock = pygame.time.Clock()

font = pygame.font.Font('freesansbold.ttf', 18)
score = 0

pilot = Pilot()

game_over = False
while not game_over:
    clock.tick(10)
    for event in pygame.event.get():
        if event.type == QUIT:
            pygame.quit()
            exit()

        if event.type == KEYDOWN:
            if event.key == K_UP and my_direction != DOWN:
                my_direction = UP
            if event.key == K_DOWN and my_direction != UP:
                my_direction = DOWN
            if event.key == K_LEFT and my_direction != RIGHT:
                my_direction = LEFT
            if event.key == K_RIGHT and my_direction != LEFT:
                my_direction = RIGHT
        
        # pilot.loopLoader(snake, apple_pos)
        # sleep(2)
        # for cmd in readInputsFromFile():
        #     my_direction = cmd

    # print(snake)
    # print(apple_pos)
    if collision(snake[0], apple_pos):
        apple_pos = on_grid_random()
        snake.append((0,0))
        score = score + 1
        
    # Check if snake collided with boundaries
    if snake[0][0] == 300 or snake[0][1] == 300 or snake[0][0] < 0 or snake[0][1] < 0:
        game_over = True
        break
    
    # Check if the snake has hit itself
    for i in range(1, len(snake) - 1):
        if snake[0][0] == snake[i][0] and snake[0][1] == snake[i][1]:
            game_over = True
            break

    if game_over:
        break
    
    for i in range(len(snake) - 1, 0, -1):
        snake[i] = (snake[i-1][0], snake[i-1][1])
        
    # Actually make the snake move.
    if my_direction == UP:
        snake[0] = (snake[0][0], snake[0][1] - 10)
    if my_direction == DOWN:
        snake[0] = (snake[0][0], snake[0][1] + 10)
    if my_direction == RIGHT:
        snake[0] = (snake[0][0] + 10, snake[0][1])
    if my_direction == LEFT:
        snake[0] = (snake[0][0] - 10, snake[0][1])
    
    screen.fill((0,0,0))
    screen.blit(apple, apple_pos)
    
    for x in range(0, 300, 10): # Draw vertical lines
        pygame.draw.line(screen, (40, 40, 40), (x, 0), (x, 300))
    for y in range(0, 300, 10): # Draw vertical lines
        pygame.draw.line(screen, (40, 40, 40), (0, y), (300, y))
    
    score_font = font.render('Score: %s' % (score), True, (135,206,235))
    score_rect = score_font.get_rect()
    score_rect.topleft = (270 - 60, 15)
    screen.blit(score_font, score_rect)
    
    for pos in snake:
        screen.blit(snake_skin,pos)

    pygame.display.update()

while True:
    game_over_font = pygame.font.Font('freesansbold.ttf', 45)
    game_over_screen = game_over_font.render('Game Over', True, (220,20,60))
    game_over_rect = game_over_screen.get_rect()
    game_over_rect.midtop = (300 / 2, 30)
    screen.blit(game_over_screen, game_over_rect)
    pygame.display.update()
    pygame.time.wait(500)
    while True:
        for event in pygame.event.get():
            if event.type == QUIT:
                pygame.quit()
                exit()
      