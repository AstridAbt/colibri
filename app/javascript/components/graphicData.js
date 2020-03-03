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
          text: 'Mon empreinte carbone vs le reste du Monde',
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
              depth: 25,
              colorByPoint: true
          }
      },
      series: [{
          data: [129.9, 184.0, 216.0, 109.2, 87.9],
          name: 'Cylinders',
          showInLegend: false
      }],
      colors: ["blue", "yellow", "red", "green"],
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
          text: "t/CO2 e",
          margin: 40,
          },
          gridLineColor: "#eeeeee"

      }],
      colorAxis: [{
          lineColor: "#ff002e"
      }],
      credits: {
          enabled: false
      },
  });
}
export { dataGraph };
