for ((i = 0 ; i < 10 ; i++))
do 
    ( time python3 snakeGame6.py 5; ) > ./bench/benchmark_5game_$i.txt
    wait
done