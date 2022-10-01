#!/bin/bash
#test mem_int
iverilog -g 2012\
    -s mem_int_tb \
    -o 2-simulator/mem_int_tb\
    ../rtl/mips_cpu/mem_interface.v ../rtl/testbench/mem_int_tb.v


TESTCASE1="mem_interface_testbench_test"

set +e
2-simulator/mem_int_tb > 3-output/mips_cpu_tb_${TESTCASE1}.stdout

RESULT=$?
#close the automatic script failure and store in Result
set -e
#if return failure code, exit
if [[ "${RESULT}" -ne 0 ]] ; then
    >&2 echo "${TESTCASE1} : FAIL"
    echo "${TESTCASE1} : FAIL" >> RESULT.out
else
    >&2 echo "${TESTCASE1} : PASS"
    echo "${TESTCASE1} : PASS" >> RESULT.out
fi





iverilog -g 2012\
    -s pc_tb \
    -o 2-simulator/pc_tb\
    ../rtl/mips_cpu/pc.v ../rtl/testbench/pc_tb.v


TESTCASE2="pc_test"

set +e
2-simulator/pc_tb > 3-output/mips_cpu_tb_${TESTCASE2}.stdout

RESULT=$?
#close the automatic script failure and store in Result
set -e
#if return failure code, exit
if [[ "${RESULT}" -ne 0 ]] ; then
    >&2 echo "${TESTCASE2} : FAIL"
    echo "${TESTCASE2} : FAIL" >> RESULT.out
else
    >&2 echo "${TESTCASE2} : PASS"
    echo "${TESTCASE2} : PASS" >> RESULT.out
fi


iverilog -g 2012\
    -s regfile_tb \
    -o 2-simulator/regfile_tb\
    ../rtl/mips_cpu/regfile.v ../rtl/testbench/regfile_tb.v


TESTCASE3="regfile_test"

set +e
2-simulator/regfile_tb > 3-output/mips_cpu_tb_${TESTCASE3}.stdout

RESULT=$?
#close the automatic script failure and store in Result
set -e
#if return failure code, exit
if [[ "${RESULT}" -ne 0 ]] ; then
    >&2 echo "${TESTCASE3} : FAIL"
    echo "${TESTCASE3} : FAIL" >> RESULT.out
else
    >&2 echo "${TESTCASE3} : PASS"
    echo "${TESTCASE3} : PASS" >> RESULT.out
fi

iverilog -g 2012\
    -s fsm_tb \
    -o 2-simulator/fsm_tb\
    ../rtl/mips_cpu/fsm.v ../rtl/testbench/fsm_tb.v


TESTCASE4="fsm_test"

set +e
2-simulator/fsm_tb > 3-output/mips_cpu_tb_${TESTCASE4}.stdout

RESULT=$?
#close the automatic script failure and store in Result
set -e
#if return failure code, exit
if [[ "${RESULT}" -ne 0 ]] ; then
    >&2 echo "${TESTCASE4} : FAIL"
    echo "${TESTCASE4} : FAIL" >> RESULT.out
else
    >&2 echo "${TESTCASE4} : PASS"
    echo "${TESTCASE4} : PASS" >> RESULT.out
fi