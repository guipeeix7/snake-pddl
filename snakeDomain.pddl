(define (domain snake)
(:requirements :strips :negative-preconditions)

(:predicates
    ;up down left right of a field
    (ISADJACENT ?x ?y)
    ;the last field of the snake
    (tailsnake ?x)
    ;the first field of the snake
    (headsnake ?x)
    ;pieces of the snake that are connected. from front to back
    (nextsnake ?x ?y)
    ;a field that is occupied by the snake or by an obstacle
    (blocked ?x)
    ;a field that has a point that can be collected by the snake
    (ispoint ?x)
)
(:action move
    :parameters (?head ?newhead ?tail ?newtail)
    :precondition
    (and
        ;Snake heade is snake head
        (headsnake ?head)
        ;Newhead is adjacent to previous head
        (ISADJACENT ?head ?newhead)
        ;tailsnake is tail
        (tailsnake ?tail)
        ;tail and new tails are (or could be) connected
        (nextsnake ?newtail ?tail)
        ;NewHead is not blocked by obstacle or by snake body
        (not (blocked ?newhead))
        ;newhead is not the point
        (not (ispoint ?newhead))
    )
    :effect
    (and
        ;NEWHEAD is now blocked and
        (blocked ?newhead)
        ;HEADSNAKE receives the newhead
        (headsnake ?newhead)
        ;NEWHEAD and previous head are connected
        (nextsnake ?newhead ?head)
        ;HEADSNAKE is no longer the head 
        (not (headsnake ?head))
        ;last TAIL is no longer blocked (the snake dont growth on new point collection)
        (not (blocked ?tail))
        ;TAILSNAKE is no longer the tail
        (not (tailsnake ?tail))
        ;las TAIL is no longe part of body the snake
        ;(not (nextsnake ?newtail ?tail))
        ;TAILSNAKE receives the value of the new tail
        (tailsnake ?newtail)
    )
)

(:action move-and-eat-spawn
    :parameters (?head ?newhead)
    :precondition
    (and
        ;head snake is head
        (headsnake ?head)
        ;newHead is adjacent to head
        (ISADJACENT ?head ?newhead)
        ;newHead is not blocked
        (not (blocked ?newhead))
        ;ispoint is newhead position
        (ispoint ?newhead)
    )
    :effect
    (and
        ;new head is blocked
        (blocked ?newhead)
        ;headSnake is newHead
        (headsnake ?newhead)
        ;headsnake and newHead are now connected
        (nextsnake ?newhead ?head)
        ;head snake is no longer the last head
        (not (headsnake ?head))
        ;is not the head
        (not (ispoint ?newhead))
        ;isPoint is the new spawnpoint
    )
)


)