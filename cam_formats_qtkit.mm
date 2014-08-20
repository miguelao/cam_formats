// Copyright 2014 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
//
//
// This utility prints out all connected camera devices' native capture
// formats as they present them to the OS.
// In a way, it's like v4l2-ctl --list-formats-ext command in Linux, iterating
// over all connected devices.
// Uses QTKit
//
// Also prints the name of other type of devices and their formats.
//

#import <QTKit/QTKit.h>
#import <CoreMedia/CoreMedia.h>

int main(){

  NSArray* devices = [QTCaptureDevice inputDevices];

  NSLog(@" I see %ld devices.", (unsigned long)[devices count]);
  for (QTCaptureDevice* device in devices) {
    NSLog(@"-------------------- %@ --------------- %@ ---", 
          [device localizedDisplayName], [device uniqueID]);
    //for (AVCaptureDeviceFormat* currdf in device.formats)
    //    NSLog(@"Capture format: %@ ", currdf);
  }
}


