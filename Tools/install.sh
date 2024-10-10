#!/bin/sh

#  install.sh
#  Forward
#
#  Created by Kyle Erhabor on 10/10/24.
#  

export ARCHS="$(uname -m)"
export CONFIGURATION=Debug

. "$(dirname "$0")/download-deps.sh"
. "$(dirname "$0")/build-opus.sh"
. "$(dirname "$0")/build-ffmpeg.sh"