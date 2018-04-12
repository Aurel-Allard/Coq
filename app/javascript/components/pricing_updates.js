function pricing_updates () {
  // const dateChange = document.getElementById("details-banner");
  // dateChange.addEventListener("click", (event) => {

  //   var sd = $(start_date)[0];
  //   var ed = $(end_date)[0];
  //   // var diff = ed.diff(sd, 'days');

  //   if (sd != null && ed != null) {
  //     var diff = ed.diff(sd, 'days');
  //     var base_price;
  //     switch(diff) {
  //       case 0:
  //         base_price = 89;
  //         break;
  //       case 1:
  //         base_price = 119;
  //         break;
  //       case 2:
  //         base_price = 169;
  //         break;
  //       default:
  //         base_price = 60 * diff;
  //         break;
  //     }

  //     if ($(detail_housing_type).val() != "Nid douillet") {
  //       var housing;
  //       housing = 20 * diff;
  //     }

  //     var total;
  //     total = base_price + housing;
  //     console.log(total);

  //     document.getElementById("display-current-price").innerHTML = total + "<h4>€/p</h4>";
  //   }
  // });
}

export { pricing_updates };
