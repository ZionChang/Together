Together
====

[![Swift Version][swift-image]][swift-url]
[![Pod Version](http://img.shields.io/cocoapods/v/Together.svg)](http://cocoadocs.org/docsets/Together/)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![License](http://img.shields.io/badge/license-MIT-blue.svg)](http://opensource.org/licenses/MIT)
[![Platform](https://img.shields.io/cocoapods/p/Together.svg?style=flat)](http://cocoapods.org/pods/Together)

🍺Object common properties setting for swift.

##Usage

###SystemClass

```swift
let view1 = UIView()
let view2 = UITextField()
let view3 = UIImageView()
let alpha: CGFloat = 0.5
```

use `together` set their common properties

```swift    
view1.together(values: view2, view3).do {
	$0.alpha = alpha
}
```

This is equivalent to:

```swift
view1.alpha = alpha
view2.alpha = alpha
view3.alpha = alpha
```
###CustomClass

```swift
class Person {
    var firstName: String?
    var lastName: String?
}

class Coder: Person {
    var language: String?
}
// remember!!
extension Person: TogetherCompatible {}

let person1 = Person()
let person2 = Person()
let person3 = Person()
let coder = Coder()
let lastName = "Zhang"
    
person1.together(values: person2, person3, coder).do {
    $0.lastName = lastName
}

```

## Installation

###Carthage
Create a `Cartfile` that lists the framework. Follow the [instructions](https://github.com/Carthage/Carthage#if-youre-building-for-ios) to add `$(SRCROOT)/Carthage/Build/iOS/Together.framework` to an iOS project.

```ruby
github "eilianlove/Together"
```

Run `carthage update` to build the framework and drag the built `Together.framework` into your Xcode project.

To get the full benefits import `Together`

``` swift
import Together
```

###CocoaPods

You can use [CocoaPods](http://cocoapods.org/) to install `Together` by adding it to your `Podfile`:

```ruby
platform :ios, '8.0'
use_frameworks!
pod 'Together', '~> 1.0.0'
```

Then, run the following command:

```ruby
$ pod install
```

### Manually
1. Download and drop ```Together``` in your project.  
2. Congratulations!  


[swift-image]:https://img.shields.io/badge/swift-3.0-orange.svg
[swift-url]: https://swift.org/


