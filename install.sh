#!/bin/sh
RUNIT_SV_DIR=/etc/runit/sv
NUTD_SV_DIR=$RUNIT_SV_DIR/nutd
NUTMON_SV_DIR=$RUNIT_SV_DIR/nutmon
SHUTDOWN_SCRIPTS_DIR=/etc/local.d

install -d $NUTD_SV_DIR
install -d $NUTMON_SV_DIR

install -m 755 nutd/* $NUTD_SV_DIR
install -m 755 nutmon/* $NUTMON_SV_DIR
install -m 755 ups.stop $SHUTDOWN_SCRIPTS_DIR

echo "Scripts installed! You can now use them:"
echo "ln -s $NUTD_SV_DIR /run/runit/service"
echo "ln -s $NUTMON_SV_DIR /run/runit/service"


