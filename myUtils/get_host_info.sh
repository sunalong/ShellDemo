#! /bin/bash -x
# 根据hosts文件获取主机设备的cpu、mem、disk信息
declare -r curr_dir=$(cd `dirname $0`;pwd)

##删除行首末的空格：
#awk 'gsub(/^ *| *$/,"")' /etc/hosts >trim_hosts
##删除空行：
#sed '/^$/d' trim_hosts >no_blank_hosts
##过滤出hostname写到文件：
#awk -F ' ' '{print $2}' no_blank_hosts >only_hostname

rm fuckme
count=1
file_host=${curr_dir}/only_hostname
data_list=$(cat $file_host)
for line_read in $data_list ; do
        cmd='hostname;grep "model name" /proc/cpuinfo |cut -f2 -d: |uniq -c;free -m | grep Mem ;df -h ; echo -e \\n'
        line="ssh sqoop@$line_read ${cmd}"
        echo  $count:$line_read
        ${line}>>fuckme_$line_read &
        count=$[ $count+1 ]
done
#cat fuckme_* >fuckme
#rm fuckme_*
