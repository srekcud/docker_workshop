#!/bin/bash

if ! grep -qF '127.0.0.1 	 your.devops.is.the.best' /etc/hosts; then
        echo "127.0.0.1 	 your.devops.is.the.best" >> /etc/hosts
fi
