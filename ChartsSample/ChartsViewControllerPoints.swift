//
//  ChartsViewControllerPoints.swift
//  ChartsSample
//
//  Created by phanindhra on 1/5/19.
//  Copyright © 2019 phanindhra. All rights reserved.
//

import UIKit

class ChartsViewControllerPoints: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //pie chart middle values names like text or values Ex: remaing value 620
        
        /* let centerText = NSMutableAttributedString(string: "Charts\nby Daniel Cohen Gindi")
         centerText.setAttributes([.font : UIFont(name: "HelveticaNeue-Light", size: 13)!,
         .paragraphStyle : paragraphStyle], range: NSRange(location: 0, length: centerText.length))
         centerText.addAttributes([.font : UIFont(name: "HelveticaNeue-Light", size: 11)!,
         .foregroundColor : UIColor.gray], range: NSRange(location: 10, length: centerText.length - 10))
         centerText.addAttributes([.font : UIFont(name: "HelveticaNeue-Light", size: 11)!,
         .foregroundColor : UIColor(red: 51/255, green: 181/255, blue: 229/255, alpha: 1)], range: NSRange(location: centerText.length - 19, length: 19))
         chartView.centerAttributedText = centerText;*/
        // Do any additional setup after loading the view.
    }
    
   /* func setChartDefaults() {
        // No data view
        self.lineChartView!.noDataText = ""
        self.lineChartView!.descriptionText = ""
        self.lineChartView!.noDataTextDescription = ""
        
        // Legend
        self.lineChartView!.legend.enabled = false
        
        
        // Interaction
        self.lineChartView!.setScaleEnabled(true)
        self.lineChartView!.pinchZoomEnabled = true
        self.lineChartView!.doubleTapToZoomEnabled = true
        
        // Background
        self.lineChartView!.drawGridBackgroundEnabled = true
        self.lineChartView!.gridBackgroundColor = UIColor.clearColor()
        self.lineChartView!.backgroundColor = UIColor.clearColor()
        
        // Borders
        self.lineChartView!.borderColor = UIColor.clearColor()
        self.lineChartView!.drawBordersEnabled = false
        
        // Format x axis
        self.lineChartView!.xAxis.enabled = true
        self.lineChartView!.xAxis.labelPosition = .Bottom
        self.lineChartView!.xAxis.drawAxisLineEnabled = false
        self.lineChartView!.xAxis.drawGridLinesEnabled = false
        self.lineChartView!.xAxis.labelFont = UIFont.TriggerFontSemiBold(11)
        self.lineChartView!.xAxis.axisLineWidth = 1.0
        self.lineChartView!.xAxis.spaceBetweenLabels = 9
        self.lineChartView!.xAxis.avoidFirstLastClippingEnabled = true
        
        // Remove left axis
        self.lineChartView!.leftAxis.enabled = false
        self.lineChartView!.leftAxis.drawAxisLineEnabled = false
        self.lineChartView!.leftAxis.spaceTop = 0.5
        self.lineChartView!.leftAxis.startAtZeroEnabled = false
        self.lineChartView!.leftAxis.spaceBottom = 0.4
        
        // Add right axis
        self.lineChartView!.rightAxis.enabled = true
        self.lineChartView!.rightAxis.drawAxisLineEnabled = true
        self.lineChartView!.rightAxis.startAtZeroEnabled = false
        self.lineChartView!.rightAxis.drawGridLinesEnabled = true
        self.lineChartView!.rightAxis.drawAxisLineEnabled = false
        
        // Format right axis font
        self.lineChartView!.rightAxis.labelFont = UIFont.TriggerFontSemiBold(12)
        self.lineChartView!.rightAxis.valueFormatter = NSNumberFormatter()
        self.lineChartView!.rightAxis.valueFormatter?.maximumFractionDigits = 2
    }
    func setLineChartDataSetDefaults() { // Sets preferences
        self.lineChartDataSet = LineChartDataSet()
        self.lineChartData = LineChartData()
        
        // Color of points
        self.lineChartDataSet!.setColor(UIColor.TriggerWhiteColor())
        
        // Width
        self.lineChartDataSet!.lineWidth = 1.5
        
        // Plot circles around points
        self.lineChartDataSet!.highlightEnabled = false
        self.lineChartDataSet!.drawCirclesEnabled = false
        self.lineChartDataSet!.drawValuesEnabled = true
        self.lineChartDataSet!.drawFilledEnabled = true
    }
 */
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    
    //For scroll Enable Purpose to do after
    
    /*chart.setVisibleXRangeMaximum(30)
     AFTER the data has been set, and calling
     chart.scaleYEnabled = false & chart.scaleXEnabled = true
     */
    
}
