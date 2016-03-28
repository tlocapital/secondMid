import UIKit

func sortArray(array1: [Int], array2: [Int]) -> [Int] {
    var final1 = array1
    var temp: Int
    
    final1 = Array(Set<Int>(array1 + array2))
    /*
    for n in 0...array2.count-1 {
        if (!final1.contains(array2[n])) {
            final1.append(array2[n])
        }
    }
    */
    
    for i in 0...final1.count-2 {
        for j in i+1...final1.count-1 {
            if final1[i] > final1[j] {
                temp = final1[i]
                final1[i] = final1[j]
                final1[j] = temp
            }
        }
    }
    
    

    
    return final1

}

var nray1 = [1, 5 ,7 , 8 , 2 , 3 , 4 , 1 , 7 , 2, 34, 16]
var nray2 = [5, 7, 1, 2, 32, 72, 14, 75 ,59 ,26 , 10]
sortArray(nray1, array2: nray2)



