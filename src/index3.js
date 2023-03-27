var data = [{x: 0, y: 20}, {x: 150, y: 150}, {x: 300, y: 100}, {x: 450, y: 20}, {x: 600, y: 130}]

var svg = d3.select("#line").append("svg").attr("width", 800).attr("height", 200)

var lineFunc = d3.line()
  .x(function(d) { return d.x })
  .y(function(d) { return d.y })


svg.append('path')
  .attr('d', lineFunc(data))
  .attr('stroke', 'black')
  .attr('fill', 'none');