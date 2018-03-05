import React from "react"
import PropTypes from "prop-types"
import 'react-dates/initialize';
import { DateRangePicker } from 'react-dates';

class DatesSelection extends React.Component {
  constructor(props) {
    super(props);
    moment.locale('fr');
    this.state = {
      startDate: moment(),
      endDate: moment(),
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
            startDateId="details-start-date"
            endDate={this.state.endDate}
            endDateId="details-end-date"
            onDatesChange={({ startDate, endDate }) => { this.setState({ startDate, endDate })}}
            focusedInput={this.state.focusedInput}
            onFocusChange={(focusedInput) => { this.setState({ focusedInput })}}
            displayFormat={this.state.displayFormat}
            showClearDates
            startDatePlaceholderText="Départ"
            endDatePlaceholderText="Retour"
          />
        </div>
      </div>
    );
  }
}

export default DatesSelection
