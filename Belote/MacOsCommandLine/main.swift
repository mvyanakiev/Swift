import Foundation


enum Cards {
    case c7, c8, c9, c10, cJ, cQ, cK, cA
    case belote, tierce, quartet, quit, FourOf9, FourOf10, FourOfJ, FourOfQ, FourOfK, FourOfA, last10
}

enum GameType {
    case allTrump
    case noTrump
}


func points(game: GameType, card: Cards) -> Int {

    switch (game, card) {

    case (_, .c7), (_, .c8):
        return 0

    case (.allTrump, .c9):
        return 14

    case (.noTrump, .c9):
        return 0

    case (_, .c10):
        return 10

    case (.allTrump, .cJ):
        return 20

    case (.noTrump, .cJ):
        return 2


    case (_, .belote):
        return 20


    case (.noTrump, .tierce), (.noTrump, .quartet), (.noTrump, .quit):
        return 0


    default:
        return 0

    }
}

func pointCards(game: GameType, cardsOfTeam: [Cards]) -> Int {

    var calculatedPoints = 0

    for item in cardsOfTeam {
        calculatedPoints += points(game: game, card: item)
    }

    if game == .noTrump {
        calculatedPoints = calculatedPoints * 2
    }

    return calculatedPoints
}


let team1: [Cards] = [.c7, .c8, .belote, .cJ]
let team2: [Cards] = [.c7, .c9, .belote, .cQ]

print(pointCards(game: .noTrump, cardsOfTeam: team1))
print(pointCards(game: .noTrump, cardsOfTeam: team2))



func getWinner() -> Int {

    let t1 = pointCards(game: .noTrump, cardsOfTeam: team1)
    let t2 = pointCards(game: .noTrump, cardsOfTeam: team2)
    var result:Int = -1

    if t1 == t2 {
        result = 0
    } else if t1 > t2 {
        result = 1
    } else if t2 > t2 {
        result = 2
    }

    return result

}


print(getWinner())







