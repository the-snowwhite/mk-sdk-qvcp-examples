import qbs

MachinekitApplication {
    name: "pwm-test"
    halFiles: ["pwm-test.hal"]
    bbioFiles: ["pwm-test.bbio"]
    configFiles: ["launcher.ini"]
    machinekitIni: ["machinekit.ini"]
}


