
class Vehicle {
  var currentSpeed = 1000
  var description: String {
    return "Traveling at \(currentSpeed)"
  }

  func makeNoise() {
    print("Vehicle noise ...")
  }
}

let someVehicle = Vehicle()
print(someVehicle.description)
someVehicle.makeNoise()
print("*********************")

class Bicycle: Vehicle {
  var hasBasket: Bool

  init(hasBasket: Bool) {
    self.hasBasket = hasBasket
  }

  override func makeNoise() {
    print("Bicycle noise ...")
  }
}

let bicycle = Bicycle(hasBasket: true)
bicycle.currentSpeed
bicycle.makeNoise()

class Train: Vehicle {
  
  override var description: String {
    return "Train"
  }
  
  override func makeNoise() {
    print("choo choo")
  }
  
}
let train = Train()
train.makeNoise()
print(train.description)


class User {
  var name: String = "User"

 final func create() {
    print("Creting user ...")
  }
}

class Admin: User {
  override func create() {
    print("Creating admin ...")
  }
}
