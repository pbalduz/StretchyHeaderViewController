# StretchyHeaderViewController

This `StretchyHeaderViewController` class provides a view controller with a header `UIImageView` and a `UIView` to load your content. It animates the header as the user scrolls down by adding a blur effect while the image stretches.

This is useful in case you need a behavior similar to the one in collections but your data doesn't follow an ordered structure to fill a collection's data source.


### How to use
- Subclass `StretchyHeaderViewController`
- Assign your `UIImage` to the `headerImageView` property
- Add your view content
- You can (optionally) provide an offset value for your content by setting `contentViewTopOffset` property. This value is the amount of space that your content will overlap the image view

*In this demo project you can check how to use the `StretchyHeaderViewController` class*
