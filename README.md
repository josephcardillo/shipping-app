# README

## ShipEx

A Rails application for shippers to help them organize all of the ships in their fleet, with a user login system using Devise. The application allows users to:

* Sign up, login and logout
* Create new boats that will associate with the user’s profile.

### Boats have the following attributes:
  * Name
  * Amount of containers its able to ship
  * Location (stored as a string)

### Jobs have the following attributes:
* Description
* Origin (stored as a string)
* Destination (stored as a string)
* Cost
* Amount of containers needed for job

## VALIDATIONS

### Boats:
* Must have a unique name
* Locations are pulled from a valid list of locations (using a hard-coded list)

### Jobs:
* Must have a unique name
* Cost must be above $1000 for each job
* Description must be at least 50 characters
* Origin and destinations must be pulled from a valid list of locations (use a hard-coded list)

## Rails UJS and Paperclip
* Enables the user to add a boat to a job without reloading the page
* Using the paperclip gem, gives a user the ability to upload a photo of a ship when the ship is being created
