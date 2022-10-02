//
//  ContentView.swift
//  Twitter post
//
//  Created by Semmy Lee on 9/30/22.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        VStack{
            HStack{
                Image("Photo") // Here we call our Image assets by calling it with a name
                    .resizable() // So the image can be resize 
                    .aspectRatio(contentMode: .fill) // To make the image fill all the frame
                    .frame(width: 75, height: 75) // Setting the frame or size of the image to be in
                    .clipped() // Cut all the Image to the frame size
                    .cornerRadius(100) // To make the corner round, here we used to make the image round
                    .padding(5) // Making a over border to the item
                    .offset(y: 10) // Offsetting the image to 10 in Y axis	

                HStack{ // All the tweet info from the user
                    Text("Semmy") // Show Semmy as the username 
                            .font(.system(size: 20, weight: .bold)) // Modified the text to size 20 and bold
                    Text("@Semyuu_h") // Show the tag as @Semyuu_h 
                            .font(.system(size: 15)) // Modified the text to size 15 
                    Text("4m") // Shown how long this tweet has been post 
                            .font(.system(size: 15, weight: .thin)) // Modified the text to size 15 and thin
                    Spacer() // Set as Space between the Text and Image 
                    Image(systemName:"ellipsis") // Set three dot
                }
                .padding(3)
			}	
            .padding(4)

            Text("How to make Twitter post in swift") // This will show a text on the post
                .multilineTextAlignment(.leading) // Set the text to the right of the frame
                .offset(x: 20, y: -20) // Offset the text to X 20 Y -20,
            Spacer() // Set a space to the bottom

                        
            HStack{
                Image(systemName: "bubble.left") // Show the Comment icon for the post
                    .offset(y: -15) // Offset the icon in the Y axis
                    .padding(.horizontal, 40) // Set a horizontal boundaries for the item 
                Image(systemName: "arrow.2.squarepath") // Show the Retweet icon for the post
                    .offset(y: -15) // Offset the icon in the Y axis
                    .padding(.horizontal, 40) // Set a horizontal boundaries for the item 
                Image(systemName: "heart") // Show the Like icon for the post
                    .offset(y: -15) // Offset the icon in the Y axis
                    .padding(.horizontal, 40) // Set a horizontal boundaries for the item 
                Image(systemName: "square.and.arrow.up") // Show the Share icon for the post
                    .offset(y: -15) // Offset the icon in the Y axis
                    .padding(.horizontal, 40) // Set a horizontal boundaries for the item 
            }
        }
        .frame(width: 400, height: 180) // Set the frame for the post
        .background(.ultraThickMaterial) // Make a clear background for the post
        .cornerRadius(12)
        .preferredColorScheme(.dark) // Set the phone for dark mode
	}
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
