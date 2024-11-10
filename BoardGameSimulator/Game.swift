import Foundation

class Game {
    var runner: Player
    var chaser: Player

    init() {
        runner = Player(position: (9, 0), name: "Runner")
        chaser = Player(position: (0, 9), name: "Chaser")
    }

    func start() {
        while true {
            runner.move(bound: 3)
            chaser.move(bound: 3)
            printStatus()

            if runner.position.x == 0 {
                print("Runner wins!")
                break
            }

            if runner.position == chaser.position {
                print("Chaser wins!")
                break
            }
        }
    }

    private func printStatus() {
        print("Runner is at \(runner.position)")
        print("Chaser is at \(chaser.position)")
    }
}
