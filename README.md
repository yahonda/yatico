# yatico
Yet Another TiUP bash autocompletion

# Usage
1. Install [TiUP](https://github.com/pingcap/tiup)

2. Download the tiup_completion.bash

```shell
$ wget https://raw.githubusercontent.com/yahonda/yatico/main/tiup_completion.bash
$ source ./tiup_completion.bash
```

3. Execute `tiup` command and type <TAB> key to show candidates

```
$ source /path/to/tiup_completion.bash
$ tiup <TAB>
bench           cdc             client          completion      dm              env             help            list            pd-recover      status          tidb            uninstall
br              clean           cluster         ctl             dmctl           errdoc          install         mirror          playground      telemetry       tidb-lightning  update
$ tiup c<TAB>
cdc         clean       client      cluster     completion  ctl
$ tiup cluster <TAB>
audit        clean        destroy      display      enable       import       patch        reload       replay       scale-in     start        template
check        deploy       disable      edit-config  help         list         prune        rename       restart      scale-out    stop         upgrade
```

Enjoy!
