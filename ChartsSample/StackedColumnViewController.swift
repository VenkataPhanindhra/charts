//
//  StackedColumnViewController.swift
//  ChartApplicationSample
//
//  Created by SMSC MacMini2 on 22/10/18.
//  Copyright © 2018 phanindhra B V. All rights reserved.
//

import UIKit
import Charts

class StackedColumnVC: UIViewController {

    @IBOutlet weak var stackBarChartView : BarChartView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        stackBarChartView.dragEnabled = false
        stackBarChartView.dragXEnabled = false
        stackBarChartView.dragYEnabled = false
        stackBarChartView.doubleTapToZoomEnabled = false
        stackBarChartView.highlightPerDragEnabled = false
       // stackBarChartView.isPinchZoomEnabled = false
       
        
        setup(chartView: stackBarChartView)
        setBarChartData()
        
    }
    

    func setBarChartData(){
        
        var dataEntries: [BarChartDataEntry] = []
        var x: Double = 0
        
        let point : [Double] = [5,4,3,8,2]
        let point1 : [Double]  = [3,7,8,4,6]
        
        var point2 = [Double]()
        
        for combinedArray in 0..<point.count{
            
            let a = point[combinedArray]
            let b = point1[combinedArray]
            
            let c = a+b
            
            point2.append(c)
            
        }
        
        
        for entr in 0..<point.count {
      
            
            let dataEntr = BarChartDataEntry.init(x: x, y: point2[entr])
            let dataEntr1 = BarChartDataEntry.init(x: x, y: point[entr])
            
            x += 1
            
            dataEntries.append(dataEntr)
            dataEntries.append(dataEntr1)
            
        }
        
        let charSet = BarChartDataSet.init(values: dataEntries, label: "")
        charSet.colors = [.gray,.orange]
        
        let arr : [String] = ["point","point1"]
        
        charSet.stackLabels = arr
        
        charSet.valueColors = [.clear]
        
        let barData = BarChartData(dataSet: charSet)
        barData.barWidth = 0.75
        stackBarChartView.data = barData
        
        
    }
    
    func setup(chartView: BarChartView) {
        
        
        chartView.leftAxis.axisMinimum = 0
        chartView.leftAxis.axisLineColor = .clear
        chartView.rightAxis.enabled = false
      //  chartView.xAxis.valueFormatter = YearValueFormatter()
        chartView.xAxis.drawGridLinesEnabled = false
        chartView.xAxis.labelPosition = .bottom
        chartView.xAxis.axisLineColor = .clear
        chartView.fitBars = true
        chartView.drawValueAboveBarEnabled = false
        
        chartView.rightAxis.drawGridLinesEnabled = false
        chartView.rightAxis.drawBottomYLabelEntryEnabled = false
        chartView.rightAxis.drawAxisLineEnabled = false
        chartView.rightAxis.drawLabelsEnabled = false
        
        chartView.leftAxis.drawGridLinesEnabled = false
        chartView.leftAxis.drawBottomYLabelEntryEnabled = false
        chartView.leftAxis.drawAxisLineEnabled = false
        
        
        chartView.chartDescription?.text = ""
    }
    
}
