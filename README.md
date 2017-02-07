# SwiftUtils

Small pieces of code which I'm using in many of my projects.

## 1. Style

Simple class for creating and combining styles for UI controls.

Example:
``` swift
let labelTextStyle = Style<UILabel> { label in
    label.textColor = UIColor.lightGray
    label.font = UIFont.systemFont(ofSize: 20.0)
}

let labelBorderStyle = Style<UILabel> { label in
    label.layer.borderColor = UIColor.darkGray.cgColor
    label.layer.borderWidth = 4.0
}

let defaultLabelStyle = labelTextStyle + labelBorderStyle

let label = UILabel()
label.text = "Sample text"
label.apply(style: defaultLabelStyle)
```

## 2. Result

Result type for Swift.

Example:

``` swift
enum SomeError: Error {}

let result: Result<Int, SomeError> = .success(42)

result.ifSuccess { value in
    print("Success")
}.else { error in
    print("Failure")
}
```
