//
//  ScrollableAdaptiveImageViewerTests.swift
//  ScrollableAdaptiveImageViewerTests
//
//  Created by John Matthew Weston in April 2015 with iterations since.
//  Images Copyright © 2015 John Matthew Weston.
//  Source Code - Copyright © 2015 John Matthew Weston but published as open source under MIT License.
//

import UIKit
import XCTest

import ScrollableAdaptiveImageViewer


class ScrollableAdaptiveImageViewerTests: XCTestCase {
    
    let urlLocation = "http://www.apple.com/euro/ios/ios8/a/generic/images/og.png"
    var rawDataFullPath = "/raw/data/full/path/8bit.raw"
    let folderPath = "/post-processed/folder/path"
    let jpegDataAssetName = "el-granada.jpg"
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        XCTAssert(true, "Pass")
    }
    
    func testLoadAsset() {
        //from asset
        let image = UIImage(named: jpegDataAssetName)
        var imageView = UIImageView()
        imageView = UIImageView(image: image)

        XCTAssertNotNil( imageView )
    }
 
    /*
    func testRawData() {
           
        NSLog( "Read RAW data file \(rawDataFullPath)")
        
        let fileData = NSData( contentsOfFile: rawDataFullPath )
        let rawData = RawImageFrame()
        let rawWidth = UInt(256)
        let rawHeight = UInt(256)
        NSLog( "Creating viewable representation of file...")
        
        var uiImage = UIImage( )
        uiImage = rawData.getUIImageForRawByteData( Int(rawWidth) , height: Int(rawHeight), data: fileData! )!
        
        // This is an example of a functional test case.
        XCTAssert(true, "Pass")
    }
    
    func testGenerateDisplayableFormat()
    {

        let fileManager = NSFileManager.defaultManager()
        let enumerator:NSDirectoryEnumerator = fileManager.enumeratorAtPath(folderPath)!
        
        let index = 0;
        while let fullPath = enumerator.nextObject() as? String {
            if fullPath.hasSuffix("png") || fullPath.hasSuffix("jpg") { // checks the extension
                
                print( "Image file found: \(fullPath) " )
                NSLog( "Read RAW data file \(fullPath)")
                
                var fileData = NSData( contentsOfFile: fullPath )
                var rawData = RawImageFrame()
                var rawWidth = UInt(256)
                var rawHeight = UInt(256)
                NSLog( "Creating viewable representation of file...")
                
                var uiImage = UIImage( )
                uiImage = rawData.getUIImageForRawByteData( Int(rawWidth) , height: Int(rawHeight), data: fileData! )!
            }
        }
    }
    
    func testCreateViewableFromDiskFile()
    {
        let viewableFactory = ViewableFactory()
        _ = UIImageView()
        
        var imageView = viewableFactory.CreateViewableFromUrl( "/Users/TheChief/Code/DataCache/1686jw.jpg")
        
        //check
    }
    
    func testCreateViewableFromUrl()
    {
        //asynchronous from URL
        
        //NOTE: a URL location outside of the simulator sandbox will not work, e.g "/Users/TheChief/Code/DataCache/raw.jpg"
        
        var viewableFactory = ViewableFactory()
        var imageView = UIImageView()
        imageView = viewableFactory.CreateViewableFromUrl( urlLocation )
        
    }

    func testCreateViewableFromUrlUsingExtension()
    {
        //asynchronous from URL

        //NB: this is using the Extension version...
        
        var imageView = UIImageView()
        var imageAsync = UIImageView()
        //XC clunkiness -> not seeing extension method...
        //imageAsync.downloadImage( urlLocation )
        
        // the UIImageViewAsync "is a" UIImageView, so just hook up the UIImageView
        // the image will refresh when the queued dispatch completes
        
        imageView = imageAsync

    }

    func testCreateViewableFromAsset()
    {
        var viewableFactory = ViewableFactory()
        
        var imageView = viewableFactory.CreateViewableFromAsset( "el-granada" )
        
    }
    func testCreateViewableFromRawFile()
    {

        var rawWidth = Int(256)
        var rawHeight = Int(256)
        var viewableFactory = ViewableFactory()
        
        print( "Read RAW data file \(rawDataFullPath)")
        var imageView = viewableFactory.CreateViewableFromRawFile(rawDataFullPath, width: rawWidth, height: rawHeight )
    }
    
    func testCreateViewableFromAssetOriginal()
    {
        var imageView = UIImageView()
        let image = UIImage(named: jpegDataAssetName)
        imageView = UIImageView(image: image)
    }
    
    func testReadRawImageFrame()
    {
        print( "Read RAW data file \(rawDataFullPath)")
        var fileData = NSData( contentsOfFile: rawDataFullPath )
        var rawData = RawImageFrame()
        var rawWidth = Int(256)
        var rawHeight = Int(256)
        var uiImage = UIImage( )
        var imageView = UIImageView()
        
        print( "Creating viewable representation of RAW data input file...")
        
        uiImage = rawData.getUIImageForRawByteData( rawWidth , height: rawHeight, data: fileData! )!
        imageView = UIImageView(image: uiImage)
        
    }
    */
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }
    
}
