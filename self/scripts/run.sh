#!/usr/bin/env bash

set -x

ROOT_DIR=/Users/ccjian/go/src/kafka-demo


echo "请选择";
workdir=$(cd $(dirname $0); pwd);
# 选定项目
select env in "pub" "sub"
do
    case $env in
        "sub")
            cd $ROOT_DIR/self/deploy
            sudo docker-compose -f sub.yaml up -d
            break
            ;;
        "pub")
            cd $ROOT_DIR/self/deploy
            sudo docker-compose -f pub.yaml up -d
            break
            ;;
        *)
            echo "输入错误，请重新输入"
    esac
done


