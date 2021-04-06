#!/bin/bash
# Name    : start_script.py
# Date    : 2016.03.28
# Func    : 启动脚本
# Note    : 注意：当前路径为应用部署文件夹

#############################################################
# 初始化环境

# 用户自定义
app_folder="elasticsearch_exporter"                 # 项目根目录
process_name="elasticsearch_exporter"              # 进程名
install_base="/data/exporter"              # 安装根目录

#############################################################

# 执行准备
install_path="${install_base}/${app_folder}/"
if [[ ! -d ${install_path} ]]; then
    echo "${install_path} is not exist"
    exit 1
fi

# 启动命令
start_cmd="./bin/elasticsearch_exporter > log/${app_folder}.log 2>&1 &"


# 日志目录
log_path="${install_base}/${app_folder}/log"
mkdir -p ${log_path}


#############################################################

# 启动程序
echo "start by cmd: ${start_cmd}"
cd ${install_path} && eval "${start_cmd}"
if [[ $? -ne 0 ]];then
    echo "start error, exit"
    exit 1
fi
#############################################################
