# Munch Madness BE Repo


<a id="readme-top"></a>

<!-- PROJECT SHIELDS -->
<img src="munch-madness-logo-ko.png" alt="Logo" width="400" height="200" margin="0">

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]


<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://munch-madness-be-8b56c3719f5f.herokuapp.com/">
  </a>

<h3 align="center">Munch Madness</h3>

  <p align="center">
    Welcome to the back end repository for Munch Madness!
    Munch Madness is a web application built for the Turing School of Software and Design's Mod 4 Captsone project. Read more about project requirements: https://mod4.turing.edu/projects/capstone/
  </p>
</div>

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#description-of-this-app">Description of this App</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li><a href="#Project Contributor Contact Info">Project Contributor Contact Info</a></li>
    <li>
      <a href="#getting-started">Getting Started</a>
        <li><a href="#prerequisites">Prerequisites</a></li>
    </li>
    <li><a href="#testing">Testing</a></li>
    <li><a href="#api-json-contract">API JSON Contract</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#license">License</a></li>
  </ol>
</details>


## Description of this App

Munch Madness stands out from other apps by combining the enjoyment of NCAA March Madness tournament brackets with the purpose of selecting a restaurant to eat at.

Munch Madness gamifies the process of deciding where to eat or order takeout. Using a tournament-style bracket (1 vs 16, 2 vs 15, 3 vs 14, all the way 8v9 etc.) users can select up to 16 restaurants(based on location) and vote on a winner of each restaurant matchup. The winning restaurant advances to the next round until a final champion is crowned. With the ability to invite friends and engage in friendly competitions, Munch Madness takes the hassle out of choosing where to eat and transforms it into a fun and social experience. <b>This app helps people create their own culinary Cinderella Story!</b>
<br><br>

