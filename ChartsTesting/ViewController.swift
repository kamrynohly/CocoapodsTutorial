//
//  ViewController.swift
//  ChartsTesting
//
//  Created by Kamryn Ohly on 1/19/21.
//

import UIKit
import Charts

class ViewController: UIViewController {

    @IBOutlet weak var chartView: LineChartView!
    
    let dataInfo = [2.0, 3.0, 4.5, 10.0, 7.0, 8.3, 12.0]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateChart()
    }

    func updateChart() {
        
       var lineChartInfo = [ChartDataEntry]()
        
        for i in 0..<dataInfo.count {
            let data = ChartDataEntry(x: Double(i), y: dataInfo[i])
            lineChartInfo.append(data)
        }
        
        let lineForChart = LineChartDataSet(entries: lineChartInfo, label: "Testing Charts")
        lineForChart.colors = [NSUIColor.purple]
        lineForChart.mode = .cubicBezier
        
        let actualGraph = LineChartData()
        actualGraph.addDataSet(lineForChart)
        
        chartView.data = actualGraph
        chartView.chartDescription?.text = "Testing the graph!"
        
    }
    
    
}

