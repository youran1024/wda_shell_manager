#!/usr/bin/env bash
: '
@File   : task_recoder.sh
@Author : yangtonggang
@Date   : 2020-07-23
@Desc   : 执行任务记录
'

TASK_NAME=$1
BUILD_ID=$2
DEVICE_ID=$3

WORK_PATH="$HOME/cts-runner/pipeline/$DEVICE_ID"
LOG_PATH="$WORK_PATH/../$TASK_NAME-Record.log"
DEVICE_TASK_LOG_PATH="$WORK_PATH/$TASK_NAME-Record.log"


function recoder() {
    if [ ! -d "$WORK_PATH" ]; then
        mkdir -p "$WORK_PATH"
    fi

    date '+%Y-%m-%d %H:%M' >> "$LOG_PATH"
    echo 设备:"$DEVICE_ID" 任务:"$BUILD_ID" >> "$LOG_PATH"

    date '+%Y-%m-%d %H:%M' >> "$DEVICE_TASK_LOG_PATH"
    echo 设备:"$DEVICE_ID" 任务:"$BUILD_ID" >> "$DEVICE_TASK_LOG_PATH"
}

recoder

