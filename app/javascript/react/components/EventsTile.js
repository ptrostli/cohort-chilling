import React from "react"
import { Link } from "react-router-dom"

const EventsTile = (props) => {
  const { event } = props  

  return (
    <ul>
      <Link to={`/events/${event.id}`}>
        <li><h5>{event.title}</h5></li>
      </Link>
    </ul>
  )
}

export default EventsTile