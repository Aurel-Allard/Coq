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

  handleChange(event) {
    console.log(this.state.startDate);
    }

  render() {
    return (
      <div>
        <div className="DatePicker">
          <DateRangePicker
            startDate={this.state.startDate}
            startDateId="start_date"
            endDate={this.state.endDate}
            endDateId="end_date"
            onDatesChange={({ startDate, endDate }) => { this.setState({ startDate, endDate })}}
            focusedInput={this.state.focusedInput}
            onFocusChange={(focusedInput) => { this.setState({ focusedInput })}}
            displayFormat={this.state.displayFormat}
            showClearDates
            startDatePlaceholderText="Départ"
            endDatePlaceholderText="Retour"
            isDayBlocked={isDayBlocked(2)} autofocus
          />
        </div>
      </div>
    );
  }
}

export default DatesSelection
