//
//  UIDeviceExt.swift
//  MobileVoterOutreachApplication
//
//  Created by Dylan  Irlbeck on 7/31/18.
//  Copyright © 2018 Dylan  Irlbeck. All rights reserved.
//

import Foundation

extension UIDevice {
    var iPhoneX: Bool {
        return UIScreen.main.nativeBounds.height == 2436
    }
}
