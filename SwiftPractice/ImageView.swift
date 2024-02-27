//
//  ImageView.swift
//  SwiftPractice
//
//  Created by Hrithik on 2/23/24.
//

import Foundation
import SwiftUI

struct ImageView: View {
    @ObservedObject private var imageViewModel: ImageViewModel
    
    init(urlString: String?) {
        imageViewModel = ImageViewModel(urlString: urlString)
    }
    
    var body: some View {
        Image(uiImage: imageViewModel.image ?? UIImage())
            .resizable()
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(urlString: "https:/www.themealdb.com/images/media/meals/adxcbq1619787919.jpg")
    }
}
