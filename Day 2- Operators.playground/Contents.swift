import Cocoa

func solve(meal_cost: Double, tip_percent: Int, tax_percent: Int) -> Void {

    let totalCost = round(meal_cost + ( Double(tip_percent+tax_percent)*meal_cost)/100)
    print(Int(totalCost-140))

}
solve(meal_cost: 140, tip_percent: 30, tax_percent: 0)
