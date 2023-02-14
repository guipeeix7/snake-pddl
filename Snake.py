factor = 100
class Snake:
    def buildSnakePositions(self, positionArray, file):
        snakeLength = len(positionArray)

        head = positionArray[0]
        file.write(f'\t(headsnake pos{int(head[0]/factor)}-{int(head[1]/factor)})\n')

        for i in range(0, snakeLength-1):
            file.write(f"\t(nextsnake pos{int(positionArray[i][0]/factor)}-{int(positionArray[i][1]/factor)} pos{int(positionArray[i+1][0]/factor)}-{int(positionArray[i+1][1]/factor)})\n")
        tail = positionArray[-1]
        file.write(f'\t(tailsnake pos{int(tail[0]/factor)}-{int(tail[1]/factor)})\n')

        for i in range(0, snakeLength):
            file.write(f"\t(blocked pos{int(positionArray[i][0]/factor)}-{int(positionArray[i][1]/factor)})\n")
        