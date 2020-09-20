\---

date: 2020-09-20 20:00

description: logging in iOS

tags: code snippet,swift,log

\---

How to use OS log in your application

Once I started to play with my first app, I found myself printing into the console a lot, just to try to understand what was happening. This always felt wrong and until I had an "aha" moment by watching the presentation "Explore logging in Swift" at WWDC20. This oppened my eyes so I started using OS log everywere.

Here you have a simple snippet that I use everywhere

```swift
//Import this libaray 
import os 
//Create a global logger object with a category name, in my case I use this to define the specific class/struct/view/viewmodel that Im using 
let logger = Logger(subsystem: "com.maldonadotena.pathience", category: "datarepository") //Log in any part of the application
let filename:  String = "some file name that doesnt exist.txt"
logger.log("Couldn't find the file \(filename, privacy: .public)")
```

The official documentation is extensive, you can take a look here:  [Logging](https://developer.apple.com/documentation/os/logging) . But if you want just a copy and paste solution, here you have it, ready to use!.

Don't worry, be [pathient](https://rubenmaldonado.github.io/apps/pathience-app/)!