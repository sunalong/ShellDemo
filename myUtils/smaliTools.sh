#! /bin/bash
cd 360test
package=com.ztgame.fir.qh360
#old_package=#package#

AM_path=`pwd`/AndroidManifest.xml
sed -i "s/${package}/#package#/g" `grep ${package} -rl ${AM_path}`
#sed -i "s/${package}/com.ztgame.fir.qh360/g" `grep ${package} -rl ${AM_path}`
if [ $? -ne 0 ]
then
        echo =====replace package failure!!!!===.
else
	echo replace package success.
fi

QHOPENSDK_APPKEY=QHOPENSDK_APPKEY
sed -i "s/QHOPENSDK_APPKEY\"[ ]*android:value=\"[0-9A-Za-z]\+/QHOPENSDK_APPKEY\" android:value=\"#app_key#/" $AM_path
if [ $? -ne 0 ]
then
        echo =====replace QHOPENSDK_APPKEY value failure!!!!===.
else
        echo replace QHOPENSDK_APPKEY value success.
fi

QHOPENSDK_PRIVATEKEY=QHOPENSDK_PRIVATEKEY
sed -i "s/QHOPENSDK_PRIVATEKEY\"[ ]*android:value=\"[0-9A-Za-z]\+/QHOPENSDK_PRIVATEKEY\" android:value=\"#privatekey#/" $AM_path
if [ $? -ne 0 ]
then
        echo =====replace QHOPENSDK_PRIVATEKEY value failure!!!!===.
else
        echo replace QHOPENSDK_PRIVATEKEY value success.
fi

QHOPENSDK_APPID=QHOPENSDK_APPID
sed -i "s/QHOPENSDK_APPID\"[ ]*android:value=\"[0-9A-Za-z]\+/QHOPENSDK_APPID\" android:value=\"#app_id#/" $AM_path
if [ $? -ne 0 ]
then
        echo =====replace QHOPENSDK_APPID value failure!!!!===.
else
        echo replace QHOPENSDK_APPID value success.
fi

second_package=com.qihoo.gamecenter.sdk.demosp
second_path=`pwd`/res/xml/qihoo_game_sdk_sync_adapter.xml
sed -i "s/${second_package}/#package#/g" `grep ${second_package} -rl ${second_path}`
if [ $? -ne 0 ]
then
        echo =====replace xml\'s package value failure!!!!===.
else
        echo replace xml\'s package value success.
fi

#KEY=QHOPENSDK_PRIVATEKEY
#FullPath=${AM_path}
#str=fuck
#line=`sed -n $KEY $FullPath`
#if [ "$line" == "" ]; then
#	echo "is Null"
#else
#	echo $line
#	sed -i "" "${line}s#.*#"$str"#" $FullPath
#	sed -i "" "${line}s/.*/ &/" $FullPath
#fi

