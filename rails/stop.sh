#!/bin/bash

kill -9 `ps aux | grep unicorn | grep master | awk '{print $2}'`
