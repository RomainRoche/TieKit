# TieKit

**TieKit** is a Swift DSL framework designed to ease the use of `NSLayoutAnchor` and `NSLayoutconstraint` in *UIKit*. 

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

