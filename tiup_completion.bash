#!/bin/bash

_tiup()
{
  local cur prev

  cur=${COMP_WORDS[COMP_CWORD]}
  prev=${COMP_WORDS[COMP_CWORD-1]}


  case ${COMP_CWORD} in
    1)
      COMPREPLY=( $(compgen -W "bench br cdc client cluster ctl dm dmctl errdoc pd-recover playground tidb tidb-lightning \
                            clean completion env help install list mirror status telemetry uninstall update" -- $cur) )
      ;;
    2)
      case ${prev} in
        cluster)
          COMPREPLY=($(compgen -W "check deploy start stop restart scale-in scale-out destroy clean upgrade display prune \
                      list audit import edit-config reload patch rename enable disable replay template help" -- $cur) )
          ;;
        br)
          COMPREPLY=($(compgen -W "backup help restore" -- $cur) )
          ;;
        bench)
          COMPREPLY=($(compgen -W "help tpcc tpch ycsb" -- $cur) )
          ;;
        install)
          COMPREPLY=($(compgen -W "bench br cdc client cluster ctl dm dmctl errdoc pd-recover playground tidb tidb-lightning" -- $cur) )
          ;;
      esac
      ;;
    3)
      COMPREPLY=()
      ;;
    esac
}

complete -F _tiup tiup
