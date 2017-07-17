/*
 
 Name                   Height (inches)      Soccer Experience       Guardian Name(s)
 Joe Smith              42                   YES                     Jim and Jan Smith
 Jill Tanner            36                   YES                     Clara Tanner
 Bill Bon               43                   YES                     Sara and Jenny Bon
 Eva Gordon             45                   NO                      Wendy and Mike Gordon
 Matt Gill              40                   NO                      Charles and Sylvia Gill
 Kimmy Stein            41                   NO                      Bill and Hillary Stein
 Sammy Adams            45                   NO                      Jeff Adams
 Karl Saygan            42                   YES                     Heather Bledsoe
 Suzane Greenberg       44                   YES                     Henrietta Dumas
 Sal Dali               41                   NO                      Gala Dali
 Joe Kavalier           39                   NO                      Sam and Elaine Kavalier
 Ben Finkelstein        44                   NO                      Aaron and Jill Finkelstein
 Diego Soto             41                   YES                     Robin and Sarika Soto
 Chloe Alaska           47                   NO                      David and Jamie Alaska
 Arnold Willis          43                   NO                      Claire Willis
 Phillip Helm           44                   YES                     Thomas Helm and Eva Jones
 Les Clay               42                   YES                     Wynonna Brown
 Herschel Krustofski	45                   YES                     Hyman and Rachel Krustofski
 
 */

// Part 1: Store data for each player separately in dictionaries.

let firstPlayer: [String: Any] = [
    "Name": "Joe Smith",
    "Height": 42, "Experience": true,
    "Guardians": "Jim and Jan Smith"
]

let secondPlayer: [String: Any] = [
    "Name": "Jill Tanner",
    "Height": 36, "Experience": true,
    "Guardians": "Clara Tanner"
]

let thirdPlayer: [String: Any] = [
    "Name": "Bill Bon",
    "Height": 43,
    "Experience": true,
    "Guardians": "Sara and Jenny Bon"
]

let fourthPlayer: [String: Any] = [
    "Name": "Eva Gordon",
    "Height": 45,
    "Experience": false,
    "Guardians": "Wendy and Mike Gordon"
]

let fifthPlayer: [String: Any] = [
    "Name": "Matt Gill",
    "Height": 40,
    "Experience": false,
    "Guardians":
    "Charles and Sylvia Gill"
]

let sixthPlayer: [String: Any] = [
    "Name": "Kimmy Stein",
    "Height": 41,
    "Experience": false,
    "Guardians": "Bill and Hillary Stein"
]

let seventhPlayer: [String: Any] = [
    "Name": "Sammy Adams",
    "Height": 45,
    "Experience": false,
    "Guardians": "Jeff Adams"
]

let eighthPlayer: [String: Any] = [
    "Name": "Karl Saygan",
    "Height": 42,
    "Experience": true,
    "Guardians": "Heather Bledsoe"
]

let ninethPlayer: [String: Any] = [
    "Name": "Suzane Greenberg",
    "Height": 44,
    "Experience": true,
    "Guardians": "Henrietta Dumas"
]

let tenthPlayer: [String: Any] = [
    "Name": "Sal Dali",
    "Height": 41,
    "Experience": false,
    "Guardians": "Gala Dali"
]

let eleventhPlayer: [String: Any] = [
    "Name": "Joe Kavalier",
    "Height": 39,
    "Experience": false,
    "Guardians": "Sam and Elaine Kavalier"
]

let twelvethPlayer: [String: Any] = [
    "Name": "Ben Finkelstein",
    "Height": 44,
    "Experience": false,
    "Guardians": "Aaron and Jill Finkelstein"
]

let thirteenthPlayer: [String: Any] = [
    "Name": "Diego Soto",
    "Height": 41,
    "Experience": true,
    "Guardians": "Robin and Sarika Soto"
]

let fourteenthPlayer: [String: Any] = [
    "Name": "Chloe Alaska",
    "Height": 47,
    "Experience": false,
    "Guardians": "David and Jamie Alaska"
]

let fifteenthPlayer: [String: Any] = [
    "Name": "Arnold Willis",
    "Height": 43,
    "Experience": false,
    "Guardians": "Claire Willis"
]

let sixteenthPlayer: [String: Any] = [
    "Name": "Phillip Helm",
    "Height": 44,
    "Experience": true,
    "Guardians": "Thomas Helm and Eva Jones"
]

let seventeenthPlayer: [String: Any] = [
    "Name": "Les Clay",
    "Height": 42,
    "Experience": true,
    "Guardians": "Wynonna Brown"
]

let eighteenthPlayer: [String: Any] = [
    "Name": "Herschel Krustofski",
    "Height": 45,
    "Experience": true,
    "Guardians": "Hyman and Rachel Krustofski"
]

// Part 1: Combined all players info into one dictionary

let players = [firstPlayer, secondPlayer, thirdPlayer, fourthPlayer, fifthPlayer, sixthPlayer, seventhPlayer, eighthPlayer, ninethPlayer, tenthPlayer, eleventhPlayer, twelvethPlayer, thirteenthPlayer, fourteenthPlayer, fifteenthPlayer, sixteenthPlayer, seventeenthPlayer, eighteenthPlayer]


// Part 2: Adding empty dictionaries for each team.

var teamSharks = [[String:Any]]()
var teamDragons = [[String:Any]]()
var teamRaptors = [[String:Any]]()

// Part 2: Adding empty dictionaries for experienced/inexperienced players

var experiencedPlayers = [[String:Any]]()
var inexperiencedPlayers = [[String:Any]]()

// Part 2: Sorting players based on experience

for player in players {
    if (player["Experience"] as! Bool) == true {
        experiencedPlayers.append(player)
    } else {
        inexperiencedPlayers.append(player)
    }
}

// Part 2: Sorting and adding experienced players into 3 teams equally

for player in experiencedPlayers {
    if (teamSharks.count <= teamRaptors.count && teamSharks.count <= teamDragons.count) {
        teamSharks.append(player)
    } else if(teamDragons.count <= teamRaptors.count) {
        teamDragons.append(player)
    } else {
        teamRaptors.append(player)
    }
}

// Part 2: Sorting and adding inexperienced players into 3 teams equally

for player in inexperiencedPlayers {
    if (teamSharks.count <= teamRaptors.count && teamSharks.count <= teamDragons.count) {
        teamSharks.append(player)
    } else if(teamDragons.count <= teamRaptors.count) {
        teamDragons.append(player)
    } else {
        teamRaptors.append(player)
    }
}


// Part 3: Creating letters and notifying guardians. Adding dates of practice and empty dictionary for letters.

let dragonsPracticeDate = "March 17, 1pm"
let sharksPracticeDate = "March 17, 3pm"
let raptorsPracticeDate = "March 18, 1pm"

var letters = [String]()

