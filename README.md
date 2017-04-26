
*Made for a class project*

# Description

The application allows multiple hospitals to use one software with a unique **subdomain** and the
data of each hospital is separated at the schema level so no hospital can interact with other
hospital data as it is scoped at the schema level.

The application will allow a patient to create an account which will be used to store patient
data, prescriptions and diagnosis data.

User can search availability of a doctor and their details using their account and book an
appointment.

Using application accounts can be created for doctors, patients, staff and application admin.
The patient will be able to learn about the doctor’s availability and book appointment
accordingly.

It can be used by the hospital’s pharmacy to dispense medicines without any printed
prescription by using the user id instead.

A mobile application will be used to allow patients to book appointments using their phones.

# Technical Details

- Ruby on Rails 5 - Backend APIs + Server rendered pages
- Postgresql database
- Angular 2 - Parts of the Frontend (Mainly for two way data binding)
- Ionic 2: Cross Platform Mobile App Development (Cordova)
- REST API provided by the Rails Backend
- Consumed by the Angular 2 frontend and the Mobile Application
- Faker Gem (To generate fake patient & doctor seed data)
- Apartment for multitenancy


