//
//  UIImage+Extension.swift
//  NetflixClone
//
//  Created by Onie on 12.12.2022.
//

import UIKit

extension UIImage {
	func resizeTo(size: CGSize) -> UIImage {
		 let renderer = UIGraphicsImageRenderer(size: size)
		 let image = renderer.image { _ in
				 self.draw(in: CGRect.init(origin: CGPoint.zero, size: size))
		 }

		 return image.withRenderingMode(self.renderingMode)
 }
}
