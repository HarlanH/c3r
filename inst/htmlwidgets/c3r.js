HTMLWidgets.widget({

  name: 'c3r',

  type: 'output',

  initialize: function(el, width, height) {
    //console.log("initialize");
    return {
      // TODO: add instance fields as required
    }

  },

  renderValue: function(el, x, instance) {
    //console.log("renderValue");
    //el.innerText = x.message;
    //console.log(el);
    //console.log(x);
    //console.log(instance);

    var xs = {};
    xs[x.x] = x.y;

    c3.generate({
      bindto: '#' + el.id,

      data: {
          xs: xs,
          // iris data from R
          columns: [
              Array.prototype.concat(x.x, x.data[x.x]),
              Array.prototype.concat(x.y, x.data[x.y]),
          ],
          type: 'scatter'
      },
      axis: {
          x: {
              label: x.x,
              tick: {
                  fit: false
              }
          },
          y: {
              label: x.y
          }
      }
    });
  },

  resize: function(el, width, height, instance) {
    //console.log("resize")
  }

});
