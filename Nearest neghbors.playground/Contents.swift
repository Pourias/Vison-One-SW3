//: Playground - noun: a place where people can play
// http://machinelearningmastery.com/tutorial-to-implement-k-nearest-neighbors-in-python-from-scratch/

import UIKit

func euclideanDistance(instance1: NSArray, instance2: NSArray, length: Int)->Float{
    var distance: Float = 0
    for x in 0..<length {
        distance = distance + (pow(((instance1[x] as! Float) - (instance2[x] as! Float) ), 2))
    }
    print("-----euclideanDistance-----")
    print(instance2)
    print(sqrt(distance))
    return sqrt(distance)
}

func getNeighbors(trainingSet: Array<NSArray>, testInstance: NSArray) -> NSArray {
    var distances : Array<NSArray> = []
    let length = testInstance.count
    for x in 0..<trainingSet.count {
        let dist = euclideanDistance(instance1: testInstance, instance2: trainingSet[x], length: length)
        distances.append([trainingSet[x], dist])
    }
    //print(distances)
    let sortedArray  = distances.sorted { ($0[1] as! Float) > ($1[1] as! Float) }
    return sortedArray[0]
}


var trainSet: Array<NSArray> = [/*[0, 0, 0, "Black"],
                                [0, 0, 128, "Navy"],
                                [0, 0, 139, "DarkBlue"],
                                [0, 0, 205, "MediumBlue"],
                                [0, 0, 255, "Blue"],
                                [0, 100, 0, "DarkGreen"],
                                [0, 128, 0, "Green"],
                                [0, 128, 128, "Teal"],
                                [0, 139, 139, "DarkCyan"],
                                [0, 191, 255, "DeepSkyBlue"],
                                [0, 206, 209, "DarkTurquoise"],
                                [0, 250, 154, "MediumSpringGreen"],
                                [0, 255, 0, "Lime"],
                                [0, 255, 127, "SpringGreen"],
                                [0, 255, 255, "Aqua"],
                                [0, 255, 255, "Cyan"],*/
                                [25, 25, 112, "MidnightBlue"],
                                /*[30, 144, 255, "DodgerBlue"],
                                [32, 178, 170, "LightSeaGreen"],
                                [34, 139, 34, "ForestGreen"],
                                [46, 139, 87, "SeaGreen"],
                                [47, 79, 79, "DarkSlateGray"],
                                [255, 127, 80, "Coral"],
                                [255, 140, 0, "DarkOrange"],
                                [255, 160, 122, "LightSalmon"],
                                [255, 160, 122, "LightSalmon"],
                                [255, 165, 0, "Orange"],
                                [255, 182, 193, "LightPink"],
                                [255, 192, 203, "Pink"],
                                [255, 215, 0, "Gold"],
                                [255, 218, 185, "PeachPuff"],
                                [255, 222, 173, "NavajoWhite"],
                                [255, 228, 181, "Moccasin"],
                                [255, 228, 196, "Bisque"],
                                [255, 228, 225, "MistyRose"],
                                [255, 235, 205, "BlanchedAlmond"],
                                [255, 239, 213, "PapayaWhip"],*/
                                [255, 255, 255, "White"]]

var testInstance: NSArray = [11, 182, 52]
var tempp: NSArray = getNeighbors(trainingSet: trainSet, testInstance: testInstance)
print (tempp[0][3])




