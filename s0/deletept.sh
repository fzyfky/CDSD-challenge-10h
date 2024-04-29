#!/bin/bash

# 设置目标目录
TARGET_DIR="/home/fengky/wenet2/examples/cdsd/s0/CDSD-SD-08/conformer"

# 进入目标目录
cd "$TARGET_DIR" || exit  # 如果目录不存在则退出

# 循环删除指定范围内的文件
for i in $(seq 0 498); do

  rm -f "${i}.pt" "${i}.yaml"

done

echo "指定文件删除操作完成。"
