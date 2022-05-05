#!/bin/bash

ip -br addr show tun0 | awk '{print $3}'
