//
//  BottomSheetConfiguration.swift
//  BottomSheetDemo
//
//  Created by Mikhail Maslo on 15.08.2022.
//  Copyright © 2022 Joom. All rights reserved.
//

import UIKit

@objc
public class BottomSheetConfiguration: NSObject {
    public enum PullBarConfiguration {
        public class PullBarAppearance {
            public let height: CGFloat

            public init(height: CGFloat) {
                self.height = height
            }
        }

        case hidden
        case visible(PullBarAppearance)

        public static let `default`: PullBarConfiguration = .visible(PullBarAppearance(height: 20))
    }

    public class ShadowConfiguration {
        public let backgroundColor: UIColor
        public let blur: UIBlurEffect.Style?

        public init(backgroundColor: UIColor, blur: UIBlurEffect.Style? = nil) {
            self.backgroundColor = backgroundColor
            self.blur = blur
        }

        public static let `default` = ShadowConfiguration(backgroundColor: UIColor.black.withAlphaComponent(0.6))
    }

    public let cornerRadius: CGFloat
    public let pullBarConfiguration: PullBarConfiguration
    public let shadowConfiguration: ShadowConfiguration

    @objc public init(
        cornerRadius: CGFloat
    ) {
        self.cornerRadius = cornerRadius
        self.pullBarConfiguration = .default
        self.shadowConfiguration = .default
    }

    public static let `default` = BottomSheetConfiguration(
        cornerRadius: 10
    )
}
