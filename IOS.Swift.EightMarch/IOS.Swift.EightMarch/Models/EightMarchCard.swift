//
//  Card.swift
//  IOS.Swift.Love
//
//  Created by Vadim Nikiforov on 11/21/22.
//

import SwiftUI
import Foundation

struct EightMarchCard: View {
    @ObservedObject var animation = Animation()
    @State private var imageView = UIImageView()
    
    var body: some View {
        VStack
        {
            image(imageView.image)
            Text("I love you 👩‍❤️‍💋‍👨❤️")
                .padding()
                //.font(.custom("New-York", size: 24))
                .font(.system(size: 24, weight: .bold))
            ImageAnimator
        }
    }
}

// Bussines
private let ImageAnimator = {
    var images :NSMutableArray = []
    for counter in 1...4
    {

        var image: String = "\(counter).png"
        var obj_image  = UIImage(named: image)
        images.add(obj_image)
    }

    self.imageView.animationImages = images;
    self.imageView.animationDuration = 1.0
    self.imageView.startAnimating()
    let animation = UIImage.animatedImage()
    self.myImageView.image = animation
}()

struct EightMarchCard_Previews: PreviewProvider {
    static var previews: some View {
        ZStack
        {
            EightMarchCard()
        }
    }
}
