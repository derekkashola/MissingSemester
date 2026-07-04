#!/bin/bash

ls /nonexistant /tmp 1> out.txt 2> err.txt

ls /nonexitant /tmp 2>&1 both.txt


# These fulfill the objectivs of exercise 5
