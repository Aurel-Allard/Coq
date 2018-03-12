function pricing_updates () {
  const dateChange = document.getElementById("date-change");
  dateChange.addEventListener("click", (event) => {
    if (start_date != null && end_date != null) {
      console.log(end_date.diff(start_date, 'days'));
    } else {
      console.log("No dates");
    }
  });
}

export { pricing_updates };
