//
//  MultipleLineChartViewController.swift
//  ChartsSample
//
//  Created by phanindhra on 1/6/19.
//  Copyright © 2019 phanindhra. All rights reserved.
//

import UIKit
import Charts

class MultipleLineChartViewController: UIViewController {

    @IBOutlet weak var lineChart : LineChartView!
    
    
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
        
        
        lineChart.highlightPerTapEnabled = false
        lineChart.borderColor = UIColor.orange
        
        
//        lineChart.scaleYEnabled = false
//        lineChart.scaleXEnabled = true

        
        
        
        lineChart.doubleTapToZoomEnabled = false
        
        
        
        //lineChart.highlightValues([])
        
        
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
        //        lineChart.leftAxis.resetCustomAxisMin = 0.0
        //        lineChart.autoScaleMinMaxEnabled = false
        //        lineChart.leftAxis.drawGridLinesEnabled = false
        //        lineChart.rightAxis.enabled = false
        //        lineChart.legend.form = .circle
        
        
    }
    
    
    
    
    
    
    func setChartView(){
        
        var lineChartEntry = [ChartDataEntry]()
        var lineChartEntry1 = [ChartDataEntry]()
        
        let data1 = ChartDataEntry.init(x: 1, y: 5)
        let data2 = ChartDataEntry.init(x: 3, y: 10)
        let data3 = ChartDataEntry.init(x: 5, y: 15)
        let data4 = ChartDataEntry.init(x: 7, y: 20)
        let data5 = ChartDataEntry.init(x: 9, y: 10)
        let data6 = ChartDataEntry.init(x: 11, y: 18)
        let data7 = ChartDataEntry.init(x: 13, y: 30)
        
        let data8 = ChartDataEntry.init(x: 15, y: 5)
        let data9 = ChartDataEntry.init(x: 17, y: 10)
        let data10 = ChartDataEntry.init(x: 19, y: 15)
        let data11 = ChartDataEntry.init(x: 20, y: 20)
        let data12 = ChartDataEntry.init(x: 22, y: 10)
        let data13 = ChartDataEntry.init(x: 24, y: 18)
        let data14 = ChartDataEntry.init(x: 26, y: 30)
        
        lineChartEntry.append(data1)
        lineChartEntry.append(data2)
        lineChartEntry.append(data3)
        lineChartEntry.append(data4)
        lineChartEntry.append(data5)
        lineChartEntry.append(data6)
        lineChartEntry.append(data7)
        
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
        
        
        
        let dat11 = ChartDataEntry.init(x: 1, y: 12)
        let dat12 = ChartDataEntry.init(x: 3, y: 5)
        let dat13 = ChartDataEntry.init(x: 5, y: 5)
        let dat14 = ChartDataEntry.init(x: 7, y: 15)
        let dat15 = ChartDataEntry.init(x: 9, y: 13)
        let dat16 = ChartDataEntry.init(x: 11, y: 18)
        let dat17 = ChartDataEntry.init(x: 13, y: 30)
        
        
        
        let dat18 = ChartDataEntry.init(x: 15, y: 5)
        let dat19 = ChartDataEntry.init(x: 17, y: 10)
        let dat110 = ChartDataEntry.init(x: 19, y: 25)
        let dat111 = ChartDataEntry.init(x: 20, y: 20)
        let dat112 = ChartDataEntry.init(x: 22, y: 30)
        let dat113 = ChartDataEntry.init(x: 24, y: 28)
        let dat114 = ChartDataEntry.init(x: 26, y: 10)
        
        lineChartEntry1.append(dat11)
        lineChartEntry1.append(dat12)
        lineChartEntry1.append(dat13)
        lineChartEntry1.append(dat14)
        lineChartEntry1.append(dat15)
        lineChartEntry1.append(dat16)
        lineChartEntry1.append(dat17)
        
        lineChartEntry1.append(dat18)
        lineChartEntry1.append(dat19)
        lineChartEntry1.append(dat110)
        lineChartEntry1.append(dat111)
        lineChartEntry1.append(dat112)
        lineChartEntry1.append(dat113)
        lineChartEntry1.append(dat114)
        
        
        let set2 = LineChartDataSet(values: lineChartEntry1, label: "")
        
        set2.mode = .cubicBezier
        set2.drawCirclesEnabled = false
        
        set2.drawValuesEnabled = false
        
        
        
        let gradientColors2 = [UIColor.blue.cgColor,UIColor.blue.cgColor]
        
        let gradient2 = CGGradient(colorsSpace: nil, colors: gradientColors2 as CFArray, locations: nil)!
        set2.fill = Fill(linearGradient: gradient2, angle: 90)
        set2.drawFilledEnabled = true
        set2.fillAlpha = 1
        set2.lineWidth = 0
        
        
        let data = LineChartData(dataSets: [set1,set2])
        lineChart.data = data
        
//        lineChart.dragEnabled = true
//        lineChart.setVisibleXRangeMaximum(10)
//        lineChart.data?.highlightEnabled = false

        
    }
    
    
}

