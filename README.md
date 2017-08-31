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

## Nodes

- Each node hast to send the data with the following JSON format

```
  id: [id of the current node],
  [
    { id: [id of the sensor_a], data: [value to send from the sensor] },
    { id: [id of the sensor_b], data: [value to send from the sensor] },
    ...
  ]
```
