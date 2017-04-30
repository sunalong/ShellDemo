#!/bin/bash
#shell wrapper for sed editor script to reverse
sed -n '{
1!G
h
$p
}' "$1"
