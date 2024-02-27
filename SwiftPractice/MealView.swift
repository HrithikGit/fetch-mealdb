//
//  MealView.swift
//  SwiftPractice
//
//  Created by Hrithik on 2/20/24.
//

import Foundation

import SwiftUI

//Single List Item View for a Meal

struct MealView: View {
    let meal: Meal

    var body: some View {
      NavigationLink(destination: MealDetailView( meal : meal)) {
        HStack { 
        
           // For ios 15+ we can directly use AsyncImage function
            
//      AsyncImage(url: URL(string: meal.mealImage)) { image in
//                        image.resizable()
//                   } placeholder: {
//                     ProgressView()
//                   }
           
            
        ImageView(urlString: meal.strMealThumb).frame(width : 80, height : 80)
          Text(meal.strMeal)
            .font(.headline)
            .lineLimit(1)
          Spacer()
        }
        .padding(.vertical, 8)
      }
    }
  }

struct PlaylistView_Previews: PreviewProvider {
    static var previews: some View {
        MealView(meal : Meal(idMeal : "123", strMeal: "Chill Hits", strMealThumb: "https:/www.themealdb.com/images/media/meals/adxcbq1619787919.jpg" ))
    }
}
