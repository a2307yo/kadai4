#!/bin/bash

echo "input check";
./gcd.sh;       [ "$?" -eq 1 ] && echo "test case1 PASS" || $(echo "test case1 FAIL"; exit 1)
./gcd.sh 1;     [ "$?" -eq 1 ] && echo "test case2 PASS" || $(echo "test case2 FAIL"; exit 1)
./gcd.sh a;     [ "$?" -eq 1 ] && echo "test case3 PASS" || $(echo "test case3 FAIL"; exit 1)
./gcd.sh 1 a;   [ "$?" -eq 1 ] && echo "test case4 PASS" || $(echo "test case4 FAIL"; exit 1)
./gcd.sh a 1;   [ "$?" -eq 1 ] && echo "test case5 PASS" || $(echo "test case5 FAIL"; exit 1)
./gcd.sh 0 1;   [ "$?" -eq 1 ] && echo "test case6 PASS" || $(echo "test case6 FAIL"; exit 1)
./gcd.sh 1 0;   [ "$?" -eq 1 ] && echo "test case7 PASS" || $(echo "test case7 FAIL"; exit 1)
./gcd.sh 0.1 2; [ "$?" -eq 1 ] && echo "test case8 PASS" || $(echo "test case8 FAIL"; exit 1)
./gcd.sh 5 -2; [ "$?" -eq 1 ] && echo "test case8 PASS" || $(echo "test case8 FAIL"; exit 1)
