## Below are all the user story nouns

As a **person**,
So that I can use a **bike**,
I'd like a **docking station** to release a bike.

As a **person**,
So that I can use a good **bike**,
I'd like to see if a **bike** is working

## Below are all the user story verbs

As a person,
So that I **can use** a bike,
I**'d like** a docking station to **release** a bike.

As a person,
So that I **can use** a good bike,
I'**d like** to see if a bike is **working**

## Table represntation of user story

Objects|Messages
-------|--------
As a person | I'd like a docking station to release a bike, so I can use a bike
As a person | I'd like to see if a bike is working so I can use a good bike
As a bike | I need to be working
As a docking station | I need be able to release a bike

## Objects communicating with one another

person --request bike--> docking station --check if bike available --> bike

bike --is available?--> YES -->check if working?--YES-->release bike-->Docking station

bike --is working?-->NO-->don't release bike/call repair-->Docking station

bike --is available? NO -->don't release bike-->docking station
