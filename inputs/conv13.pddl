(define (problem snake-empty-8x8)
(:domain snake)
(:objects
	pos0-0 pos0-1 pos0-2 pos0-3 pos0-4 pos0-5 pos0-6 pos0-7 pos1-0 pos1-1 pos1-2 pos1-3 pos1-4 pos1-5 pos1-6 pos1-7 pos2-0 pos2-1 pos2-2 pos2-3 pos2-4 pos2-5 pos2-6 pos2-7 pos3-0 pos3-1 pos3-2 pos3-3 pos3-4 pos3-5 pos3-6 pos3-7 pos4-0 pos4-1 pos4-2 pos4-3 pos4-4 pos4-5 pos4-6 pos4-7 pos5-0 pos5-1 pos5-2 pos5-3 pos5-4 pos5-5 pos5-6 pos5-7 pos6-0 pos6-1 pos6-2 pos6-3 pos6-4 pos6-5 pos6-6 pos6-7 pos7-0 pos7-1 pos7-2 pos7-3 pos7-4 pos7-5 pos7-6 pos7-7 
)(:init
	(ISADJACENT pos0-0 pos1-0)
	(ISADJACENT pos1-0 pos2-0)
	(ISADJACENT pos2-0 pos3-0)
	(ISADJACENT pos3-0 pos4-0)
	(ISADJACENT pos4-0 pos5-0)
	(ISADJACENT pos5-0 pos6-0)
	(ISADJACENT pos6-0 pos7-0)
	(ISADJACENT pos7-0 pos7-1)
	(ISADJACENT pos7-1 pos7-0)
	(ISADJACENT pos7-1 pos7-2)
	(ISADJACENT pos7-2 pos7-1)
	(ISADJACENT pos7-2 pos7-3)
	(ISADJACENT pos7-3 pos7-2)
	(ISADJACENT pos7-3 pos7-4)
	(ISADJACENT pos7-4 pos7-3)
	(ISADJACENT pos7-4 pos7-5)
	(ISADJACENT pos7-5 pos7-4)
	(ISADJACENT pos7-5 pos7-6)
	(ISADJACENT pos7-6 pos7-5)
	(ISADJACENT pos7-6 pos7-7)
	(ISADJACENT pos7-7 pos7-6)
	(ISADJACENT pos7-7 pos6-7)
	(ISADJACENT pos6-7 pos6-6)
	(ISADJACENT pos6-6 pos6-5)
	(ISADJACENT pos6-5 pos6-4)
	(ISADJACENT pos6-4 pos6-3)
	(ISADJACENT pos6-3 pos6-2)
	(ISADJACENT pos6-2 pos6-1)
	(ISADJACENT pos6-1 pos6-0)
	(ISADJACENT pos6-1 pos7-1)
	(ISADJACENT pos6-1 pos6-2)
	(ISADJACENT pos6-1 pos5-1)
	(ISADJACENT pos5-1 pos5-0)
	(ISADJACENT pos5-1 pos6-1)
	(ISADJACENT pos5-1 pos5-2)
	(ISADJACENT pos5-2 pos5-1)
	(ISADJACENT pos5-2 pos6-2)
	(ISADJACENT pos5-2 pos5-3)
	(ISADJACENT pos5-3 pos5-2)
	(ISADJACENT pos5-3 pos6-3)
	(ISADJACENT pos5-3 pos5-4)
	(ISADJACENT pos5-4 pos5-3)
	(ISADJACENT pos5-4 pos6-4)
	(ISADJACENT pos5-4 pos5-5)
	(ISADJACENT pos5-5 pos5-4)
	(ISADJACENT pos5-5 pos6-5)
	(ISADJACENT pos5-5 pos5-6)
	(ISADJACENT pos5-6 pos5-5)
	(ISADJACENT pos5-6 pos6-6)
	(ISADJACENT pos5-6 pos5-7)
	(ISADJACENT pos5-7 pos5-6)
	(ISADJACENT pos5-7 pos6-7)
	(ISADJACENT pos5-7 pos4-7)
	(ISADJACENT pos4-7 pos4-6)
	(ISADJACENT pos4-6 pos4-5)
	(ISADJACENT pos4-5 pos4-4)
	(ISADJACENT pos4-4 pos4-3)
	(ISADJACENT pos4-3 pos4-2)
	(ISADJACENT pos4-2 pos4-1)
	(ISADJACENT pos4-1 pos4-0)
	(ISADJACENT pos4-1 pos5-1)
	(ISADJACENT pos4-1 pos4-2)
	(ISADJACENT pos4-1 pos3-1)
	(ISADJACENT pos3-1 pos3-0)
	(ISADJACENT pos3-1 pos4-1)
	(ISADJACENT pos3-1 pos3-2)
	(ISADJACENT pos3-2 pos3-1)
	(ISADJACENT pos3-2 pos4-2)
	(ISADJACENT pos3-2 pos3-3)
	(ISADJACENT pos3-3 pos3-2)
	(ISADJACENT pos3-3 pos4-3)
	(ISADJACENT pos3-3 pos3-4)
	(ISADJACENT pos3-4 pos3-3)
	(ISADJACENT pos3-4 pos4-4)
	(ISADJACENT pos3-4 pos3-5)
	(ISADJACENT pos3-5 pos3-4)
	(ISADJACENT pos3-5 pos4-5)
	(ISADJACENT pos3-5 pos3-6)
	(ISADJACENT pos3-6 pos3-5)
	(ISADJACENT pos3-6 pos4-6)
	(ISADJACENT pos3-6 pos3-7)
	(ISADJACENT pos3-7 pos3-6)
	(ISADJACENT pos3-7 pos4-7)
	(ISADJACENT pos3-7 pos2-7)
	(ISADJACENT pos2-7 pos2-6)
	(ISADJACENT pos2-6 pos2-5)
	(ISADJACENT pos2-5 pos2-4)
	(ISADJACENT pos2-4 pos2-3)
	(ISADJACENT pos2-3 pos2-2)
	(ISADJACENT pos2-2 pos2-1)
	(ISADJACENT pos2-1 pos2-0)
	(ISADJACENT pos2-1 pos3-1)
	(ISADJACENT pos2-1 pos2-2)
	(ISADJACENT pos2-1 pos1-1)
	(ISADJACENT pos1-1 pos1-0)
	(ISADJACENT pos1-1 pos2-1)
	(ISADJACENT pos1-1 pos1-2)
	(ISADJACENT pos1-2 pos1-1)
	(ISADJACENT pos1-2 pos2-2)
	(ISADJACENT pos1-2 pos1-3)
	(ISADJACENT pos1-3 pos1-2)
	(ISADJACENT pos1-3 pos2-3)
	(ISADJACENT pos1-3 pos1-4)
	(ISADJACENT pos1-4 pos1-3)
	(ISADJACENT pos1-4 pos2-4)
	(ISADJACENT pos1-4 pos1-5)
	(ISADJACENT pos1-5 pos1-4)
	(ISADJACENT pos1-5 pos2-5)
	(ISADJACENT pos1-5 pos1-6)
	(ISADJACENT pos1-6 pos1-5)
	(ISADJACENT pos1-6 pos2-6)
	(ISADJACENT pos1-6 pos1-7)
	(ISADJACENT pos1-7 pos1-6)
	(ISADJACENT pos1-7 pos2-7)
	(ISADJACENT pos1-7 pos0-7)
	(ISADJACENT pos0-7 pos0-6)
	(ISADJACENT pos0-6 pos0-5)
	(ISADJACENT pos0-5 pos0-4)
	(ISADJACENT pos0-4 pos0-3)
	(ISADJACENT pos0-3 pos0-2)
	(ISADJACENT pos0-2 pos0-1)
	(ISADJACENT pos0-1 pos0-0)
	(ISADJACENT pos0-1 pos1-1)
	(ISADJACENT pos0-1 pos0-2)
	(ISADJACENT pos0-2 pos1-2)
	(ISADJACENT pos0-2 pos0-3)
	(ISADJACENT pos0-3 pos1-3)
	(ISADJACENT pos0-3 pos0-4)
	(ISADJACENT pos0-4 pos1-4)
	(ISADJACENT pos0-4 pos0-5)
	(ISADJACENT pos0-5 pos1-5)
	(ISADJACENT pos0-5 pos0-6)
	(ISADJACENT pos0-6 pos1-6)
	(ISADJACENT pos0-6 pos0-7)
	(ISADJACENT pos0-7 pos1-7)
	(ISADJACENT pos1-6 pos0-6)
	(ISADJACENT pos1-5 pos0-5)
	(ISADJACENT pos1-4 pos0-4)
	(ISADJACENT pos1-3 pos0-3)
	(ISADJACENT pos1-2 pos0-2)
	(ISADJACENT pos1-1 pos0-1)
	(ISADJACENT pos2-2 pos3-2)
	(ISADJACENT pos2-2 pos2-3)
	(ISADJACENT pos2-2 pos1-2)
	(ISADJACENT pos2-3 pos3-3)
	(ISADJACENT pos2-3 pos2-4)
	(ISADJACENT pos2-3 pos1-3)
	(ISADJACENT pos2-4 pos3-4)
	(ISADJACENT pos2-4 pos2-5)
	(ISADJACENT pos2-4 pos1-4)
	(ISADJACENT pos2-5 pos3-5)
	(ISADJACENT pos2-5 pos2-6)
	(ISADJACENT pos2-5 pos1-5)
	(ISADJACENT pos2-6 pos3-6)
	(ISADJACENT pos2-6 pos2-7)
	(ISADJACENT pos2-6 pos1-6)
	(ISADJACENT pos2-7 pos3-7)
	(ISADJACENT pos2-7 pos1-7)
	(ISADJACENT pos3-6 pos2-6)
	(ISADJACENT pos3-5 pos2-5)
	(ISADJACENT pos3-4 pos2-4)
	(ISADJACENT pos3-3 pos2-3)
	(ISADJACENT pos3-2 pos2-2)
	(ISADJACENT pos3-1 pos2-1)
	(ISADJACENT pos4-2 pos5-2)
	(ISADJACENT pos4-2 pos4-3)
	(ISADJACENT pos4-2 pos3-2)
	(ISADJACENT pos4-3 pos5-3)
	(ISADJACENT pos4-3 pos4-4)
	(ISADJACENT pos4-3 pos3-3)
	(ISADJACENT pos4-4 pos5-4)
	(ISADJACENT pos4-4 pos4-5)
	(ISADJACENT pos4-4 pos3-4)
	(ISADJACENT pos4-5 pos5-5)
	(ISADJACENT pos4-5 pos4-6)
	(ISADJACENT pos4-5 pos3-5)
	(ISADJACENT pos4-6 pos5-6)
	(ISADJACENT pos4-6 pos4-7)
	(ISADJACENT pos4-6 pos3-6)
	(ISADJACENT pos4-7 pos5-7)
	(ISADJACENT pos4-7 pos3-7)
	(ISADJACENT pos5-6 pos4-6)
	(ISADJACENT pos5-5 pos4-5)
	(ISADJACENT pos5-4 pos4-4)
	(ISADJACENT pos5-3 pos4-3)
	(ISADJACENT pos5-2 pos4-2)
	(ISADJACENT pos5-1 pos4-1)
	(ISADJACENT pos6-2 pos7-2)
	(ISADJACENT pos6-2 pos6-3)
	(ISADJACENT pos6-2 pos5-2)
	(ISADJACENT pos6-3 pos7-3)
	(ISADJACENT pos6-3 pos6-4)
	(ISADJACENT pos6-3 pos5-3)
	(ISADJACENT pos6-4 pos7-4)
	(ISADJACENT pos6-4 pos6-5)
	(ISADJACENT pos6-4 pos5-4)
	(ISADJACENT pos6-5 pos7-5)
	(ISADJACENT pos6-5 pos6-6)
	(ISADJACENT pos6-5 pos5-5)
	(ISADJACENT pos6-6 pos7-6)
	(ISADJACENT pos6-6 pos6-7)
	(ISADJACENT pos6-6 pos5-6)
	(ISADJACENT pos6-7 pos7-7)
	(ISADJACENT pos6-7 pos5-7)
	(ISADJACENT pos7-6 pos6-6)
	(ISADJACENT pos7-5 pos6-5)
	(ISADJACENT pos7-4 pos6-4)
	(ISADJACENT pos7-3 pos6-3)
	(ISADJACENT pos7-2 pos6-2)
	(ISADJACENT pos7-1 pos6-1)
	(ISADJACENT pos7-0 pos6-0)
	(ISADJACENT pos6-0 pos6-1)
	(ISADJACENT pos6-0 pos5-0)
	(ISADJACENT pos5-0 pos5-1)
	(ISADJACENT pos5-0 pos4-0)
	(ISADJACENT pos4-0 pos4-1)
	(ISADJACENT pos4-0 pos3-0)
	(ISADJACENT pos3-0 pos3-1)
	(ISADJACENT pos3-0 pos2-0)
	(ISADJACENT pos2-0 pos2-1)
	(ISADJACENT pos2-0 pos1-0)
	(ISADJACENT pos1-0 pos1-1)
	(ISADJACENT pos1-0 pos0-0)
	(ISADJACENT pos0-0 pos0-1)
	(headsnake pos7-4)
	(nextsnake pos7-4 pos6-4)
	(nextsnake pos6-4 pos6-3)
	(nextsnake pos6-3 pos5-3)
	(nextsnake pos5-3 pos5-4)
	(nextsnake pos5-4 pos5-5)
	(nextsnake pos5-5 pos5-6)
	(nextsnake pos5-6 pos5-7)
	(nextsnake pos5-7 pos4-7)
	(nextsnake pos4-7 pos4-6)
	(nextsnake pos4-6 pos4-5)
	(nextsnake pos4-5 pos4-4)
	(nextsnake pos4-4 pos4-3)
	(nextsnake pos4-3 pos3-3)
	(nextsnake pos3-3 pos2-3)
	(nextsnake pos2-3 pos0-0)
	(tailsnake pos0-0)
	(blocked pos7-4)
	(blocked pos6-4)
	(blocked pos6-3)
	(blocked pos5-3)
	(blocked pos5-4)
	(blocked pos5-5)
	(blocked pos5-6)
	(blocked pos5-7)
	(blocked pos4-7)
	(blocked pos4-6)
	(blocked pos4-5)
	(blocked pos4-4)
	(blocked pos4-3)
	(blocked pos3-3)
	(blocked pos2-3)
	(blocked pos0-0)
	(ispoint pos6-1)
)(:goal
(and
	(not (ispoint pos6-1))
)
)
)
