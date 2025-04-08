//
//  ContentView.swift
//  ListViewExample
//
//  Created by Madhu Sudhan on 28/03/25.
//

import SwiftUI

struct RestaurentListView: View {
    var listNames = ["ABC","ABCD","ABCDE","AABB","AB","AABBCCDDEE","MADHU SUDHAN RAO","RAMYA","MALLIKHARJUNA RAO","KUSUMA KUMARI LAXMI"]
    var listPlaces = ["First","Second","Third","Fourth","Fifth","Sixth","Seventh","Eight","Nighth","Ten"]
    var listLocation = ["Hong Kong","Hong Kong","Sydney","Sydney","London  London London","London","New York","London","Sydney","London"]
    var images = ["B1","B1","B1","B1","B1","B1","B1","B1","B1","B1"]
    var body: some View {
        NavigationView {
            List {
                ForEach(listNames.indices,id:\.self){ index in
                    NavigationLink(
                        destination: DetailsView(name: listNames[index], image: images[index], place: listPlaces[index], location: listLocation[index])) {
                        HStack(alignment: .top, spacing: 20) {
                            Image(images[index])
                                .resizable()
                                .frame(width: 150, height: 150)
                            VStack(alignment: .leading, spacing:10) {
                                Text(listNames[index])
                                    .font(.system(.title2, design: .rounded))
                                Text(listPlaces[index])
                                    .font(.system(.body, design: .rounded))
                                Text(listLocation[index])
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                    
                }
                
            }
            .navigationTitle("Restaurants")
        }
    }
}
struct RestaurentListView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurentListView()
    }
}

