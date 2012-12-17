#!/bin/bash
# vim: set ft=sh :
cd "`dirname "$0"`"/..

sudo cp cron.d/* /etc/cron.d/
