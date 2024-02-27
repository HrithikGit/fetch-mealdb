//
//  RecipeModel.swift
//  SwiftPractice
//
//  Created by Hrithik on 2/20/24.
//

import Foundation

struct MealsResponse: Codable {
    let meals: [ Meal ]
}

struct Meal: Hashable, Codable {
    
    let idMeal: String
    let strMeal: String
    let strCategory: String?
    let strArea: String?
    let strInstructions: String?
    let strMealThumb: String
    let strTags: String?
    let strYoutube: String?
    let strIngredient1: String?
    let strIngredient2: String?
    let strIngredient3: String?
    let strIngredient4: String?
    let strIngredient5: String?
    let strIngredient6: String?
    let strIngredient7: String?
    let strIngredient8: String?
    let strIngredient9: String?
    let strIngredient10: String?
    let strIngredient11: String?
    let strIngredient12: String?
    let strIngredient13: String?
    let strIngredient14: String?
    let strIngredient15: String?
    let strIngredient16: String?
    let strIngredient17: String?
    let strIngredient18: String?
    let strIngredient19: String?
    let strIngredient20: String?
    let strMeasure1: String?
    let strMeasure2: String?
    let strMeasure3: String?
    let strMeasure4: String?
    let strMeasure5: String?
    let strMeasure6: String?
    let strMeasure7: String?
    let strMeasure8: String?
    let strMeasure9: String?
    let strMeasure10: String?
    let strMeasure11: String?
    let strMeasure12: String?
    let strMeasure13: String?
    let strMeasure14: String?
    let strMeasure15: String?
    let strMeasure16: String?
    let strMeasure17: String?
    let strMeasure18: String?
    let strMeasure19: String?
    let strMeasure20: String?
    let strSource: String?
    
    init(idMeal: String, strMeal: String, strMealThumb: String) {
            self.idMeal = idMeal
            self.strMeal = strMeal
            self.strMealThumb = strMealThumb
            self.strCategory = nil
            self.strArea = nil
            self.strInstructions = nil
            self.strTags = nil
            self.strYoutube = nil
            self.strIngredient1 = nil
            self.strIngredient2 = nil
            self.strIngredient3 = nil
            self.strIngredient4 = nil
            self.strIngredient5 = nil
            self.strIngredient6 = nil
            self.strIngredient7 = nil
            self.strIngredient8 = nil
            self.strIngredient9 = nil
            self.strIngredient10 = nil
            self.strIngredient11 = nil
            self.strIngredient12 = nil
            self.strIngredient13 = nil
            self.strIngredient14 = nil
            self.strIngredient15 = nil
            self.strIngredient16 = nil
            self.strIngredient17 = nil
            self.strIngredient18 = nil
            self.strIngredient19 = nil
            self.strIngredient20 = nil
            self.strMeasure1 = nil
            self.strMeasure2 = nil
            self.strMeasure3 = nil
            self.strMeasure4 = nil
            self.strMeasure5 = nil
            self.strMeasure6 = nil
            self.strMeasure7 = nil
            self.strMeasure8 = nil
            self.strMeasure9 = nil
            self.strMeasure10 = nil
            self.strMeasure11 = nil
            self.strMeasure12 = nil
            self.strMeasure13 = nil
            self.strMeasure14 = nil
            self.strMeasure15 = nil
            self.strMeasure16 = nil
            self.strMeasure17 = nil
            self.strMeasure18 = nil
            self.strMeasure19 = nil
            self.strMeasure20 = nil
            self.strSource = nil
    }
}
