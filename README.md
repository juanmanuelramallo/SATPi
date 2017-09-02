# SATPI

## This is work in progress

## Models

- Address
  - Country
  - State
  - Zip
  - Address

- Node
  - *Has one address*
  - *Has many sensors*
  - *Has many packages through sensors*
  - State: *[active, inactive, ...]*
  - Latitute
  - Longitude
  - Last update at

- Sensor
  - *Has many packages*
  - Type: *[level-o-meter, pluviometer]*
  - Last update at

- Package
  - *Belongs to Sensor*
  - Data

## How to send data from a node?
Each node and sensor has a unique id used to identify it.
There is an api endpoint called `/api/v1/packages/` accepting `post` actions.
This actions require the params: `sensor_id` and `data`
Its response is the `package` created it everything went ok. If it fails, it will render a informative json object.
TL;DR
```
post [domain]/api/v1/packages
{
  sensor_id: [id],
  data: [any number]
}
```
