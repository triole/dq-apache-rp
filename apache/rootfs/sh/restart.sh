#!/bin/bash

ps ax |
    grep httpd |
    awk '{print $1}' |
    xargs kill -9
