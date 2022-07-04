#!/bin/bash
python -m cProfile -o out.profile $1
snakeviz out.profile
