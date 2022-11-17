event_1 = Event.find_or_create_by(
  title: "Anna's Birthday!",
  date: 'November 23, 2022',
  time: '5:45PM',
  city: 'Boston',
  state: 'MA',
  zip: '01234',
  address: '1 Real Street',
  event_type: 'Chilling',
  description: 'Get drunk.'
)

event_2 = Event.find_or_create_by(
  title: 'LA Friday Funtime',
  date: 'November 30, 2022',
  time: '2:45PM',
  city: 'Boston',
  state: 'MA',
  zip: '01234',
  address: '1 Real Street',
  event_type: 'Chilling',
  description: 'Playing with the squad'
)

event_3 = Event.find_or_create_by(
  title: 'Candlepin Bowling',
  date: 'November 25, 2022',
  time: '7:00PM',
  city: 'Cambridge',
  state: 'MA',
  zip: '55555',
  address: '1 Homer Simpson Ave',
  event_type: 'Chilling',
  description: 'Drinks, bowling, good times.'
)

user_1 = User.create(
  email: "email@email.com",
  password: "password",
)

user_2 = User.create(
  email: "phil@email.com",
  password: "password",
)