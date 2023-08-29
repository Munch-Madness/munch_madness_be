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

Success Response (200 OK):

- Status: 200 OK
- Description: Successful response with a specific place's name and photo based on a users input query.
- Data Format: A data hash, with keys "id", "type" and "attributes".
```json
{
  "data": {
    "id": "null",
    "type": "place",
    "attributes": {
      "name": "Crown Burgers",
      "photo": "https://lh3.googleusercontent.com/places/ANJU3DuludbQiMipPRqm_ojX_TZOR1PRa16-JS7ejKS63U8_zBvKrW01iTI5Nh0Zor3wUq1Twn5ix-GnEPaaCYYVeCA-Ha-Q0Q4QzBk=s1600-w400"
    }
  }
}

Error Response (404 Not Found):

- Description: The requested user was not found.
- Data Format: Error message for human.
- Status: 404 Not Found

{
  "error":
  {
    "code": "not_found",
    "message": "no restaurants located with search query"
  }
}


## GETting random restaurants for a given zipcode

`GET /api/v1/places`

Success Response (200 OK):

- Status: 200 OK
- Description: Successful response with 20 random restaurant names and photos based on a users input query (zipcode).
- Data Format: An array of hashes, each hash with keys "id", "type" and "attributes".
```json
{
"data": [
{
"id": "null",
"type": "place",
"attributes": {
"name": "Root Down",
"photo": "https://lh3.googleusercontent.com/places/ANJU3Dt7XwFYOeLxyUjW2TTVDWkW33xSbmgpPVYpaHajck-20MRb6AFoESJMbzRaOBla9VNU3j5jAAGqirr8pnXVtEsfr0M9CYKkpfk=s1600-w400"
}
},
{
"id": "null",
"type": "place",
"attributes": {
"name": "Highland Tap and Burger",
"photo": "https://lh3.googleusercontent.com/places/ANJU3DtWumq9s6g4z7TMDqI43RtATpYXbKPEQd4aP6yaTsPe8xl6Xu4VD2e5vjovqnl50tOrPlM2vj9ZBqG0nuXCnPdjIakVZ9Nh0C0=s1600-w400"
}
},
{
"id": "null",
"type": "place",
"attributes": {
"name": "Linger",
"photo": "https://lh3.googleusercontent.com/places/ANJU3DtAdfhLj_0Lue_aakfFZm3HyrOTqPJx6Afot8WM_m49PSJWuwaOhopVHdyQr3AMfkOV5ufzE4-rg_B9oLLUeI1fgOv8RIOCNKY=s1600-w400"
}
},
{
"id": "null",
"type": "place",
"attributes": {
"name": "Downtown Aquarium",
"photo": "https://lh3.googleusercontent.com/places/ANJU3DtzgutjRLGY8rWBWH8xlwyCe53w4LSbPRAazU9erC8EdH7L8XhG4k75jJfwAR_kOi_eu8CtE7EZGF0WVrUpNzYhwUvwAzGKiGA=s1600-w400"
}
},
{
"id": "null",
"type": "place",
"attributes": {
"name": "Casa Bonita",
"photo": "https://lh3.googleusercontent.com/places/ANJU3DuLptXJXECmkHS4C-3yoYfifWw6eRMD0MvTrRGuQPgGLKDuc03TKkV_qLtpo4VHFpPdECDUOZgP-g1tqKxNa01woaoG4J7NkJU=s1600-w400"
}
},
{
"id": "null",
"type": "place",
"attributes": {
"name": "Sushi Sasa",
"photo": "https://lh3.googleusercontent.com/places/ANJU3Dt_aCdCYlU3aj-oBtjy1iZbxLuiaBf483_GVwdiz5aAKL5gZVNC9CIZiOH6FoI2P0STsUr-rjD0oN8qPSz679VYZVoexM1d2IU=s1600-w400"
}
},
{
"id": "null",
"type": "place",
"attributes": {
"name": "Forest Room 5",
"photo": "https://lh3.googleusercontent.com/places/ANJU3DuzzTX3L73dYKHJwBbkoVa2qMKyKTfjkBixCh4-XH3C4iWfD7_LGuXsEzfObI0SyMRFWBAbIpjwbGqTHKSXiPusxQwzOyG6Fqs=s1600-w400"
}
},
{
"id": "null",
"type": "place",
"attributes": {
"name": "Hops & Pie",
"photo": "https://lh3.googleusercontent.com/places/ANJU3Dvhe5RoMGRQeG49TsqER-RH35FVa6nlFuEFeH-96ticSPJ5zq6ME7wobzzn6AQue-xjTgvZ3II96JPyqPm_IiHWypmMQ9qPjLI=s1600-w400"
}
},
{
"id": "null",
"type": "place",
"attributes": {
"name": "Texas Roadhouse",
"photo": "https://lh3.googleusercontent.com/places/ANJU3DsTT_IuSMYef-LqONaWNu6WgT6dwL-kWcnDQAcSoMgD7oNmz766dzN9SsWUNZiixqWI5Zp67amD7vCpv50CBuwAOeHD7NYyg70=s1600-w400"
}
},
{
"id": "null",
"type": "place",
"attributes": {
"name": "Williams & Graham",
"photo": "https://lh3.googleusercontent.com/places/ANJU3DtGn3w4hdOzJlWj3ElV9FrBW4jXqYU9BYxIuAOLsYaWpC-CgnTZXJ78do0ZmLfbSo9Q5KVl8Ync77ibCzqAYXWEvUNvi3wG3g=s1600-w400"
}
},
{
"id": "null",
"type": "place",
"attributes": {
"name": "Highland Tavern",
"photo": "https://lh3.googleusercontent.com/places/ANJU3DtTEc1aP1yY77hkh0Gy49nPfwXO1L01MJoxPndpyf0PssOptbqf-oEQd4PTNLtAyYAgqbmSMUNjKlWumDSW8bDvWJn3O9BISY8=s1600-w400"
}
},
{
"id": "null",
"type": "place",
"attributes": {
"name": "duo Restaurant",
"photo": "https://lh3.googleusercontent.com/places/ANJU3Du0SrzEhhIF5KhyZn9wQplmHbFKZNRnjUV2WeuGOAsjkubQ_EweCBn5orL7IdRYOUa8G5f96zHnbdVl4I0JHWW3GSHMGekK1YY=s1600-w400"
}
},
{
"id": "null",
"type": "place",
"attributes": {
"name": "Tocabe, An American Indian Eatery",
"photo": "https://lh3.googleusercontent.com/places/ANJU3DtXlDd-VgIehcRTfwiYskQKrUMH8iaoLwNAi30H8ds3qn86TOjfCbLPOdz6L8KjyjPbbiRy6qy_U24MSwYOUtwLhwhwpwIiwow=s1600-w400"
}
},
{
"id": "null",
"type": "place",
"attributes": {
"name": "Subway",
"photo": "https://lh3.googleusercontent.com/places/ANJU3DtQpeKMvpuu8b9as1cjrM4j1-KusGdXuwHAfCEageE3IzePwaSG9eaDPOYPgcU7Jv65fT9mVcz6mk8sD1lYYzL_2sQCpXrjfbY=s1600-w400"
}
},
{
"id": "null",
"type": "place",
"attributes": {
"name": "PARISI pizzeria, trattoria e vino",
"photo": "https://lh3.googleusercontent.com/places/ANJU3DuHlBZPchKIT4oZSGxOR0Ci88n0FEs5qmKc4xRwt4h6POvo4miz2iI9lO78ewuqjnSNiN7nb7OMimqNNV6DICv_OOeGFxwz66Y=s1600-w400"
}
},
{
"id": "null",
"type": "place",
"attributes": {
"name": "Yak and Yeti Restaurant and Brewpub",
"photo": "https://lh3.googleusercontent.com/places/ANJU3DvcZRUcKh3FSbtbxia3jM5Z6zr4gqxqLMqxUx64pDEeRHrggPO-ufjIs7nrDS7S1PemLEgrt8PlIWm3ZPoUGxGAomYdq4Rpwg=s1600-w400"
}
},
{
"id": "null",
"type": "place",
"attributes": {
"name": "Cafe Brazil",
"photo": "https://lh3.googleusercontent.com/places/ANJU3DsiMcAVXIfuawR73YdbANrL-jo43Z9U9YEPSk1_kMhG8fb8wm6I0Udy0XiwZaHSMNqhvTRwTeNmvgZcLG4ZD30AIfXA2RPmomQ=s1600-w400"
}
},
{
"id": "null",
"type": "place",
"attributes": {
"name": "Little Caesars Pizza",
"photo": "https://lh3.googleusercontent.com/places/ANJU3DsVoUP8EaZWsGuGwV2V807U543vyYHSPB8QPV8c_X03PKaF-jW20HxZ_JILMwwoESdNw7b95JWRlKzRjZX_DX-kY6l2Yc9oMEg=s1600-w400"
}
},
{
"id": "null",
"type": "place",
"attributes": {
"name": "Sunrise Sunset",
"photo": "https://lh3.googleusercontent.com/places/ANJU3DvOvz3JqTd3xd0QxT0TnPTqlFPDZGfmqSnmuv2YZsT_5OkVxx6t2q8-u5w1MTmLKWCp_mtqe-9Pvo2v3LcOQB5UICnGoXSpwaQ=s1600-w400"
}
},
{
"id": "null",
"type": "place",
"attributes": {
"name": "Trattoria Stella",
"photo": "https://lh3.googleusercontent.com/places/ANJU3Ds1pLIswGbAAqArWO_B1SrvnjTlwARlr-5LGrqXB0LLWXfc2iamCl047WocgzToxEWQ2uR3f0o8-VbOAY7CYDK0F08t-P4WveM=s1600-w400"
}
}
]
}
