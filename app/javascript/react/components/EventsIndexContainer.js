import React, { useState, useEffect } from 'react'
import { Link } from 'react-router-dom'
import EventsTile from './EventsTile'

const EventsIndexContainer = (props) => {
  const [events, setEvents] = useState([])

  const getEvents = async () => {
    try {
      const response = await fetch("api/v1/events")
      if (!response.ok) {
        const errorMessage = `${response.status} - (${response.statusText})`
        const error = new Error(errorMessage)
        throw(error)
      }
      const fetchedEvents = await response.json()
      setEvents(fetchedEvents.events)
      // setFeaturedEvent(fetchedEvents.events[Math.floor(Math.random() * fetchedEvents.events.length)])
    } catch(err) {
      console.error(`Error in fetch: ${err.message}`)
    }
  }

  useEffect(() => {
    getEvents()
  }, [])

  const eventsList = events.map((event) => {
    return (
      <EventsTile 
        key={event.id}
        event={event}
      />
    )
  })

  return (
    <div>
      <h1>E V E N T S</h1>
      {eventsList}
      <Link to={`/`}>Home</Link>
    </div>
  )
}
export default EventsIndexContainer