//
//  ImageView.swift
//  VideoConnect
//
//  Created by Protocol on 12/07/16.
//  Copyright © 2016 VideoConn. All rights reserved.
//

import Foundation
import UIKit
import SDWebImage

extension UIImageView {
    
    func setRounded(borderWidth:CGFloat , borderColor:UIColor ) {
        self.layoutIfNeeded()
      //  let radius = CGRectGetHeight(self.frame) / 2.0
        
        let radius = 4.0
        self.layer.cornerRadius = CGFloat(radius)
        self.layer.borderWidth = borderWidth
        self.layer.borderColor = borderColor.cgColor
        self.layer.masksToBounds = false
        self.clipsToBounds = true
    }
    
    func setAsyncImage(defaultImg:String, url:String ) {

        if let url  = NSURL(string:url) {
            let img = UIImage(named:defaultImg)
            self.sd_setImage(with: url as URL, placeholderImage: img) {
                (img, err, cacheType, imgUrl) -> Void in
            }
        }

    }
}
