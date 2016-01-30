# ScrollableAdaptiveImageViewer

This prototype resulted from shifting between two healthcare networks and "bringing my own data" - specifcally some reference x-rays. Additionally, I had RAW image pixel frames - MR scans from research work in the early 1990s research - that I was interested in displaying in a native iOS application.

I accomplished both goals by image conversions - from DICOM into a standard more common web ready image format and from RAW to viewable form by class RawImageFrame. To avoid obvious issues with HIPAA and PHI, I replaced medical image data sets with a test image sequence from the USC SIPI data store.

See also the code in the [AutoFrameLayout(]https://github.com/thulefog/AutoFrameLayout) repository, an iteration based on [PureLayout](https://github.com/PureLayout). The objective of that repository provides layout for a set of frames in a view and enables image selection to view one image and uses this ScrollableAdaptiveImageViewer code.

# Design and Implementation Notes

Source code in Swift for a reusable iOS image viewer with intuitive gestures: pinch and tap for zoom and swipe for pan.

ScrollableImageViewController is a product of a few iterations to have a reusable image viewer based on Scroll Views and intuitive touch gestures.  Code was built with Version 7.1 and was tested using iOS 9.1 on an iPhone 5.

- The view controller makes use of ViewableFactory to abstract from some of details of loading viewable data. This view controller is part of the Viewables code area noted below and seed code from which framework(s) could grow.

- There is a very simple JSON store that provides a key to the asset catalog for the test pattern. This JSON store is a simplification for a more complicated data aggregate under test for dynamic layouts of larger data sets. Reference the Data Layer area in the project.

- The scrollable view, due the being the product of some iterations and refinement is log enabled. The primary details logged are coordinates and other calculations related to display pipeline i.e. the image data, view and frame.

| Gesture | Action |
|---|---|
| *Single Finger Tap* | Zoom In |
| *Two Finger Tap* | Zoom Out |
| *Three Finger Tap* | Close Current Image  |

# Screens

![Clip](./Scrollable.gif)

A breakdown of the broad areas where code has been under construction is listed below.

- Viewables
- Layout
- Capture
- Encrypt
- Filter

# Next Steps

Some work needed to re-introduce unit tests as well as scrub post iOS 9.x and XCode 7.x warnings, beyond that - code iterations under way or planned include.


*Layouts*

The concentration has been on data storage and display, but work underway includes more realistic data navigation around user features. The evaluation of dynamic layout approaches will continue especially comparing Pure Layout open source versus the newly ported Stack Views and Auto Layout. The degree of reliance of Interface Builder against manually code view management has been an area of ongoing investigation.

A drawer view to provide additional meta data beyond the displayable image has also been an area of experimentation with the data sourced from JSON or a remote store.

*Cameras*, *Filters*

The open source package GPUImage has been proving out in some prototypes, so that approach to applying an image Filter pipeline as an alternative to Core Image is the likely path for a few reasons.

Note that some past work to science project shape detection using CoreImage and text detection using Tesseract on iOS will be restarted again. This is enabled by the decision settling around the approach to the Filter pipeline. Initial OCR results were rough and pipeline revisions needed. The use case being worked was a lazy (manual typing avoidance) approach to build my wine database by detecting the label and then detecting and recognizing key text on the label. (So lazy may not be the right term based on complexity of the image pipeline...)

*Encrypt*

After some positive experience with the Objective-C version of RNCryptor open source package, will be evaluating the Swift version to decrypt data on the fly, arriving at a display ready form.

Reference Code:

-[SwiftlyJSON](https://github.com/SwiftyJSON/SwiftyJSON)

-[PureLayout](https://github.com/PureLayout)

-[GPUImage](https://github.com/BradLarson/GPUImage)

## License
The MIT License (MIT)

Copyright (c) 2015, 2016 John Matthew Weston

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.


