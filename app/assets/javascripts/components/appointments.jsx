var Appointments = React.createClass({
  render: function() {
    return (
      <div>
        {this.props.appointments.map(function(appointment){
          return (
            <div>
              <h3>{appointment.title}</h3>
              <h3>{appointment.appointment_time}</h3>
            </div>
            )
        })}
      </div>
    )
  }
});
