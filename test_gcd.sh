#!/bin/bash

echo "test_case1";
./gcd.sh; [ "$?" -eq 1 ] && echo "PASS" || echo "FAIL"
./gcd.sh 1; [ "$?" -eq 1 ] && echo "PASS" || echo "FAIL"
./gcd.sh a; [ "$?" -eq 1 ] && echo "PASS" || echo "FAIL"
./gcd.sh 1 a; [ "$?" -eq 1 ] && echo "PASS" || echo "FAIL"
./gcd.sh a 1; [ "$?" -eq 1 ] && echo "PASS" || echo "FAIL"
./gcd.sh 0 1; [ "$?" -eq 1 ] && echo "PASS" || echo "FAIL"
./gcd.sh 1 0; [ "$?" -eq 1 ] && echo "PASS" || echo "FAIL"
./gcd.sh 0.1 2; [ "$?" -eq 1 ] && echo "PASS" || echo "FAIL"

echo "test_case2";
[ "$(./gcd.sh 1 1)" -eq 1 ] && echo "PASS" || echo "FAIL"
[ "$(./gcd.sh 6 2)" -eq 2 ] && echo "PASS" || echo "FAIL"
[ "$(./gcd.sh 2 6)" -eq 2 ] && echo "PASS" || echo "FAIL"
[ "$(./gcd.sh 6 3)" -eq 3 ] && echo "PASS" || echo "FAIL"
[ "$(./gcd.sh 3 6)" -eq 3 ] && echo "PASS" || echo "FAIL"
