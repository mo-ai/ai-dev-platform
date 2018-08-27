#!/usr/bin/env bash
sshpass -p 10530022 ssh -C -f -N -g -L 8088:10.167.160.38:8088 modongsong@10.123.3.105

sshpass -p 10530022 ssh -C -f -N -g -L 8443:10.167.160.38:8443 modongsong@10.123.3.105

sshpass -p 10530022 ssh -C -f -N -g -L 8081:10.167.160.38:8081 modongsong@10.123.3.105