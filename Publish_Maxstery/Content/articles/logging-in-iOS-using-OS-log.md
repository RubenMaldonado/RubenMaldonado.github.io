---
date: 2020-09-20 22:00
description: Logging in iOS using OS log
tags: code snippet,swift,log
---

# Logging in iOS using OS log

Once I started to play with my first app, I found myself printing into the console a lot, just to try to understand what was happening. This always felt wrong and until I had an "aha" moment by watching the presentation [Explore logging in Swift](https://developer.apple.com/videos/play/wwdc2020/10168/#:~:text=Meet%20the%20latest%20generation%20of,data%20%E2%80%94%20all%20without%20sacrificing%20performance.) at WWDC20. This opened my eyes so I started using OS log everywhere.

Here you have a simple snippet that I use everywhere:

```swift
//Import this libaray 
import os 
//Create a global logger object 
//Use the category to identify the struct/class/view.
let logger = Logger(subsystem: "com.maldonadotena.pathience", category: "datarepository") 
//Log at any part of the application
let filename:  String = "some file name that doesnt exist.txt"
logger.log("Couldn't find the file \(filename, privacy: .public)")
```

The official documentation is extensive, you can take a look here:  [Logging](https://developer.apple.com/documentation/os/logging) . But if you want just a copy and paste solution, here you have it, ready to use!.

Don't worry, be [pathient](https://rubenmaldonado.github.io/apps/pathience-app/)!
