#!/bin/sh

tr -s ' ' '\n'< numbers.log > sortednumbers.log

sort -nr sortednumbers.log | uniq

