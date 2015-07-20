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
import Machinekit.Application 1.0
import Machinekit.Application.Controls 1.0
import Machinekit.Service 1.0

ApplicationWindow {
    id: applicationWindow

    visible: true
    width: 500
    height: 100
    title: connectionWindow.title

    ConnectionWindow {
        id: connectionWindow

        anchors.fill: parent
        defaultTitle: "pwm-test_qvcp"
        autoSelectInstance: false
        applications: [
            ApplicationDescription {
                sourceDir: "qrc:/pwm-test_qvcp.pwm-test_qvcp/"
            }
        ]
        instanceFilter: ServiceDiscoveryFilter{ name: "" }
    }
}


