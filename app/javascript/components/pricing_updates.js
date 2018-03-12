function pricing_updates () {
  const dateChange = document.getElementById("date-change");
  dateChange.addEventListener("click", (event) => {
    if (start_date != null && end_date != null) {
      var diff = end_date.diff(start_date, 'days');
      var price;
      switch(diff) {
        case 0:
          price = 90;
          break;
        case 1:
          price = 120;
          break;
        case 2:
          price = 170;
          break;
        default:
          price = 65;
          break;
      }
      document.getElementById("display-current-price").innerHTML = price + "<h4>€ par voyageur</h4>";
      console.log(people_count);
    } else {
      console.log("No dates");
    }
  });
}

export { pricing_updates };
