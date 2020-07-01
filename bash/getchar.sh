#!/bin/sh

# 사용자 키 입력을 한글자만 받기 - 엔터키 없이 입력

echo -n "Type your Answer [y/n] "

# 현재 터미널 설정을 쉘 변수 tty_state에 백업
tty_state=$(stty -g)
# 터미널을 raw 설정
stty raw 

#키보드에서 문자 하나 읽기
char=$(dd bs=1 count=1 2> /dev/null)
#터미널 원래대로 돌림
stty "$tty_state"

echo 

# 입력된 문자에 따라 분기
case $char in 
  [yY])
    echo "Input: yes"
  ;;
  [nN])
    echo "Input: No"
  ;;
*)
  echo "Input: What?"
  ;;
esac
