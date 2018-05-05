#!/bin/bash

node_def="/etc/puppet/node-definitions/${1}.yaml"
[ -f $node_def ] && cat $node_def
