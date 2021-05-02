#!/bin/bash

echo -ne $(cat ~/shorts/short-menu.txt | sed  's/$/\\n/' | sed 's/ /\\a /g')
