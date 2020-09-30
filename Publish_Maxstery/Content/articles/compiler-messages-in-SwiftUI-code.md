---
date: 2020-09-26 22:00
description: Compiler messages as developer reminders in your SwiftUI code
tags: tip of the day, swiftui
---

# Compiler messages as developer reminders in your SwiftUI code


While I'm designing a view, I tend to first create all the components using hardcoded mock data. I want to see how the flow and navigation will look before coding the real logic. I found that sometimes I forgot to remove some of the duplications of code, messages, or hardcoding text that I used to define the look and fill. This could be a real issue if you deliver unwanted mock data to production.

To solve this problem, I found two useful compiler directives while working in my first app:

```
#warning("some message")
#error("some message")
```

When you use these directives in your code the compiler will give you the appropriate message and will remind you what you are missing. It's like to create your compiler-to-do list. 

Some examples are:

#warning("TODO: Mock data")
#warning("TODO: .constant Binding to enable the preview")
#warning("TODO: Create a Model object to reduce complexity")

Hope you find this useful.

Don't worry, be [pathient](https://rubenmaldonado.github.io/apps/pathience-app/)!


