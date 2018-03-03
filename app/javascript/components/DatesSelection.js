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
        //
      };
    }

    render() {
      return (
        <div className="DatePicker">
          <DateRangePicker
            startDate={this.state.startDate}
            endDate={this.state.endDate}
            onDatesChange={({ startDate, endDate }) => { this.setState({ startDate, endDate })}}
            focusedInput={this.state.focusedInput}
            onFocusChange={(focusedInput) => { this.setState({ focusedInput })}}
            displayFormat={this.state.displayFormat}
            showClearDates
            startDatePlaceholderText="Départ"
            endDatePlaceholderText="Retour"
          />
        </div>
      );
    }
  }

export default DatesSelection
