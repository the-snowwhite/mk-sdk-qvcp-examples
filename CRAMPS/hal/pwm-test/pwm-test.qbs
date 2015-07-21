import qbs

MachinekitApplication {
    name: "pwm-test"
    halFiles: ["pwm-test.hal"]
    configFiles: ["launcher.ini"]
    machinekitIni: ["machinekit.ini"]
}


