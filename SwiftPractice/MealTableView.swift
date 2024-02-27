//
//  MealTableView.swift
//  SwiftPractice
//
//  Created by Hrithik on 2/20/24.
//

import Foundation

import SwiftUI

class ViewModel: ObservableObject{
    
    var mealMeasures : [String] = []
    
    @Published var meals : [Meal] = []
    
    @Published var mealDetail : Meal? = nil
    
    //Function to get Meal detail by its ID
    
    func fetchMeal(id: String) {
        guard let url = URL(string: "https://themealdb.com/api/json/v1/1/lookup.php?i=" + id) else {
            return
        }

        do {
            let data = try Data(contentsOf: url)
            guard let response = try? JSONDecoder().decode(MealsResponse.self, from: data) else {
                return
            }

            DispatchQueue.main.async {
                self.mealDetail = response.meals[0]
                
                //Unwrapping the response to combine ingredients and its measures into one string, for easy access
                
                if let unwrappedMeal = self.mealDetail {
                        let mirror = Mirror(reflecting: unwrappedMeal)
                        for i in 1...20 {
                            let ingredient = "strIngredient\(i)"
                            let measure = "strMeasure\(i)"
                            
                            var ingredientMeasure = ""
                            
                            let foundIngredient = false
                            let foundMeasure = false

                            for (label, value) in mirror.children {
                                if label == ingredient, let val = value as? String {
                                    //Handling Nill Values, Nil values are by deafult as empty string - Optional value or we get an empty string from the API Resposne
                                    var value = val
                                     if val == " "{
                                         value = ""
                                     }
                                    if ( ingredientMeasure.count == 0){
                                        ingredientMeasure = value+" : "
                                    }
                                    else{
                                        ingredientMeasure = value+" : "+ingredientMeasure
                                    }
                                }
                                if label == measure, let val = value as? String{
                                   var value = val
                                    if val == " "{
                                        value = ""
                                    }
                                    ingredientMeasure = ingredientMeasure+value
                                }
                                if foundIngredient && foundMeasure {
                                    break
                                }
                            }
                            //If there is an ingredient with nil data, we consider it as an end of list for ingredients
                            if ingredientMeasure == " :  " || ingredientMeasure == " : "
                             {
                                break
                            }
                            self.mealMeasures.append(ingredientMeasure)
                        }
                    print(self.mealMeasures)
                    }
            }
        } catch {
            print(error)
        }
    }
    
    //Async call to fetch the data of Meals in Dessert Category
    func fetch(){
        guard let url = URL(string : "https://themealdb.com/api/json/v1/1/filter.php?c=Dessert")
        else{
            return
        }
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _ , error in
            guard let data=data , error==nil else{
                return
            }
            
            do{
                //Parsing response returned by URLSession
                let response = try JSONDecoder().decode(MealsResponse.self, from:data)
                DispatchQueue.main.async {
                    self?.meals = response.meals
                }
            }
            catch{
                print(error)
            }
        }
        task.resume()
    }
}

struct MealTableView: View {
    
    @StateObject var viewModel = ViewModel()

    var body: some View {
      List {
          ForEach(viewModel.meals, id: \.self) { meal in
          MealView( meal : meal)
        }
        .onMove { indices, newOffset in
            viewModel.meals.move(fromOffsets: indices, toOffset: newOffset)
        }
      }
      .navigationTitle("Desserts")
      .navigationBarItems(trailing: EditButton())
        // Fetching Data on Appear
      .onAppear(){
          viewModel.fetch()
      }
    }
  }

struct MealTableView_Previews: PreviewProvider {
    static var previews: some View {
        MealTableView()
    }
}
