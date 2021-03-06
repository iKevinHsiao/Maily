[![Build Status](https://travis-ci.org/ismetanin/Maily.svg?branch=master)](https://travis-ci.org/ismetanin/Maily) [![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](http://makeapullrequest.com)


# Maily

Send email to third-party mail clients easy.

## Supported clients

Client             | URL Scheme
------------------ | ---------------
Gmail              | `googlegmail`  
Dispatch           | `x-dispatch`
Spark              | `readdle-spark`
Airmail            | `airmail`  
Microsoft Outlook  | `ms-outlook`
Yahoo Mail         | `ymail`

## Installation

### CocoaPods


[CocoaPods](https://cocoapods.org) is a dependency manager for Cocoa projects. For usage and installation instructions, visit their website. To integrate Maily into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
pod 'Maily', '~> 1.0.0'
```

### Swift Package Manager

The [Swift Package Manager](https://swift.org/package-manager/) is a tool for automating the distribution of Swift code and is integrated into the `swift` compiler.

Once you have your Swift package set up, adding Maily as a dependency is as easy as adding it to the `dependencies` value of your `Package.swift`.

```swift
dependencies: [
    .package(url: "https://github.com/ismetanin/Maily.git", .upToNextMajor(from: "1.0.0"))
]
```

## Usage

Before start you are required to add all needed schemes to your `LSApplicationQueriesSchemes` in the **Info.plist** file. Without this step you won't be able to find third party clients.

<details>
  <summary>Code to drop into <b>Info.plist</b> </summary>
  <br>

   ```xml
    <key>LSApplicationQueriesSchemes</key>
    <array>
        <string>ymail</string>
        <string>ms-outlook</string>
        <string>airmail</string>
        <string>readdle-spark</string>
        <string>x-dispatch</string>
        <string>googlegmail</string>
    </array>
   ```

</details>

### Present dialog to send email to available clients

```swift
Maily.shared.sendMail(recipient: "", subject: "", body: "", presentHandler: {}, cancelHandler: {})
```

Before this action you would probably like to check client's availability. For this you may call

```swift
Maily.shared.canSendMail
```

To access an available client just use

```swift
Maily.shared.clients
```

### Localization

To localize action sheet "Cancel" button just change `cancelButtonTitle` property in `Maily.shared`.

### Customization

Almost every class, property, and method is `open` so you can just subclass or build Facade over them.

To add a new third party client you may add it to the `Maily.shared.clients`, or contribute to the library.

## Requirements

- iOS 10+
- Xcode 10.2+ (built for Swift 5)

## Author

Ivan Smetanin, smetanin23@yandex.ru

## License

Maily is available under the MIT license. See the [LICENSE](https://github.com/ismetanin/Maily/blob/master/LICENSE) file for more info.
