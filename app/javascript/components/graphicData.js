const dataGraph = () => {
  Highcharts.chart('graph_javascript_first', {
          chart: {
              type: 'column'
          },
          title: {
              text: "Comparatif de mon empreinte écologique"
          },
          xAxis: {
              categories: [
                  'Année 2019',
              ],
              crosshair: true
          },
          yAxis: {
              min: 0,
              title: {
                  text: 'tonnes / C02 e / an'
              }
          },
          tooltip: {
              headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
              pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
                  '<td style="padding:0"><b>{point.y:.1f} mm</b></td></tr>',
              footerFormat: '</table>',
              shared: true,
              useHTML: true
          },
          plotOptions: {
              column: {
                  pointPadding: 0.2,
                  borderWidth: 0
              }
          },
          series: [{
              name: 'Mes statistiques',
              data: [3.1]

          }, {
              name: "Statistiques d'un français moyen",
              data: [3.9]
          }]
      });
  Highcharts.chart('graph_javascript_second', {
          chart: {
              type: 'column'
          },
          title: {
              text: "Comparatif de mon empreinte carbone"
          },
          xAxis: {
              categories: [
                  'Année 2019',
              ],
              crosshair: true
          },
          yAxis: {
              min: 0,
              title: {
                  text: 'tonnes / C02 e / an'
              }
          },
          tooltip: {
              headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
              pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
                  '<td style="padding:0"><b>{point.y:.1f} mm</b></td></tr>',
              footerFormat: '</table>',
              shared: true,
              useHTML: true
          },
          plotOptions: {
              column: {
                  pointPadding: 0.2,
                  borderWidth: 0
              }
          },
          series: [{
              name: 'Mes statistiques',
              data: [11.1]

          }, {
              name: "Statistiques d'un français moyen",
              data: [12]
          }]
      });
}
export { dataGraph };
