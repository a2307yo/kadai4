#!/bin/bash

# GCDの計算結果を確認する
[ "$(./gcd.sh 1 1)" -eq 1 ] && echo "Test_Case1 PASS" || $(echo "Test_Case1 FAIL"; exit 1;)
[ "$(./gcd.sh 6 2)" -eq 2 ] && echo "Test_Case2 PASS" || $(echo "Test_Case2 FAIL"; exit 1;)
[ "$(./gcd.sh 2 6)" -eq 2 ] && echo "Test_Case3 PASS" || $(echo "Test_Case3 FAIL"; exit 1;)
[ "$(./gcd.sh 6 3)" -eq 3 ] && echo "Test_Case4 PASS" || $(echo "Test_Case4 FAIL"; exit 1;)
[ "$(./gcd.sh 3 6)" -eq 3 ] && echo "Test_Case5 PASS" || $(echo "Test_Case5 FAIL"; exit 1;)
[ "$(./gcd.sh 11 17)" -eq 1 ] && echo "Test_Case6 PASS" || $(echo "Test_Case6 FAIL"; exit 1;)
