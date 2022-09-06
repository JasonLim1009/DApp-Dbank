// 445
// import Debug "mo:base/Debug";

// actor DBank {
//   var currentValue = 300;
//   currentValue := 100;

//   let id = 234124234524223;
//   // Debug.print(debug_show(currentValue));

//   func topUp() {
//     currentValue += 1;
//     Debug.print(debug_show(currentValue));
//   };

//   topUp();
// }



// 446
// import Debug "mo:base/Debug";

// actor DBank {
//   var currentValue = 300;
//   currentValue := 100;

//   let id = 234124234524223;
//   // Debug.print(debug_show(currentValue));

//   public func topUp(amount: Nat) {
//     currentValue += amount;
//     Debug.print(debug_show(currentValue));
//   };

//   public func withdrawl(amount: Nat) {
//     currentValue -= amount;
//     Debug.print(debug_show(currentValue));
//   };

//   // topUp();

// }



// 447
// import Debug "mo:base/Debug";

// actor DBank {
//   var currentValue: Nat = 300;
//   currentValue := 100;

//   let id = 234124234524223;
//   // Debug.print(debug_show(currentValue));

//   public func topUp(amount: Nat) {
//     currentValue += amount;
//     Debug.print(debug_show(currentValue));
//   };

//   public func withdrawl(amount: Nat) {
//     let tempValue: Int = currentValue - amount;

//     if (tempValue >= 0) {
//     currentValue -= amount;
//     Debug.print(debug_show(currentValue));
//     } else {
//       Debug.print("amount too large, currentValue less than zero.")
//     }
//   };

//   // topUp();

// }



// 448
// import Debug "mo:base/Debug";

// actor DBank {
//   var currentValue: Nat = 300;
//   currentValue := 100;

//   let id = 234124234524223;
//   // Debug.print(debug_show(currentValue));

//   public func topUp(amount: Nat) {
//     currentValue += amount;
//     Debug.print(debug_show(currentValue));
//   };

//   public func withdrawl(amount: Nat) {
//     let tempValue: Int = currentValue - amount;

//     if (tempValue >= 0) {
//     currentValue -= amount;
//     Debug.print(debug_show(currentValue));
//     } else {
//       Debug.print("amount too large, currentValue less than zero.")
//     }
//   };

//   public query func checkBalance(): async Nat {
//     return currentValue;
//   };

//   // topUp();

// }




// 449
// import Debug "mo:base/Debug";

// actor DBank {
//   stable var currentValue: Nat = 300;
//   // currentValue := 100;

//   let id = 234124234524223;
//   // Debug.print(debug_show(currentValue));

//   public func topUp(amount: Nat) {
//     currentValue += amount;
//     Debug.print(debug_show(currentValue));
//   };

//   public func withdrawl(amount: Nat) {
//     let tempValue: Int = currentValue - amount;

//     if (tempValue >= 0) {
//     currentValue -= amount;
//     Debug.print(debug_show(currentValue));
//     } else {
//       Debug.print("amount too large, currentValue less than zero.")
//     }
//   };

//   public query func checkBalance(): async Nat {
//     return currentValue;
//   };

//   // topUp();

// }



// 450
// import Debug "mo:base/Debug";
// import Time "mo:base/Time";
// import Float "mo:base/Float";

// actor DBank {
//   stable var currentValue: Float = 300;
//   currentValue := 300;

//   stable var startTime = Time.now();
//   startTime := Time.now();
//   Debug.print(debug_show(startTime));

//   let id = 234124234524223;
//   // Debug.print(debug_show(currentValue));

//   public func topUp(amount: Float) {
//     currentValue += amount;
//     Debug.print(debug_show(currentValue));
//   };

//   public func withdrawl(amount: Float) {
//     let tempValue: Float = currentValue - amount;

//     if (tempValue >= 0) {
//     currentValue -= amount;
//     Debug.print(debug_show(currentValue));
//     } else {
//       Debug.print("amount too large, currentValue less than zero.")
//     }
//   };

//   public query func checkBalance(): async Float {
//     return currentValue;
//   };

//   // topUp();

//   public func compound() {
//     let currentTime = Time.now();
//     let timeElapsedNS = currentTime - startTime;
//     let timeElapsedS = timeElapsedNS / 1000000000;
//     currentValue := currentValue * (1.01 ** Float.fromInt(timeElapsedS));
//     startTime := currentTime;
//   };
// }



// 451
import Debug "mo:base/Debug";
import Time "mo:base/Time";
import Float "mo:base/Float";

actor DBank {
  stable var currentValue: Float = 300;
  currentValue := 300;
  Debug.print(debug_show(currentValue));

  stable var startTime = Time.now();
  startTime := Time.now();
  Debug.print(debug_show(startTime));

  let id = 234124234524223;
  // Debug.print(debug_show(currentValue));

  public func topUp(amount: Float) {
    currentValue += amount;
    Debug.print(debug_show(currentValue));
  };

  public func withdraw(amount: Float) {
    let tempValue: Float = currentValue - amount;

    if (tempValue >= 0) {
    currentValue -= amount;
    Debug.print(debug_show(currentValue));
    } else {
      Debug.print("amount too large, currentValue less than zero.")
    }
  };

  public query func checkBalance(): async Float {
    return currentValue;
  };

  // topUp();

  public func compound() {
    let currentTime = Time.now();
    let timeElapsedNS = currentTime - startTime;
    let timeElapsedS = timeElapsedNS / 1000000000;
    currentValue := currentValue * (1.01 ** Float.fromInt(timeElapsedS));
    startTime := currentTime;
  };
}