# Ukulele Wednesdays - API
![](http://forthebadge.com/images/badges/made-with-ruby.svg)

An API for all your ukulele-chart-in-json needs!

## Installation
- clone down repo
    + SSH: `git clone git@github.com:Gingertonic/wednesdays-api.git`
    + HTTPS: `git clone https://github.com/Gingertonic/wednesdays-api.git`
- `cd wednesdays-api`
- `bundle install`

## Database setup
- `rails db:migrate`
- `rails db:seed`

## Start server on port 3001
- `rails s -p 3001` 

## Console
- `rails c`

## Access 
    + `http://localhost:3001/<endpoint>`
    + interactive frontend: see [Wednesdays React Client](https://github.com/Gingertonic/wednesdays-frontend "Wednesdays React Client")

## Endpoints
### get essential data for all songs
- `GET` `/songs`
- responds with array of song objects containing song id, title, artist and 'favourited' status as:
```
[
    {
        id: 1,
        title: "A Little Respect",
        writers: "Erasure",
        favourite: true,
        fullText:"<song in plain text>",
        created_at: "2019-12-05T05:44:36.137Z",
        updated_at: "2019-12-05T05:44:36.137Z"
    },
    {
        id: 2,
        title: "Accidentally in Love",
        writers: "Counting Crows",
        favourite: false,
        fullText:"<song in plain text>",
        created_at: "2019-12-05T05:44:36.137Z",
        updated_at: "2019-12-05T05:44:36.137Z"
    }
]
```
- `fullText`, `created_at` and `updated_at` to be removed from response in future update

### get song chart 
- `GET` `/songs/:songId`
- responds with complete song data as:
```
{
    id: 4, 
    "data":{
        "title":"Blue Moon",
        "writers":"Rogers and Hart"},
        "structure":["intro","verseOne","verseTwo","chorus","verseThree","chorus"],
        "sections":{
            "intro":[
                [{"type":"chord","body":"C"},{"type":"chord","body":"Am"},{"type":"chord","body":"F"}],
                [{"type":"chord","body":"C"},{"type":"chord","body":"Am"},{"type":"chord","body":"F"}]
            ],
            "verseOne":[
                [{},{}],[{},{}],[{},{}]
            ],
            "chorus":[
                [{},{}],[{},{}]
            ],
        }
    }
```

### update song
- `PATCH` `/songs/:songId`
- updates song in database
- responds with updated song in complete form (see `get songs/:songId`)

## Contribution
Always appreciated!