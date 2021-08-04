#!/usr/bin/env bash

if [[ $1 =~ \. ]]; then
    echo 文件简称为：$(echo ${1%%.*} | sed -r "s/.*(j[d|x]_.*)/\1/g")（作用为屏蔽某个ck）
fi
case $(echo ${1%%.*} | sed -r "s/.*(j[d|x]_.*)/\1/g") in
jd_pigPet | jd_daily_egg | jd_dreamFactory)
    BlockPtPin="" # 账号5不玩东东农场
    ;;
jd_jdfactory | jd_jxnc | jd_jxmc | jd_car_exchange | jd_jin_tie | jd_cfd)
    BlockPtPin="" # 账号2不玩京喜工厂和东东工厂
    ;;
jd_health | jd_health_collect | jd_jump | jd_mcxhd)
    BlockPtPin="" # 新号火爆
    ;;
jd_bean_home | jd_bean_sign | jd_blueCoin | jd_car | jd_cash | jd_club_lottery | jd_jdzz | jd_lotteryMachine | jd_redPacket | jd_superMarket | jd_beauty | jd_family | jd_sgmh | jd_speed_redpocke | jd_speed_sign | jd_syj | jd_carnivalcity | jd_xtg | jd_xtg_help | jd_gold_creator | jd_mohe)
    BlockPtPin="" # 火爆
    ;;
jd_getFollowGift | jd_EsportsManager)
    BlockPtPin="" # 火爆
    ;;
jd_ms)
    BlockPtPin="" #  金融限定
    ;;
esac

##调用助力
. /ql/repo/busbate_ql_extra/help.sh
