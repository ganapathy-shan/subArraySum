import UIKit

var str = "Hello, playground"

let array = [15, 2, 4, 8, 9, 5, 10, 23]
let n = array.count
subArraySum(arr:array, n:n, sum:33)

let array1 = [10, 2 , -2, -20, 10]
let m = array1.count
subArraySumWithNegatives(arr:array1, n:m, sum:-10)
func subArraySum(arr : Array<Int>, n : Int, sum : Int)
{
    var sumArray = arr[0]
    var start = 0
    for i in 1...n
    {
        while sumArray > sum && start < i - 1
        {
            sumArray = sumArray - arr[start]
            start = start + 1
        }
        
        if sumArray == sum
        {
            print("subArrayfound between index", start, "and", i-1)
            return
        }
        
        if i < n
        {
            sumArray = sumArray + arr[i]
        }
        
    }
}

func subArraySumWithNegatives(arr : Array<Int>, n : Int, sum : Int)
{
    var currSum = 0
    var dictionary : Dictionary<Int,Int> = Dictionary()
    for i in 0...n
    {
        currSum = currSum + arr[i]
        
        if(currSum == sum)
        {
            print("subArrayfound between index", 0, "and", i)
            return
        }
        if((dictionary.index(forKey: currSum - sum)) != nil)
        {
            print("subArrayfound between index", dictionary[currSum-sum]! + 1 , "and", i)
            return
        }
        dictionary[currSum] = i
    }
}

