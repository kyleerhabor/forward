#!/bin/sh

#  xcode.sh
#  Forward
#
#  Created by Kyle Erhabor on 11/8/24.
#  

if [ "$CONFIGURATION" != "Debug" ]; then
  export EXTRA_CFLAGS="-O3"
fi
