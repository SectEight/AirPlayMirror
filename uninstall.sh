#!/bin/sh
sudo perl -p -i -e 's/hw\.optional\.x86_64/hw\.optional\.avx1_0/g' "$(ls -L /System/Library/Frameworks/CoreGraphics.framework/CoreGraphics)"
sudo perl -p -i -e 's/kVTVideoEncoderSpecification_EnableHardwareAcceleratedVideoEncoderFunction\x00\x00/kVTVideoEncoderSpecification_RequireHardwareAcceleratedVideoEncoderFunction\x00/g' "$(ls -L /System/Library/PrivateFrameworks/MediaControlSender.framework/MediaControlSender)"
sudo perl -p -i -e 's/kVTVideoEncoderSpecification_EnableHardwareAcceleratedVideoEncoder\x00\x00/kVTVideoEncoderSpecification_RequireHardwareAcceleratedVideoEncoder\x00/g' "$(ls -L /System/Library/PrivateFrameworks/MediaControlSender.framework/MediaControlSender)"
sudo update_dyld_shared_cache -force
sudo reboot
