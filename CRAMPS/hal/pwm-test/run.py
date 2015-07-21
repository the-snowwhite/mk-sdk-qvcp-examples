#!/usr/bin/python

import sys
import os
import subprocess
import importlib
from time import *
from machinekit import launcher
from machinekit import config


launcher.register_exit_handler()
launcher.set_machinekit_ini('machinekit.ini')
os.chdir(os.path.dirname(os.path.realpath(__file__)))
c = config.Config()
os.environ["MACHINEKIT_INI"] = c.MACHINEKIT_INI

try:
    launcher.check_installation()
    launcher.cleanup_session()
    launcher.load_bbio_file('pwm-test.bbio')
    launcher.start_process("configserver -n pwm-test /home/machinekit/projects/pwm-test_qvcp")
    launcher.start_process('halrun -I pwm-test.hal')
except subprocess.CalledProcessError:
    launcher.end_session()
    sys.exit(1)

while True:
    sleep(1)
    launcher.check_processes()

