//
//  Preview.swift
//  MyNetflix
//
//  Created by joonwon lee on 2020/04/03.
//  Copyright © 2020 com.joonwon. All rights reserved.
//

// https://developer.apple.com/documentation/avfoundation/avplayerlayer

import UIKit
import AVFoundation

//class PlayerView: UIView {
//    var player: AVPlayer? {
//        get {
//            return playerLayer.player
//        }
//        set {
//            playerLayer.player = newValue
//        }
//    }
//
//    var playerLayer: AVPlayerLayer {
//        return layer as! AVPlayerLayer
//    }
//
//    // Override UIView property
//    override static var layerClass: AnyClass {
//        return AVPlayerLayer.self
//    }
//}

class PlayerView: UIView {

    // Override the property to make AVPlayerLayer the view's backing layer.
    override static var layerClass: AnyClass { AVPlayerLayer.self }

    // The associated player object.
    var player: AVPlayer? {
        get { playerLayer.player }
        set { playerLayer.player = newValue }
    }

    private var playerLayer: AVPlayerLayer { layer as! AVPlayerLayer }
}
