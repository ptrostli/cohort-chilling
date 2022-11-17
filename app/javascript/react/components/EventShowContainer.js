import React, { useState, useEffect } from "react";

const EventShowContainer = (props) => {
  const [event, setEvent] = useState({})

  const getEvent = async() => {
    try {
      const eventId = props.match.params.eventId
      const response = await fetch(`/api/v1/events/${eventId}`)
      if (!response.ok) {
        const errorMessage = `${response.status} (${response.statusText})`
        const error = new Error(errorMessage)
        throw(error)
      }
      const fetchedEvent = await response.json()
      setEvent(fetchedEvent.event)
    } catch(err) {
      console.error(`Error: ${err.message}`)
    }
  }

  useEffect(() => {
    getEvent()
  }, [])
  
  return (
    <div>
      {event.title}
    </div>
  )
}

export default EventShowContainer