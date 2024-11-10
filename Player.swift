import Foundation

struct Player {
    var position: (x: Int, y: Int)
    let name: String

    mutating func move(bound: Int) {
        let direction = generateMove(bound: bound)
        position.x += direction.x
        position.y += direction.y
        position.x = max(0, min(9, position.x))
        position.y = max(0, min(9, position.y))
    }

    private func generateMove(bound: Int) -> (x: Int, y: Int) {
        let move = Int.random(in: 1...bound)
        let directions = [(0, move), (0, -move), (move, 0), (-move, 0)]
        return directions.randomElement()!
    }
}
