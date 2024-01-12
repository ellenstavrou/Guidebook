//
//  AttractionRow.swift
//  Guidebook
//
//  Created by Ellen Stavrou on 29/06/2023.
//

import SwiftUI

struct AttractionRow: View {
    
    var attraction: Attraction
    
    var body: some View {
        
        VStack (alignment: .leading) {
            
            Image(attraction.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 120)
                .cornerRadius(15)
            
            Text(attraction.name)
                .font(.title)
                .bold()
            
            Text(attraction.summary)
            
            
        }
    }
}

struct AttractionRow_Previews: PreviewProvider {
    static var previews: some View {
        AttractionRow(attraction: Attraction(name: "Louvre Museum",
                                             summary: "The Louvre, or the Louvre Museum is a national art museum in Paris, France.",
                                             longDescription: """
          The Louvre or the Louvre Museum is a national art museum in Paris, France. A central landmark of the city, it is located on the Right Bank of the Seine in the city's 1st arrondissement (district or ward) and home to some of the most canonical works of Western art, including the Mona Lisa and the Venus de Milo. The museum is housed in the Louvre Palace, originally built in the late 12th to 13th century under Philip II. Remnants of the Medieval Louvre fortress are visible in the basement of the museum. Due to urban expansion, the fortress eventually lost its defensive function, and in 1546 Francis I converted it into the primary residence of the French Kings.
          """,
                                             imageName: "louvre", latLong: "48.860752239687095, 2.337686912770478"))
    }
}
