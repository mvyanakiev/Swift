//: Playground - noun: a place where people can play

import UIKit

// 1. Направете enum, който да репрезентира картите в играта белот, към него се добавят и различните комбинации (терца, кварта, квинта, 100, 150, 200, белот)
enum Cards {
    case c7, c8, c9, c10, cJ, cQ, cK, cA
    case belote, tierce, quartet, quit, FourOf9, FourOf10, FourOfJ, FourOfQ, FourOfK, FourOfA, last10
}

// 2. Напревете enum, който да репрезентира различните типове игри в белот (в случая само “Всичко коз” и “Без коз”
enum GameType {
    case allTrump
    case noTrump
}

// points declaration
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
        
    case (_, .cQ):
        return 3
        
    case (_, .cK):
        return 4
        
    case (_, .cA):
        return 11
        
    case (_, .belote):
        return 20
        
    case (_, .last10):
        return 10
        
    case (.allTrump, .tierce):
        return 30
        
    case (.allTrump, .quartet):
        return 50
        
    case (.allTrump, .quit):
        return 100
        
    case (.noTrump, .tierce), (.noTrump, .quartet), (.noTrump, .quit), (.noTrump, .FourOf9), (.noTrump, .FourOf10), (.noTrump, .FourOfJ), (.noTrump, .FourOfQ), (.noTrump, .FourOfK), (.noTrump, .FourOfA):
        return 0
        
    
    case (.allTrump, .FourOf10), (.allTrump, .FourOfQ), (.allTrump, .FourOfK), (.allTrump, .FourOfA):
        return 100
        
    case (.allTrump, .FourOf9):
        return 150
        
    case (.allTrump, .FourOfJ):
        return 200
        
    default:
        return 0
        
    }
}

// 3. Направете функция, която на база на типа игра и array от тип карти/комбинации да изчислява колко точки има даден отбор.
func getPoints(game: GameType, cardsOfTeam: [Cards]) -> Int {
    
    var calculatedPoints = 0
    
    for item in cardsOfTeam {
        calculatedPoints += points(game: game, card: item)
    }
    
    if game == .noTrump {
        calculatedPoints = calculatedPoints * 2
    }
    
    return calculatedPoints
}

// Направете функция, която на база на тип игра, array с карти/комбинации на отбор 1 и array с карти комбинации на отбор 2 да връща победител.
func getWinner(gType: GameType, team1cards:[Cards], team2cards:[Cards] ) {
    
    let t1 = getPoints(game: gType, cardsOfTeam: team1cards)
    let t2 = getPoints(game: gType, cardsOfTeam: team2cards)
    
    if t1 == t2 {
        print("Every team have equal points - \(t1).")
    } else if t1 > t2 {
        print("The winner is team 1 with \(t1) points.")
    } else if t1 < t2 {
        print("The winner is team 2 with \(t2) points.")
    }
    
}

//declare teams cards
let team1: [Cards] = [.c7, .c8, .cJ, .cQ, .cA, .last10]
let team2: [Cards] = [.c7, .c9, .cQ, .quit]

// The result:
getWinner(gType: .allTrump, team1cards: team1, team2cards: team2)









