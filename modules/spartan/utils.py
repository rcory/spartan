__author__ = 'manuelli'
import numpy as np
import collections
import yaml
import os

from collections import namedtuple

from director.timercallback import TimerCallback
from director import robotstate
import drake as lcmdrake
from director import lcmUtils
from director import utime as utimeUtil
from director import transformUtils

def getSpartanSourceDir():
    return os.getenv("SPARTAN_SOURCE_DIR")

def getDictFromYamlFilename(filename):
    stream = file(filename)
    return yaml.load(stream)

def saveToYaml(data, filename):
    with open(filename, 'w') as outfile:
        yaml.dump(data, outfile, default_flow_style=False)

def poseFromTransform(transform):
    pos, quat = transformUtils.poseFromTransform(transform)
    pos = pos.tolist()
    quat = quat.tolist()
    d = dict()
    d['translation'] = dict()
    d['translation']['x'] = pos[0]
    d['translation']['y'] = pos[1]
    d['translation']['z'] = pos[2]

    d['quaternion'] = dict()
    d['quaternion']['w'] = quat[0]
    d['quaternion']['x'] = quat[1]
    d['quaternion']['y'] = quat[2]
    d['quaternion']['z'] = quat[3]

    return d

class EstRobotStatePublisher(object):

    def __init__(self, robotSystem):
        self.robotSystem = robotSystem
        self.timer = TimerCallback(targetFps=25)
        self.timer.callback = self.publishEstRobotState

    def publishEstRobotState(self):
        q = self.robotSystem.robotStateJointController.q
        stateMsg = robotstate.drakePoseToRobotState(q)
        stateMsg.utime = utimeUtil.getUtime()
        lcmUtils.publish("EST_ROBOT_STATE", stateMsg)

    def start(self):
        self.timer.start()

    def stop(self):
        self.timer.stop()