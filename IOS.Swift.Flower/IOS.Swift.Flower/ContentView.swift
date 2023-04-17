//
//  ContentView.swift
//  IOS.Swift.Flower
//
//  Created by Vadim Nikiforov on 4/5/23.
//

import SwiftUI

// Models
struct ImageModel: Identifiable, Hashable {
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    let id = UUID()
    let image: String
}

struct ContentView: View {
    @State var image: String = "0"
    @State var images = [
        ImageModel(image: "1"),
        ImageModel(image: "2"),
        ImageModel(image: "3"),
        ImageModel(image: "4")
    ]
        
    var body: some View {
        Text("Image Grow up animation")
            .padding()

        VStack {
            Image(image)
                .resizable()
                .scaledToFit()
            Button("Play"){
                for img in images {
                    image = img.image
                    
                    //Delay task by 1 seconds:
                    sleep(1)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
