# Munch Madness 

## Description of this App

Munch Madness stands out from other apps by combining the enjoyment of NCAA March Madness tournament brackets with the purpose of selecting a restaurant to eat at.

Munch Madness gamifies the process of deciding where to eat or order takeout. Using a tournament-style bracket (1 vs 16, 2 vs 15, 3 vs 14, all the way 8v9 etc.) users can select up to 16 restaurants(based on location) and vote on a winner of each restaurant matchup. The winning restaurant advances to the next round until a final champion is crowned. With the ability to invite friends and engage in friendly competitions, Munch Madness takes the hassle out of choosing where to eat and transforms it into a fun and social experience. <b>This app helps people create their own culinary Cinderella Story!</b>
<br><br>


[FE repo](https://github.com/Munch-Madness/munch_madness_fe) <br>
[DB schema](https://dbdesigner.page.link/UGcXsAniT1vJ812M6) <br>
[Wireframes](https://excalidraw.com/#room=0a8c57ccd8f323dba626,Nt3xSlQIHFl0G-KbKim0QA) <br>
[Wireframes](https://www.canva.com/design/DAFsSBRgGTE/gNAdr2pdnqz-cZFXEYKXsw/edit) 

<h2> Team </h2>

 - Andy Stillmock, BE: [GitHub](https://github.com/AStilmock) | [LinkedIn](https://www.linkedin.com/in/andrew-stilmock-9ba598270/) <br>
 - Andy Weissman, BE: [GitHub](https://github.com/andyweissman6) | [LinkedIn](https://www.linkedin.com/in/andy-weissman/)<br>
 - Isaiah Richardson, FE: [GitHub](https://github.com/CapCinematic) | [LinkedIn](https://www.linkedin.com/in/isaiah-cap-richardson/)<br>
 - Jeffrey Redish, BE: [GitHub](https://github.com/Jredish11) | [LinkedIn](https://www.linkedin.com/in/jredish/)<br>
 - Lauren Golden, BE: [GitHub](https://github.com/goldenll) | [LinkedIn](https://www.linkedin.com/in/goldenll/)<br>
 - Race Osuna, FE: [GitHub](https://github.com/RaceOsuna) | [LinkedIn](https://www.linkedin.com/in/raceosuna/)<br>
 - Seth Burns, FE: [GitHub](https://github.com/SethBurns) | [LinkedIn](https://www.linkedin.com/in/seth-burns-aa339bba/)

 ---

  <h3> How to install the project?</h3>

- Fork and clone this repo
- Run `bundle install`
- Run `rails db:{create,migrate,seed}`
- User will need to sign up for a Places API key and create account [here](https://developers.google.com/maps/documentation/places/web-service/overview)
- Use `bundle exec rspec` to run the test suite

---

# API JSON CONTRACT

Description of API endpoints for front end application

## GETting a place via query parameter

`GET /api/v1/places/search`

postman request url:  http://localhost:3000/api/v1/places/search?query={restaurant}

Success Response (200 OK):

- Status: 200 OK
- Description: Successful response with a specific place's name and photo based on a users input query.
- Data Format: A data array, with keys "id", "type" and "attributes".
```json
{
  "data": {
    "id": "null",
    "type": "place",
    "attributes": {
      "name": "Crown Burgers",
      "photo": "https://images.app.goo.gl/brHvUtTzH2wBfBq77",
      "price": 2, 
      "rating": 4.9
    }
  }
}
```

Error Response (404 Not Found):

- Description: The requested user was not found.
- Data Format: Error message for human.
- Status: 404 Not Found
```
no restaurants located with search query

```
## GETting a list of 20 places based on zipcode

`GET /api/v1/places/`
postman url request: http://localhost:3000/api/v1/places/?query={zipcode}&search=random

Success Response (200 OK):

- Status: 200 OK
- Description: Successful response with list of place object based on a users input zipcode query.
- Data Format: A data array, with keys "id", "type" and "attributes".
```json
{
    "data": [
        {
            "id": "null",
            "type": "place",
            "attributes": {
                "name": "Casa Bonita",
                "photo": "https://lh3.googleusercontent.com/places/ANJU3DtrdH49oLIRYy0lNaYPvYK3J1UIy8d4Efhsc5yRUPQikZHHqCVWiAwmxzPiIIgiwmDyeSAJEWzBXsd26iwsHBncCdiiT9D-aZU=s1600-w400",
                "price": 2, 
                "rating": 3.5
            }
        },
        {
            "id": "null",
            "type": "place",
            "attributes": {
                "name": "Strange Craft Beer Company",
                "photo": "https://lh3.googleusercontent.com/places/ANJU3Dtgj7bj3zxEjB1tkkh26Ay-w9kav5J6vEeoP6vaVW2dJMc51o6If9yl5PzOhfHaOFvdGok3uTOz7AucKNqnj_2g00uoADtRYGM=s1600-w400",
                "price": 1, 
                "rating": 4.8
            }
        },
        {
            "id": "null",
            "type": "place",
            "attributes": {
                "name": "El Tapatio Mexican Restaurant",
                "photo": "https://lh3.googleusercontent.com/places/ANJU3DsAjWEedU0nZS2WamUtAxrZ8ULozGUPidDJvesUbabdPnHcQizivbLjD3RTc3IXWNVBwrI5nqwi77-7N-xPswx6V5oR6wnkymg=s1600-w400",
                "price": 1, 
                "rating": 4.6
            }
        },
        {
            "id": "null",
            "type": "place",
            "attributes": {
                "name": "Olive Garden Italian Restaurant",
                "photo": "https://lh3.googleusercontent.com/places/ANJU3DtatEfy9h7LCUS-s90hqmZHQ2V5ovmJqR8BwQvvPHZ4z1TMZY9Kg8ZI7C8AigAgoj4NY4dsBpg81U9YND63yYr4SUHYipfImKA=s1600-w400",
                "price": 2, 
                "rating": 4.1
            }
        }
    ]
}
```