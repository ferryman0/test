#!/bin/bash

#计算1-100之和练习
# 使用for--in语句，
function sum100_1(){
    sum=0
    for i in {1..100}
    do
        sum=$((sum+i))
    done
    echo "1-100之和为:$sum"
}

#类c语言
function sum100_2(){
    sum=0
    for ((i=1;i<=100;i++))
    do
        sum=$((sum+i))
    done
    echo "1-100之和为:$sum"

}

#while循环
function sum100_3(){
    i=1
    sum=0
    while [ $i -lt 101 ]
    do
       sum=$((sum+i))
       i=$((i+1)) 
    done
    echo "1-100之和为:$sum"
}


#求10以内的奇数
function sum_4(){
    sum=0
    for i in {1..10}
    do
        if [ `expr $i % 2` == 1 ]
        then
            sum=$((i+sum))
        fi
    done
    echo "10以内之和为：$sum"
}


#猜拳游戏
function game(){
    echo "游戏规则：
    玩家出石头，请输入：1
    玩家出剪刀，请输入：2
    玩家出布，请输入：3
    "

    echo "--------猜拳游戏开始-------"
    num=$((RANDOM%3))
    read -p "请输入1-3 :" i

    case $i in
    1)
    echo "你出的是石头"
    if [ $num -eq 0 ]
    then
        echo "计算机出石头"
        echo "平局"
    elif [ $num -eq 1]
    then
        echo "计算机出剪刀"
        echo "恭喜你，你赢了"
    else
        echo "计算机出布"
        echo "很遗憾，计算机赢了"
    fi
    ;;

    2)
    echo "你出的是剪刀"
    if [ $num -eq 0 ]
    then
        echo "计算机出石头"
        echo "很遗憾，你输了"
    elif [ $num -eq 1]
    then
        echo "计算机出剪刀"
        echo "平局"
    else
        echo "计算机出布"
        echo "恭喜你，你赢了"
    fi
    ;;

    3)
    echo "你出的是布"
    if [ $num -eq 0 ]
    then
        echo "计算机出石头"
        echo "恭喜你，你赢了"
    elif [ $num -eq 1]
    then
        echo "计算机出剪刀"
        echo "很遗憾，你输了"
    else
        echo "计算机出布"
        echo "平局"
    fi
    ;;
    *)
    esac
}

game
