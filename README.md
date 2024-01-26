# Basic API Wrapper exercise

This basic app literally only queries for one entry, and only for one endpoint, which is /game/{id}

The Token/Key that authenticates the request also only lives in the controller itself, not in the env file. This will be rectified at a later date.

The app also utilizes the HTTParty gem to make things easier, and to consolidate the request and client classes into a single class.

Error handling has not been fully implemented, but the groundwork has been laid.

Will be improved at a later date, but basic querying capabilities are there.

# Endpoints

- GET /
Queries to the external rawg.io api and returns the details of all the games currently in rawg's database

- GET /:slug
Query to the endpoint using the provided slug, returns the details fetched from rawg's database for the corresponding game slug