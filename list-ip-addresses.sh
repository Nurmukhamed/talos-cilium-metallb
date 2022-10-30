#!/bin/bash
virsh list  | awk '{print $2}' | xargs -t -L1 virsh domifaddr
