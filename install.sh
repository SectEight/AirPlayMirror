#!/bin/sh
sudo perl -p -i -e 's/hw\.optional\.avx1_0/hw\.optional\.x86_64/g' "$(ls -L /System/Library/Frameworks/CoreGraphics.framework/CoreGraphics)"
sudo perl -p -i -e 's/kVTVideoEncoderSpecification_RequireHardwareAcceleratedVideoEncoderFunction/kVTVideoEncoderSpecification_EnableHardwareAcceleratedVideoEncoderFunction\x00/g' "$(ls -L /System/Library/PrivateFrameworks/MediaControlSender.framework/MediaControlSender)"
sudo perl -p -i -e 's/kVTVideoEncoderSpecification_RequireHardwareAcceleratedVideoEncoder/kVTVideoEncoderSpecification_EnableHardwareAcceleratedVideoEncoder\x00/g' "$(ls -L /System/Library/PrivateFrameworks/MediaControlSender.framework/MediaControlSender)"
sudo update_dyld_shared_cache -force
sudo reboot
