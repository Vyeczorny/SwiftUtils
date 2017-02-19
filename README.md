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

## 3. ReusableIdentifier

A set of extensions, which add `identifier` property for all `UITableViewCell`s and `UICollectionReusableView`s. They also create helper methods for `UITableView` and `UICollectionView` which automatically uses generated identifiers to registering and dequeuing cells.

Example:

``` swift
class SomeCell: UICollectionViewCell {
    // ...
}

let collectionView = UICollectionView(
    frame: CGRect.zero,
    collectionViewLayout: UICollectionViewFlowLayout()
)
collectionView.register(VineyardsCollectionViewCell.self)
let cell = collectionView.dequeueReusableCell(
    ofType: SomeCell.self,
    forIndexPath: indexPath
) // Note that cell already has SomeCell type, so you don't need to cast it

```

## 4. UIStackView+Margins

Simple extension which allows to add margins to arrangd subview.

Example:

```swift
let stackView = UIStackView()
let view = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 200.0, height: 80.0))
stackView.addArrangedSubview(
    view,
    withMargins: UIEdgeInsets(top: 0.0, left: 20.0, bottom: 0.0, right: 0.0)
)
```