Our Production Site is available [here](https://munch-madness-fe-8b56c3719f5f.herokuapp.com/)    #need to fix this URL later

Github repositories:
* Front End: [![Github][Github]][project-fe-gh-url]
* Back End:  [![Github][Github]][project-be-gh-url]


<!-- <p align="right">(<a href="#readme-top">back to top</a>)</p> -->

### Built With

* [![Ruby][Ruby]][Ruby-url]
* [![Rails][Rails]][Rails-url]
* [![Postgres][Postgres]][Postgres-url]
* [![Heroku][Heroku]][Heroku-url]
* [![CircleCI][CircleCI]][CircleCI-url]
* ![Postman](https://img.shields.io/badge/Postman-FF6C37?style=for-the-badge&logo=postman&logoColor=white)
* [![Tailwind][Tailwind]][Tailwind-url]
* [![ReactJs][ReactJs]][ReactJs-url]
* [![TS][TS]][TS-url]
* ![Github Pages](https://img.shields.io/badge/github%20pages-121013?style=for-the-badge&logo=github&logoColor=white)
* ![Vercel](https://img.shields.io/badge/vercel-%23000000.svg?style=for-the-badge&logo=vercel&logoColor=white)


Munch Madness uses these integrations:
* [Google Places API](https://developers.google.com/maps/documentation/places/web-service/overview)
* [Google Geocoding API](https://developers.google.com/maps/documentation/geocoding/overview)




<!-- [FE repo](https://github.com/Munch-Madness/munch_madness_fe) <br>
[DB schema](https://dbdesigner.page.link/UGcXsAniT1vJ812M6) <br>
[Wireframes](https://excalidraw.com/#room=0a8c57ccd8f323dba626,Nt3xSlQIHFl0G-KbKim0QA) <br>
[Wireframes](https://www.canva.com/design/DAFsSBRgGTE/gNAdr2pdnqz-cZFXEYKXsw/edit)  -->


## Project Contributor Contact Info
* Lauren Golden: [![Linkedin][Linkedin-shield]][lauren-li-url] [![Github][Github]][lauren-gh-url]
* Andy Weissman [![Linkedin][Linkedin-shield]][andy-li-url] [![Github][Github]][andy-gh-url]
* Jeff Redish:   [![Linkedin][Linkedin-shield]][jeff-li-url] [![Github][Github]][jeff-gh-url]
* Andy Stilmock [![Linkedin][Linkedin-shield]][stilmock-li-url] [![Github][Github]][stilmock-gh-url]
* Seth Burns [![Linkedin][Linkedin-shield]][seth-li-url] [![Github][Github]][seth-gh-url]
* Isaiah Richardson [![Linkedin][Linkedin-shield]][isaiah-li-url] [![Github][Github]][isaiah-gh-url]
* Race Osuna [![Linkedin][Linkedin-shield]][race-li-url] [![Github][Github]][race-gh-url]


## Getting Started

  <h3> How to install the project?</h3>

- Fork and clone this repo
- Run `bundle install`
- Run `rails db:{create,migrate,seed}`
- User will need to sign up for a Places API key and create account [here](https://developers.google.com/maps/documentation/places/web-service/overview)
- Use `bundle exec rspec` to run the test suite
### Prerequisites

* ruby 3.2.2
* Rails Version 7.0.6


<!-- Testing -->
## Testing

`bundle exec rspec` will run the entire test suite. *All tests passing at time of writing.*


---
[Back to Top](#readme-top)


# API JSON Contract

Description of API endpoints for front end application

### GETting a place via query parameter

`GET /api/v1/places/search`

postman request url:  http://localhost:3000/api/v1/places/search?query={restaurant} <br>
(while running rails s in terminal)<br>
heroku request url: https://munch-madness-be-8b56c3719f5f.herokuapp.com/api/v1/places/search?query={restaurant} <br>

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

- Description: The requested place was not found.
- Data Format: Error message for human.
- Status: 404 Not Found
```
no restaurants located with search query

```
### GETting a list of 20 places based on zipcode

`GET /api/v1/places/`
<br>postman url request: http://localhost:3000/api/v1/places/?query={zipcode}&search=random
<br>
(while running rails s in terminal)<br>
heroku request url: https://munch-madness-be-8b56c3719f5f.herokuapp.com/api/v1/places/?query={zipcode}&search=random <br>


Success Response (200 OK):

- Status: 200 OK
- Description: Successful response with list of place objects based on a user input zipcode query.
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

Error Response (404 Not Found):

- Description: The requested location was not found.
- Data Format: Error message for human.
- Status: 404 Not Found
```
location could not be found
```

<!-- Roadmap -->
## Roadmap
Additional features, functionality, and potential refactors:
  * Add the ability to create a link to share with friends so people can vote on their own phones
  * Letting user's save brackets 
  * Adding more fields for restaurant information, seeding logic
  * Voting feature so multiple can vote on each matchup for a created bracket



<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE.txt` for more information.



<img src="munch-madness-logo-k.png" alt="Logo" width="400" height="200" margin="0">

[Back to Top](#readme-top)

<!-- CONTACT -->

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/Munch-Madness/munch_madness_be.svg?style=for-the-badge
[contributors-url]: https://github.com/Munch-Madness/munch_madness_be/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/Munch-Madness/munch_madness_be.svg?style=for-the-badge
[forks-url]: https://github.com/Munch-Madness/munch_madness_be/network/members
[stars-shield]: https://img.shields.io/github/stars/Munch-Madness/munch_madness_be.svg?style=for-the-badge
[stars-url]: https://github.com/Munch-Madness/munch_madness_be/stargazers
[issues-shield]: https://img.shields.io/github/issues/Munch-Madness/munch_madness_be.svg?style=for-the-badge
[issues-url]: https://github.com/Munch-Madness/munch_madness_be/issues
[license-shield]: https://img.shields.io/github/license/Munch-Madness/munch_madness_be.svg?style=for-the-badge
[license-url]: https://github.com/Munch-Madness/munch_madness_be/blob/main/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white
[lauren-li-url]: https://www.linkedin.com/in/goldenll/
[jeff-li-url]: https://www.linkedin.com/in/jredish/
[stilmock-li-url]: https://www.linkedin.com/in/andrew-stilmock-9ba598270/
[andy-li-url]: https://www.linkedin.com/in/andy-weissman/
[seth-li-url]: https://www.linkedin.com/in/seth-burns-aa339bba/
[isaiah-li-url]: https://www.linkedin.com/in/
[race-li-url]: https://www.linkedin.com/in/raceosuna/
[Github]: https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white
[project-fe-gh-url]: https://github.com/Munch-Madness/munch_madness_fe
[project-be-gh-url]: https://github.com/Munch-Madness/munch_madness_be
[jeff-gh-url]: https://github.com/Jredish11
[lauren-gh-url]: https://github.com/goldenll
[andy-gh-url]: https://github.com/andyweissman6
[stilmock-gh-url]: https://github.com/AStilmock
[seth-gh-url]: https://github.com/SethBurns
[isaiah-gh-url]: https://github.com/CapCinematic
[race-gh-url]: https://github.com/RaceOsuna
[Ruby]: https://img.shields.io/badge/Ruby-CC342D?style=for-the-badge&logo=ruby&logoColor=white
[Ruby-url]: https://www.ruby-lang.org/en/
[Tailwind]: https://img.shields.io/badge/Tailwind-191970?style=for-the-badge&logo=tailwindcss&logoColor=white
[Tailwind-url]: https://tailwindcss.com/
[Rails]: https://img.shields.io/badge/Ruby_on_Rails-CC0000?style=for-the-badge&logo=ruby-on-rails&logoColor=white
[Rails-url]: https://rubyonrails.org/
[Postgres]: https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white
[Postgres-url]: https://www.postgresql.org/
[Heroku]: https://img.shields.io/badge/Heroku-430098?style=for-the-badge&logo=heroku&logoColor=white
[Heroku-url]: https://devcenter.heroku.com/articles/getting-started-with-rails7
[CircleCI]: https://img.shields.io/badge/circleci-343434?style=for-the-badge&logo=circleci&logoColor=white
[CircleCI-url]: https://circleci.com/
[ReactJs]: https://img.shields.io/badge/-ReactJs-61DAFB?logo=react&logoColor=white&style=for-the-badge
[ReactJs-url]: https://react.dev/
[TS]: https://shields.io/badge/TypeScript-3178C6?logo=TypeScript&logoColor=FFF&style=flat-square
[TS-url]: https://www.typescriptlang.org/
