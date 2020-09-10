import QtQuick 2.9
import QtQuick.Window 2.1
import QtQuick.Controls 2.2
import QtQuick.Controls.Styles 1.4
import QtQuick.Extras 1.4
import QtQuick.Layouts 1.3


ApplicationWindow {
    id: root
    visible: true
    width: 800
    height: 600
    //    color: "#FFFFFF"
    title: "QmlDynamicChart"

    Chart{
        id: chart
        width: 400
        height: 300
        property int test : 65;
        onPaint: {
            //bar
//            bar( {
//                    labels : ["一月","February","March","April","May","June","July"],
//                    datasets : [
//                        {
//                            fillColor : "rgba(220,220,220,0.5)",
//                            strokeColor : "rgba(220,220,220,1)",
//                            data : [chart.test,59,90,81,56,55,40]
//                        },
//                        {
//                            fillColor : "rgba(151,187,205,0.5)",
//                            strokeColor : "rgba(151,187,205,1)",
//                            data : [28,48,40,19,96,27,100]
//                        }
//                    ]
//                });
            // bar

            // line
            line({
                     labels : ["January","February","March","April","May","June","July"],
                     datasets : [
                         {
                             fillColor : "rgba(51, 255, 221, 0.8)",
                             fillColor2 : "rgba(53,219,255,0.8)",
                             strokeColor : "rgba(0,0,0,0)",
                             pointColor : "rgba(0,0,0,0)",
                             pointStrokeColor : "rgba(0,0,0,0)",
                             data : [65,59,90,81,56,55,40]
                         },
                     ]
                 },
                 {
                     scaleLineColor : "rgba(40, 68, 144,1)",
                     gradientFill: true,
                     scaleFontColor : "rgba(40, 68, 144,1)",
                     scaleGridLineColor : "rgba(40, 68, 144,1)",
                     showSecondsLables: true
                     //                         data : [28,48,40,19,96,27,100]

                 });
        }
        // // line

            /*/ // radar
        radar( {
                  labels : ["Eating","Drinking","Sleeping","Designing","Coding","Partying","Running"],
                  datasets : [
                      {
                          fillColor : "rgba(220,220,220,0.5)",
                          strokeColor : "rgba(220,220,220,1)",
                          pointColor : "rgba(220,220,220,1)",
                          pointStrokeColor : "#fff",
                          data : [65,59,90,81,56,55,40]
                      },
                      {
                          fillColor : "rgba(151,187,205,0.5)",
                          strokeColor : "rgba(151,187,205,1)",
                          pointColor : "rgba(151,187,205,1)",
                          pointStrokeColor : "#fff",
                          data : [28,48,40,19,96,27,100]
                      }
                  ]
              });
        //*/ // radar

            /*/ // polarArea
        polarArea([
                      {
                          value : 30,
                          color: "#D97041"
                      },
                      {
                          value : 90,
                          color: "#C7604C"
                      },
                      {
                          value : 24,
                          color: "#21323D"
                      },
                      {
                          value : 58,
                          color: "#9D9B7F"
                      },
                      {
                          value : 82,
                          color: "#7D4F6D"
                      },
                      {
                          value : 8,
                          color: "#584A5E"
                      }
                  ]);
        //*/ // polarArea

            /*/ // pie
        pie([
                {
                    value: 30,
                    color:"#F38630"
                },
                {
                    value : 50,
                    color : "#E0E4CC"
                },
                {
                    value : 100,
                    color : "#69D2E7"
                }
            ]);
        //*/ // pie

            //*/ // doughnut
            //        doughnut([
            //                     {
            //                         value: 30,
            //                         color:"#F7464A"
            //                     },
            //                     {
            //                         value : 50,
            //                         color : "#E2EAE9"
            //                     },
            //                     {
            //                         value : 100,
            //                         color : "#D4CCC5"
            //                     },
            //                     {
            //                         value : 40,
            //                         color : "#949FB1"
            //                     },
            //                     {
            //                         value : 120,
            //                         color : "#4D5360"
            //                     }

            //                 ]);
            //*/ // doughnut

        Timer{
            id:t
            interval: 100
            repeat: true
            running: true
            onTriggered:{
                chart.test+=10
                chart.requestPaint();
            }
        }
    }

}
