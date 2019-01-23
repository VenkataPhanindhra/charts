//
//  RoundCircleBarChartViewController.swift
//  ChartApplicationSample
//
//  Created by SMSC MacMini2 on 22/10/18.
//  Copyright © 2018 phanindhra B V. All rights reserved.
//

import UIKit
import Charts

class RoundCircleBarChartViewController: UIViewController {

    @IBOutlet weak var roundPieChart : PieChartView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
       // roundPieChart.noDataTextAlignment = .center
       
        roundPieChart.drawHoleEnabled = true
        roundPieChart.rotationAngle = 0.0
        roundPieChart.rotationEnabled = false
        roundPieChart.highlightPerTapEnabled = false
       //roundPieChart.centerText = "365 Members Called"

        
        let paragapthStyle : NSMutableParagraphStyle = NSMutableParagraphStyle.default.mutableCopy() as! NSMutableParagraphStyle
        paragapthStyle.lineBreakMode = NSLineBreakMode.byTruncatingTail
        paragapthStyle.alignment = NSTextAlignment.center
        let chartAttribute = [NSAttributedString.Key.font: UIFont(name: "helvetica", size: 14.0)! ]
        let mutableAttString : NSMutableAttributedString = NSMutableAttributedString.init(string: "365 Memeberes called")
        mutableAttString.setAttributes(chartAttribute, range: NSMakeRange(0, mutableAttString.length))
        
        
   
        
        roundPieChart.holeColor = UIColor.clear
        roundPieChart.centerAttributedText = mutableAttString
        
        
        
        
        roundPieChart.holeRadiusPercent = 0.80
//        roundPieChart.transparentCircleRadiusPercent = 0
//        roundPieChart.chartDescription?.enabled = false
//        roundPieChart.drawEntryLabelsEnabled = false
//        roundPieChart.usePercentValuesEnabled = false
//        roundPieChart.drawCenterTextEnabled = true
//        roundPieChart.legend.enabled = false
//

        let months = ["Jan", "Feb"]
        let unitsSold = [10.0, 4.0]
        setChart(dataPoints: months, values: unitsSold)
        
        // Do any additional setup after loading the view.
    }
    
    func setChart(dataPoints: [String], values: [Double]) {
        
        var dataEntries: [ChartDataEntry] = []
        
        for i in 0..<dataPoints.count {
            let dataEntry1 = ChartDataEntry(x: Double(i), y: values[i], data: nil)
            
            dataEntries.append(dataEntry1)
        }
       // print(dataEntries[0].data)
        
      
        
        
        let pieChartDataSet = PieChartDataSet(values: dataEntries, label: "")
        
        pieChartDataSet.drawValuesEnabled = false
        
        
        
        
        let pieChartData = PieChartData(dataSet: pieChartDataSet)
        
        
        
        
        roundPieChart.data = pieChartData
        
//        var colors: [UIColor] = []
//
//        for _ in 0..<dataPoints.count {
//            let red = Double(arc4random_uniform(256))
//            let green = Double(arc4random_uniform(256))
//            let blue = Double(arc4random_uniform(256))
//
//            let color = UIColor(red: CGFloat(red/255), green: CGFloat(green/255), blue: CGFloat(blue/255), alpha: 1)
//            colors.append(color)
//        }
        
        pieChartDataSet.colors = [.orange,.gray]
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
