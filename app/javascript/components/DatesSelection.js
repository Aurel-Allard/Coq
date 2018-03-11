import React from "react"
import PropTypes from "prop-types"
import 'react-dates/initialize';
import { DateRangePicker } from 'react-dates';

class DatesSelection extends React.Component {
  constructor(props) {
    super(props);
    moment.locale('fr');
    this.state = {
      startDate: null,
      endDate: null,
      focusedInput: null,
      displayFormat: "DD/MM/YYYY",
    };
  }

  render() {
    var blocked = [];
    for (var i = 0; i < 7; i++){
      blocked.push(moment().add(i, 'days'));
    }
    const isDayBlocked = day => blocked.filter(d => d.isSame(day, 'day')).length > 0;

    var overbooked = [];
    for (var i = 0; i < 7; i++){
      overbooked.push();
    }
    const isDayHighlighted = day => overbooked.filter(d => d.isSame(day, 'day')).length > 0;

    const start = this.state.startDate;
    const end = this.state.endDate;
    if (start != null && end != null) {
      console.log(end.diff(start, 'days'));
    }

    return (
      <div>
        <div className="DatePicker">
          <DateRangePicker
            startDate = {this.state.startDate}
            startDateId = "start_date"
            endDate = {this.state.endDate}
            endDateId = "end_date"
            onDatesChange = {({ startDate, endDate })  => { this.setState({ startDate, endDate })}}
            focusedInput = {this.state.focusedInput}
            onFocusChange = {(focusedInput)  => { this.setState({ focusedInput })}}
            displayFormat = {this.state.displayFormat}
            showClearDates
            startDatePlaceholderText = "Départ"
            endDatePlaceholderText = "Retour"
            isDayBlocked = {isDayBlocked}
            isDayHighlighted = {isDayHighlighted}
            hideKeyboardShortcutsPanel
          />
        </div>
      </div>
    );
  }
}

export default DatesSelection
