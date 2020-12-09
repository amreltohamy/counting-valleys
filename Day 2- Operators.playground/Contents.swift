import Cocoa

func solve(meal_cost: Double, tip_percent: Int, tax_percent: Int) -> Void {

    let totalCost = round(meal_cost + ( Double(tip_percent+tax_percent)*meal_cost)/100)
    print(Int(totalCost))

}
solve(meal_cost: 95, tip_percent: 15, tax_percent: 7)
