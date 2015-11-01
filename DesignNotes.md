# ScrollableImageViewController

ScrollableImageViewController is a product of a few iterations to have a reusable image viewer based on Scroll Views and intuitive touch gestures.

- The view controller makes use of ViewableFactory to abstract from some of details of loading viewable data. This view controller is part of the Viewables code area noted below and seed code from which framework(s) could grow.

- There is a very simple JSON store that provides a key to the asset catalog for the test pattern. This JSON store is a simplification for a more complicated data aggregate under test for dynamic layouts of larger data sets. Reference the Data Layer area in the project.

- The scrollable view, due the being the product of some iterations and refinement is log enabled. The primary details logged are coordinates and other calculations related to display pipeline i.e. the image data, view and frame.

A breakdown of the broad areas where code has been under construction is listed below.

- Viewables
- Layout
- Capture
- Encrypt
- Filter

# Next Steps

Some work needed to scrub post iOS 9.x and XCode 7.x warnings, beyond that - code iterations under way or planned include.


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
