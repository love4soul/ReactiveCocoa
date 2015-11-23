
{
  "name": "ReactiveCocoa",
  "version": "2.5",
  "summary": "A framework for composing and transforming streams of values.",
  "homepage": "https://github.com/blog/1107-reactivecocoa-is-now-open-source",
  "authors": {
    "Josh Abernathy": "josh@github.com",
    "Igors Nemenonoks":"ios@chi.lv"
  },
  "source": {
    "git": "https://github.com/love4soul/ReactiveCocoa.git",
    "branch":"2.5_tvos"
  },
  "license": {
    "type": "MIT",
    "file": "LICENSE.md"
  },
  "description": "ReactiveCocoa (RAC) is an Objective-C framework for Functional Reactive Programming. It provides APIs for composing and transforming streams of values.",
  "requires_arc": true,
  "platforms": {
    "ios": "6.0",
    "tvos": "9.0",
    "osx": "10.8"
  },
  "default_subspecs": "UI",
  "subspecs": [
    {
      "name": "no-arc",
      "source_files": "ReactiveCocoa/RACObjCRuntime.{h,m}",
      "requires_arc": false
    },
    {
      "name": "Core",
      "dependencies": {
        "ReactiveCocoa/no-arc": [

        ]
      },
      "source_files": [
        "ReactiveCocoa/*.{d,h,m}",
        "ReactiveCocoa/extobjc/*.{h,m}"
      ],
      "private_header_files": [
        "ReactiveCocoa/*Private.h"
      ],
      "exclude_files": "ReactiveCocoa/*{RACObjCRuntime,AppKit,NSControl,NSText,UIActionSheet,UI,MK}*"
    },
    {
      "name": "UI",
      "dependencies": {
        "ReactiveCocoa/Core": [

        ]
      },
      "source_files": "ReactiveCocoa/*{AppKit,NSControl,NSText,UI,MK}*",
      "osx": {
        "exclude_files": "ReactiveCocoa/*{UI,MK}*"
      },
      "ios": {
        "exclude_files": "ReactiveCocoa/*{AppKit,NSControl,NSText}*"
      },
      "tvos": {
        "exclude_files": "ReactiveCocoa/*{AppKit,NSControl,NSText}*"
      }
    }
  ]
}
