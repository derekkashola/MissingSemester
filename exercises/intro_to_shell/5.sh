#!/bin/bash

ls /nonexistent /tmp 1> out.txt 2> err.txt

ls /nonexistent /tmp > both.txt 2>&1


# These fulfill the objectivs of exercise 5
