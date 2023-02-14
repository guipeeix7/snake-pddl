from BuildGrid import BuildGrid
from Snake import Snake
from AppleSpawn import AppleSpawn
from Movement import Movement
from time import sleep
import os
import glob 


class Pilot:
    instances = 0 
    def __init__(self):
        self.instances = 0

    def generator(self, snakePos, applePos):
        matrixSize = 6

        file = open('./inputs/conv'+str(self.instances)+'.pddl', 'w') # Open a file in append mode

        file.write((f"(define (problem snake-empty-{matrixSize}x{matrixSize})\n"))
        file.write((f"(:domain snake)\n"))
        buildeGrid = BuildGrid(matrixSize)
        buildeGrid.defineObjects(file)
        buildeGrid.generateConnections(0 ,0, file)
        
        snake = Snake()
        snake.buildSnakePositions(snakePos,file)
        
        appleSpawn = AppleSpawn()
        appleSpawn.generateApplePosition(applePos, file)

        appleSpawn.eatApple(applePos, file)
        file.close() # Close the file


    def loopLoader(self, snakePos, applePos):
        list_of_files = glob.glob('./out/*') # * means all if need specific format then *.csv

        counterFiles = 0; 
        self.generator( snakePos, applePos)
        os.system("java -jar ./pddl4j-3.8.3.jar -o ./snakeDomain.pddl -f ./inputs/conv"+str(self.instances)+".pddl > ./out/out"+str(self.instances)+".txt")

        movement = Movement()
        movement.interpretMovement(self.instances)
        self.instances+=1
        return self.instances

