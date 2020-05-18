# TieKit

**TieKit** is a Swift DSL framework designed to ease the use of `NSLayoutAnchor` and `NSLayoutconstraint` in *UIKit*. 

![tiekit icon](https://github.com/RomainRoche/TieKit/blob/master/readme-assets/tiekit.png?raw=true)

## Anchor shortcuts

```swift
let view = UIView(frame: .zero)
_ = view.top()	            // top anchor
_ = view.top(margin: false)	// top anchor of layout margin guide
_ = view.top(margin: true)	// top anchor
```

## Building constraints with Anchors

#### Equal

```swift
// tie anchors with equal relation
let constraint = subview.top() -- superview.top()

// tie anchors with constant spacing, and ignoring result
subview.leading() -- superview.leading() + 20
```

#### Greater or equal

````swift
// tie anchors with 'greater than or equal' relation
let constraint = subview.top() ~~> superview.top()

// tie anchors with constant spacing, and ignoring result
subview.leading() ~~> superview.leading() + 20
````

#### Less or equal

````swift
// tie anchors with 'less than or equal' relation
let constraint = subview.top() <~~ superview.top()

// tie anchors with constant spacing, and ignoring result
subview.leading() <~~ superview.leading() + 20
````

#### Dimension anchors 

```swift
// dimension equal to constant
let constraint = subview.height() --= 80

// dimension greater or equal to constant
let constraint = subview.height() ~>= 80

// dimension less or equal to constant and ignoring result
subview.height() <~= 80
```

## Using `TieSize`

The `TieSize` enumeration set predefined sizes you can use in your code or in your storyboards.

The base value `TieSize.spacing` defines the base spacing. You can change it (as soon as possible in your app lifecycle, like your AppDelegate).

```swift
TieSize.spacing = 6
```

### Usage in code

```swift
let smallSpacing: CGFloat = TieSize.s.spacing
```

You can use `TieSize` to add to a constraint directly.

```swift
subview.leading() -- superview.leading() + .s
```

### Use in storyboard

When setting a constraint in storyboard you can use `TieSize` to. 

* Set the class of the constraint to `TieConstraint`.
* In the *Attributes inspector* tab, set the `Spacing name` value as a text with the predefined values: `xs`, `s`, `m`, `l`, `xl`, `xxl`. You can even sum the values: `m+s`.



