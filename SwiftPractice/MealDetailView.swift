//
//  File.swift
//  SwiftPractice
//
//  Created by Hrithik on 2/20/24.
//

import Foundation
import SwiftUI


//Detail View of Meal, consisting of all the data

struct MealDetailView: View {
    let meal : Meal
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
            GeometryReader { proxy in
                ScrollView{
                    ZStack {
                        VStack {
                            ImageView( urlString : meal.strMealThumb)
                                .aspectRatio(contentMode: .fill)
                                .frame(maxWidth: .infinity, maxHeight: proxy.size.width)
                                .cornerRadius(10)
                                .padding()
                            Text(meal.strMeal)
                                .font(.largeTitle)
                                .padding(.bottom, 10)
                            HStack{
                                Text("Ingredients :").font(.title2)
                                Spacer()
                            }.padding(10)
                            VStack{
                                ForEach(viewModel.mealMeasures, id: \.self) { measure in
                                    HStack{
                                        Text(measure)
                                        Spacer()
                                    }
                                }
                            }.padding()
                            
                            HStack{
                                Text("Instructions :").font(.title2)
                                Spacer()
                            }.padding(10)
                            Text(viewModel.mealDetail?.strInstructions ?? "").padding()
                            
                            
                            Spacer()
                        }
                        VStack {
                            Spacer()
                            
                        }
                    }
                    .navigationTitle(meal.strMeal)
                    .edgesIgnoringSafeArea(.bottom)
                }
            }
            // Fetching the data of the meal, on page load
            .onAppear(){
                viewModel.fetchMeal( id : meal.idMeal)
            }
    }
}

struct PlaylistDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MealDetailView(meal : Meal( idMeal: "123", strMeal: "Chill Hits", strMealThumb:"https:/www.themealdb.com/images/media/meals/adxcbq1619787919.jpg" ))
    }
}
