/****************************************************************************
**
** Copyright (C) 2014 Alexander Rössler
** License: LGPL version 2.1
**
** This file is part of QtQuickVcp.
**
** All rights reserved. This program and the accompanying materials
** are made available under the terms of the GNU Lesser General Public License
** (LGPL) version 2.1 which accompanies this distribution, and is available at
** http://www.gnu.org/licenses/lgpl-2.1.html
**
** This library is distributed in the hope that it will be useful,
** but WITHOUT ANY WARRANTY; without even the implied warranty of
** MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
** Lesser General Public License for more details.
**
** Contributors:
** Alexander Rössler @ The Cool Tool GmbH <mail DOT aroessler AT gmail DOT com>
**
****************************************************************************/
import QtQuick 2.0
import QtQuick.Controls 1.1
import Machinekit.Controls 1.0
import Machinekit.HalRemote.Controls 1.0
import Machinekit.HalRemote 1.0

HalApplicationWindow {
    id: main

    name: "default"
    height: 100
    title: qsTr("pwm-test_qvcp")

    Flow {
        id: flow1
        y: 214
        width: 477
        height: 82
        anchors.left: parent.left
        anchors.leftMargin: 10
        anchors.top: parent.top
        anchors.topMargin: 10
        HalButton {
            name: "estop"
            text: "E-Stop"
//            anchors.left: parent.left
//            anchors.leftMargin: 0
            checkable: true
        }

        HalButton {
            name: "power"
            text: "Power On"
//            anchors.left: parent.left
//            anchors.leftMargin: 0
            checkable: true
        }

        HalButton {
            name: "enable"
            text: "Fan Pwm enable"
//            anchors.left: parent.left
//            anchors.leftMargin: 106
            checkable: true
        }

        HalSlider {
            id: sliderHorizontal1
            name: "slider"
            transformOrigin: Item.TopLeft
//            anchors.left: parent.left
//            anchors.leftMargin: 210
        }

    }

}

