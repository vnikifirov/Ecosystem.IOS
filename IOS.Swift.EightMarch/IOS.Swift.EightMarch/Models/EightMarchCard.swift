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
            imageView.animationImages = animation.AnimatedImages(for: "Images")
            imageView.animationDuration = 0.9
            imageView.animationRepeatCount = 2
            imageView.image = imageView.animationImages?.first
            imageView.startAnimating()
            
            Text("I love you 👩‍❤️‍💋‍👨❤️")
                .padding()
                //.font(.custom("New-York", size: 24))
                .font(.system(size: 24, weight: .bold))
                
        }
    }
}


struct EightMarchCard_Previews: PreviewProvider {
    static var previews: some View {
        ZStack
        {
            EightMarchCard()
        }
    }
}
