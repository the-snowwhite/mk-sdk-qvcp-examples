import qbs

MachinekitApplication {
    name: "pwm-test"
    halFiles: ["pwm-test.hal"]
    bbioFiles: ["pwm-test.bbio"]
    configFiles: ["machinekit.ini"]
    machinekitIni: "machinekit.ini"
}

