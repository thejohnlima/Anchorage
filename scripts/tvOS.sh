#!/bin/sh

set -o pipefail && \
  xcodebuild clean build test \
  -project Anchorage.xcodeproj \
  -scheme Anchorage-tvOS \
  -sdk appletvsimulator \
  -destination "platform=tvOS Simulator,name=Apple TV 1080p,OS=11.0" \
  SWIFT_VERSION=3.0 \
  CODE_SIGNING_REQUIRED=NO \
  CODE_SIGN_IDENTITY= \
  | xcpretty

set -o pipefail && \
  xcodebuild clean build test \
  -project Anchorage.xcodeproj \
  -scheme Anchorage-tvOS \
  -sdk appletvsimulator \
  -destination "platform=tvOS Simulator,name=Apple TV 1080p,OS=11.0" \
  SWIFT_VERSION=4.0 \
  CODE_SIGNING_REQUIRED=NO \
  CODE_SIGN_IDENTITY= \
  | xcpretty
