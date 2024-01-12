//
//  ContentView.swift
//  Guidebook
//
//  Created by Ellen Stavrou on 27/06/2023.
//

import SwiftUI

struct CityView: View {
    
    @State var cities = [City]()
    var dataService = DataService()
    
    var body: some View {
        
        NavigationStack {
            
            ScrollView (showsIndicators: false) {
                
                VStack (alignment: .leading){
                    
                    ForEach(cities) { city in
                        
                        NavigationLink {
                            AttractionView(city: city)
                        } label: {
                            CityCard(city: city)
                                .padding(.bottom, 15)
                        }
                    }
                }
                
                
            }
            .padding(.horizontal)
        }
            .ignoresSafeArea()
            .onAppear {
                cities = dataService.getFileData()
            }

        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CityView()
    }
}
