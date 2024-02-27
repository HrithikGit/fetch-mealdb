# Fetch - iOS Coding Challenge

## Description

This native iOS app allows users to browse recipes using the [MealDB API](https://themealdb.com/api.php). The app utilizes two endpoints:

1. **List of Meals in Dessert Category:**
   - Endpoint: `https://themealdb.com/api/json/v1/1/filter.php?c=Dessert`
   - Fetches the list of meals in the Dessert category, sorted alphabetically.

2. **Meal Details by ID:**
   - Endpoint: `https://themealdb.com/api/json/v1/1/lookup.php?i=MEAL_ID`
   - Fetches the meal details based on its ID.

When the user launches the app, they are shown a list of desserts. Upon selecting a specific dessert, they are taken to a detail view that includes the meal name, instructions, and a list of ingredients with their measurements.

## Features

- Browse desserts in alphabetical order.
- View detailed information for each selected dessert.
- Fetch data from MealDB API using native iOS networking.

## Installation

1. Clone the repository.
2. Open the project in Xcode.
3. Build and run the app on a simulator or physical device.
4. The app is build on Xcode version 15.2 and app is deployed and tested on latest iOS version - 17.2

## Usage

1. Launch the app.
2. Explore the list of desserts.
3. Select a dessert to view detailed information.
4. Check the meal name, instructions, and ingredient measurements.


## Contributing

Feel free to contribute to the project by submitting bug reports, feature requests, or code contributions.


## Contact

For any inquiries, feedback, or support, please contact:
- Email: mandhahrithik@gmail.com
- GitHub: [HrithikGit](https://github.com/HrithikGit)

## Acknowledgments

- This app is developed as a coding challenge for an iOS position.
- Thanks to the [MealDB API](https://themealdb.com/api.php) for providing recipe data.
