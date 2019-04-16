#!/bin/bash
# 1 按顺序合并所有ts
# 将排序列出的文件合并输出到一个文件中
cat $(ls ./*/*.ts | sort -t/ -k3 -n) > all.ts
# 2 将合并后的ts通过ffmpeg转换成mp4
# 通过ffmpeg 将ts文件转为mp4
ffmpeg -y -i all.ts -c:v libx264 -c:a copy -bsf:a aac_adtstoasc all.mp4

