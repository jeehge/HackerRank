//: Playground - noun: a place where people can play

import UIKit
import Foundation

/**
 1. meal_cost 세금 및 팁 전 식사 비용
 2. tip_percent 팁으로 추가되는 비율 ->  meal_cost*tip_percent/100
 3. tax_percent 세금으로 추가되는 비율 ->  meal_cost*tax_percent/100
 4. totalCost 가장 가까운 정수로 반올림하여 출력 -> round , rounded 까지 체크
 */

func solve(meal_cost: Double, tip_percent: Int, tax_percent: Int) -> Void {
    let tip = meal_cost*Double(tip_percent)/100.0
    let tax = meal_cost*Double(tax_percent)/100.0
    let totalCost = Int(round(meal_cost + tip + tax))
    print("The total meal cost is \(totalCost) dollars.")
}

guard let meal_cost = Double((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
    else { fatalError("Bad input") }

guard let tip_percent = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
    else { fatalError("Bad input") }

guard let tax_percent = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
    else { fatalError("Bad input") }

solve(meal_cost: meal_cost, tip_percent: tip_percent, tax_percent: tax_percent)
