#!/bin/bash

[ -f "$1" ] && cp "$1" "$1_$(date +%Y-%m-%d)" 
