//
//  ViewController2.swift
//  ChartsSample
//
//  Created by phanindhra on 1/6/19.
//  Copyright © 2019 phanindhra. All rights reserved.
//

import UIKit
import Charts

class ViewController2: UIViewController {

    @IBOutlet weak var lineChart : LineChartView!
     var lineChartEntry = [ChartDataEntry]()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        setLineChartPosition()
        setChartView()
        
    }
    
    
    
    
    
    func setLineChartPosition(){
        
        self.lineChart!.xAxis.enabled = true
        self.lineChart!.xAxis.labelPosition = .bottomInside
        self.lineChart!.xAxis.drawAxisLineEnabled = false
        self.lineChart!.xAxis.drawGridLinesEnabled = false
        //self.lineChart!.xAxis.labelFont = UIFont.TriggerFontSemiBold(11)
        self.lineChart!.xAxis.axisLineWidth = 1.0
        //self.lineChart!.xAxis.spaceBetweenLabels = 9
        self.lineChart!.xAxis.avoidFirstLastClippingEnabled = true
        
        self.lineChart.legend.enabled = false
        
        self.lineChart!.leftAxis.enabled = true
        self.lineChart.leftAxis.drawAxisLineEnabled = false
        self.lineChart.leftAxis.drawAxisLineEnabled = false
        
        self.lineChart.leftAxis.drawGridLinesEnabled = false
        
        
        self.lineChart.chartDescription?.enabled = false
        self.lineChart.dragEnabled = true
        lineChart.setScaleEnabled(true)
        lineChart.setViewPortOffsets(left: 20, top: 0, right: 10, bottom: 0)
        
        
        
        
        self.lineChart.rightAxis.enabled = false
        
        
        self.lineChart.drawGridBackgroundEnabled = false
        self.lineChart.drawBordersEnabled = false
        self.lineChart.clipValuesToContentEnabled = false
        
        
//        lineChart.highlightPerTapEnabled = false
        
        
        let marker = BalloonMarker(color: .clear,
                                   font: UIFont.systemFont(ofSize: 10.0, weight: UIFont.Weight.bold),
                                   textColor: .white,
                                   insets:  UIEdgeInsets(top: 2, left: 2, bottom: 2, right: 2))
        
        marker.chartView = lineChart
        marker.image = UIImage.init(named: "123.png")
        marker.minimumSize = CGSize(width:100,height:20)
        lineChart.marker = marker
        lineChart.drawMarkers = true
        
     
        
        //        lineChart.scaleYEnabled = false
        //        lineChart.scaleXEnabled = false
        //        lineChart.pinchZoomEnabled = false
        //        lineChart.doubleTapToZoomEnabled = false
        //        lineChart.xAxis.drawGridLinesEnabled = false
        ////        lineChart.leftAxis.resetCustomAxisMin = 0.0
        //        lineChart.autoScaleMinMaxEnabled = false
        //        lineChart.leftAxis.drawGridLinesEnabled = false
        //        lineChart.rightAxis.enabled = false
        //        lineChart.legend.form = .circle
        
        
    }
    
    
    
    
    
    
    func setChartView(){
        
        let data1 = ChartDataEntry.init(x: 1, y: 5)
        let data2 = ChartDataEntry.init(x: 3, y: 10)
        let data3 = ChartDataEntry.init(x: 5, y: 15)
        let data4 = ChartDataEntry.init(x: 7, y: 20)
        let data5 = ChartDataEntry.init(x: 9, y: 10)
        let data6 = ChartDataEntry.init(x: 11, y: 18)
        let data7 = ChartDataEntry.init(x: 13, y: 30)
        
        lineChartEntry.append(data1)
        lineChartEntry.append(data2)
        lineChartEntry.append(data3)
        lineChartEntry.append(data4)
        lineChartEntry.append(data5)
        lineChartEntry.append(data6)
        lineChartEntry.append(data7)
        
        let data8 = ChartDataEntry.init(x: 15, y: 5)
        let data9 = ChartDataEntry.init(x: 17, y: 10)
        let data10 = ChartDataEntry.init(x: 19, y: 15)
        let data11 = ChartDataEntry.init(x: 20, y: 20)
        let data12 = ChartDataEntry.init(x: 22, y: 10)
        let data13 = ChartDataEntry.init(x: 24, y: 18)
        let data14 = ChartDataEntry.init(x: 26, y: 30)
        
        
        lineChartEntry.append(data8)
        lineChartEntry.append(data9)
        lineChartEntry.append(data10)
        lineChartEntry.append(data11)
        lineChartEntry.append(data12)
        lineChartEntry.append(data13)
        lineChartEntry.append(data14)
        
        
        let set1 = LineChartDataSet(values: lineChartEntry, label: "")
        
        set1.mode = .cubicBezier
        set1.drawCirclesEnabled = false
        
        set1.drawValuesEnabled = false
        
        
        
        let gradientColors = [UIColor.orange.cgColor,UIColor.orange.cgColor]
        
        let gradient = CGGradient(colorsSpace: nil, colors: gradientColors as CFArray, locations: nil)!
        set1.fill = Fill(linearGradient: gradient, angle: 90)
        set1.drawFilledEnabled = true
        set1.fillAlpha = 1
        set1.lineWidth = 0
        
        
        let data = LineChartData(dataSet: set1)
        
        lineChart.data = data
        
        lineChart.dragEnabled = true
        lineChart.setVisibleXRangeMaximum(5)
        lineChart.data?.highlightEnabled = false
        
    }
    
    
//    func setMultipleLineChart(){
//        
//        let data = LineChartData()
//        var lineChartEntry1 = [ChartDataEntry]()
//
//        for i in 0..<x1.count {
//            lineChartEntry1.append(ChartDataEntry(x: Double(i), y: Double(x1[i]) ?? 0.0))
//        }
//        let line1 = LineChartDataSet(values: lineChartEntry1, label: "First Dataset")
//        data.addDataSet(line1)
//        if (x2.count > 0) {
//            var lineChartEntry2 = [ChartDataEntry]()
//            for i in 0..<x2.count {
//                lineChartEntry2.append(ChartDataEntry(x: Double(i), y: Double(x2[i]) ?? 0.0))
//            }
//            let line2 = LineChartDataSet(values: lineChartEntry2, label: "Second Dataset")
//            data.addDataSet(line2)
//        }
//        if (x3.count > 0) {
//            var lineChartEntry3 = [ChartDataEntry]()
//            for i in 0..<x3.count {
//                lineChartEntry3.append(ChartDataEntry(x: Double(i), y: Double(x3[i]) ?? 0.0))
//            }
//            let line3 = LineChartDataSet(values: lineChartEntry3, label: "Third Dataset")
//            data.addDataSet(line3)
//        }
//        self.myChartView.data = data
//
//    }
    
    
    
}


