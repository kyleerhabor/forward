#!/bin/sh

#  download-deps.sh
#  Forward
#
#  Created by Kyle Erhabor on 10/9/24.
#

. "$(dirname "$0")/scripts/core.sh"
. "$(dirname "$0")/scripts/build.sh"

OPUS_GIT_TAG=v1.5.2
OPUS_GIT_URL=https://gitlab.xiph.org/xiph/opus.git
FFMPEG_GIT_COMMIT=477445722cc0d67439ca151c9d486c1bfca7a084
FFMPEG_GIT_URL=https://git.ffmpeg.org/ffmpeg.git

gitdownload () {
  local remote="$1"
  local path="$2"

  git -C "$path" fetch "$remote" || git clone "$remote" "$path"
}

downloadbrew () {
  brew install autoconf automake libtool nasm
}

downloadopus () {
  git clone --depth=1 --branch="$OPUS_GIT_TAG" "$OPUS_GIT_URL" "$CWD/$OPUSDIR"
}

downloadffmpeg () {
  gitdownload "$FFMPEG_GIT_URL" "$CWD/$FFMPEGDIR"
  git -C "$CWD/$FFMPEGDIR" checkout "$FFMPEG_GIT_COMMIT"
}

downloadbrew
downloadopus
downloadffmpeg
