#!/bin/bash
#
echo -e "
    ************************************************************
    *
    *           Hostname:       `hostname`
    *           OS:             `cat /etc/redhat-release`
    *           Kernel:         `uname -r`
    *
    *           IP(s):             
`ip -4 a sh | awk 'BEGIN { FS=" "; format="    *           \t%-s\t%s\n"} /^[0-9]/{a=$2} /inet /{printf format,a,$2}'`
    *
    *           CPU:            `cat /proc/cpuinfo | grep processor | wc -l` Core(s)
    *           RAM:            `free -m | awk '/^Mem/{print $2}'` Mo
    *
    *           YOU ARE:        `whoami`
    *
    ************************************************************
"
