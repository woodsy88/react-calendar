const Appointment = ({appointment}) =>  {

    return (
      <div className='appointment card'>
        <h3>{appointment.title}</h3>
        <p>{formatDate(appointment.appointment_time)}</p>
      </div>
      )

}
