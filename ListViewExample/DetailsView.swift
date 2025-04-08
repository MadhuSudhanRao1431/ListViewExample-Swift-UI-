//
//  DetailsView.swift
//  ListViewExample
//
//  Created by Madhu Sudhan on 08/04/25.
//

import SwiftUI

struct DetailsView: View {
    var name :String
    var image:String
    var place  :String
    var location:String
    var body: some View {
        VStack(alignment:.leading,spacing: 10){
                Image(image)
                    .resizable()
                    .scaledToFit()
                   .frame(maxWidth: .infinity, alignment: .center)
                    .frame(height:250)
                    Text(name)
                        .font(.title2)
                        .bold()
                    Text(place)
                        .font(.body)
                    Text(location)
                        .foregroundColor(.gray)
                Spacer()
            }
            .padding()
            .navigationTitle("Details")
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(name: "Madhu", image: "B1", place: "Hyderabad", location: "USA")
    }
}
