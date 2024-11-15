//
//  LaTeXImageView.swift
//  iOSLaTeX
//
//  Created by Shuaib Jewon on 7/23/18.
//  Copyright © 2018 shujew. All rights reserved.
//

import Foundation

open class LaTeXImageView: UIImageView {
    private var laTeXRenderer: LaTeXRenderer?
    
    @objc open weak var heightConstraint: NSLayoutConstraint?
    
    @objc open func inject(laTeXRenderer: LaTeXRenderer){
        self.laTeXRenderer = laTeXRenderer
    }
    
    @objc open var backgroundColorWhileRenderingLaTeX: UIColor? = .white
    
    @objc open var laTeX: String? {
        didSet {
            if let laTeX = laTeX {
                self.render(laTeX)
            }
        }
    }
    
    @objc open func render(_ laTeX: String, shouldResize: Bool = false, completion: ((String?)->())? = nil) {
        if self.laTeXRenderer == nil {
            self.laTeXRenderer = LaTeXRenderer(parentView: self)
        }
        
        self.image = nil
        self.backgroundColor = self.backgroundColorWhileRenderingLaTeX

        self.laTeXRenderer?.render(laTeX) { [weak self] (renderedLaTeX, error)  in
            guard let strongSelf = self else { return }
            
            if error == nil {
                strongSelf.image = renderedLaTeX
                
                if shouldResize, let heightConstraint = strongSelf.heightConstraint, let image = renderedLaTeX {
                    let newHeight = strongSelf.calculateHeight(forImage: image, withContainerWidth: strongSelf.frame.size.width)
                    heightConstraint.constant = newHeight
                }
            }

            completion?(error)
        }
    }
    
    @objc open func calculateHeight(forImage image: UIImage, withContainerWidth containerWidth: CGFloat) -> CGFloat {
        let imageHeight = image.size.height
        let imageWidth = image.size.width
        
        guard imageHeight > 0, imageWidth > 0 else {
            return 0
        }
        
        if imageWidth > containerWidth {
            return containerWidth * image.size.height / image.size.width
        } else {
            return image.size.height
        }
    }
}


