$(function () {
    function display(bool) {
        if (bool) {
            $("#container").show();
        } else {
            $("#container").hide();
        }
    }

    display(true)
    // STATUS KCAL
    $('#circle').circleProgress({ 
        value: 0.899,
        size: 53,
        fill: {
            color: '#a15d1c'
        }
      });
    // STATUS h2o
      $('#circle1').circleProgress({
        value: 0.15,
        size: 53,
        fill: {
            color: '#a15d1c'
        }
      });
    // STATUS fett
      $('#circle2').circleProgress({
        value: 0.20,
        size: 53,
        fill: {
            color: '#a15d1c'
        }
      });
    // STATUS zucker
      $('#circle3').circleProgress({
        value: 0.25,
        size: 53,
        fill: {
            color: '#a15d1c'
        }
      });

    window.addEventListener('message', function(event) {
        var item = event.data;
        if (item.type === "statussystem") {
            if (item.show === true) {
                display(true)
                $('#circle').circleProgress('value', item.kcal);
                $('#circle1').circleProgress('value', item.h2o);
                $('#circle2').circleProgress('value', item.fett);
                $('#circle3').circleProgress('value', item.zucker);
            } else {
                display(false)
            }
        }
    })
})


{/* <div class="chart" id="graph" data-text="Kcal" data-percent="15"></div>
<div class="chart1" id="graph1" data-text="H²o" data-percent="25"></div>
<div class="chart2" id="graph2" data-text="Fett" data-percent="35"></div>
<div class="chart3" id="graph3" data-text="Zucker" data-percent="45"></div> */}