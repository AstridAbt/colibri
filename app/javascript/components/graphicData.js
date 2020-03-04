const dataGraph = () => {
  var countries = [{
      name: 'Moi',
      flag: 323315,
      color: 'rgb(201, 36, 39)'
  }, {
      name: 'Union-Européenne',
      flag: 323344,
      color: 'rgb(201, 36, 39)'
  }, {
      name: 'Etats-Unis',
      flag: 323310,
      color: 'rgb(0, 82, 180)'
  }, {
      name: 'Inde',
      flag: 323303,
      color: 'rgb(0, 0, 0)'
  }, {
      name: 'Suède',
      flag: 323364,
      color: 'rgb(240, 240, 240)'
  }]

const categories = []
countries.forEach(function (country) {
  categories.push('<span><img src="https://image.flaticon.com/icons/svg/323/' + country.flag + '.svg" style="width: 30px; height: 30px;"/><br></span>');
});

  Highcharts.chart('graph_d', {
      chart: {
          type: 'cylinder',
          backgroundColor: "transparent",
          options3d: {
              enabled: true,
              alpha: 15,
              beta: 15,
              depth: 50,
              viewDistance: 25
          }
      },
      accessibility: {
          enabled: false
      },
      title: {
          text: '',
          style: {"fontSize": "23px", "color": "black", "fontWeight": "bolder",
          "fontFamily": "Raleway"
        }
      },
      navigation: {
          buttonOptions: {
            enabled: false
          }
      },
      plotOptions: {
          series: {
              depth: 50,
              colorByPoint: true
          }
      },
      series: [{
          data: [129.9, 184.0, 216.0, 109.2, 87.9],
          name: 'Cylinders',
          showInLegend: false,
          enabled: false
      }],
      colors: ["#4d80e4", "#a6b1e1", "#ffaaa5", "#feb377", "#ffe75e"],
      xAxis: [{
          gridLineWidth: 0,
          labels: {
            useHTML: true,
            animate: true,
          },
          categories: categories
      }],
      yAxis: [{
          title: {
          text: "T / CO2 E",
          margin: 15,
          style: {
            color: "$gray",
            fontSize: 18,
          },
          },
          gridLineColor: "grey",
          labels: {
            style: {
              color: "$gray",
              fontSize: 14
            }
          },
      }],
      tooltip: {
        enabled: false
      },
      colorAxis: [{
          lineColor: "#white"
      }],
      credits: {
          enabled: false
      },
  });
}
export { dataGraph };
