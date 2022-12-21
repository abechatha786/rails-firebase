# README

## Rails-firebase Authentication:

This Rails App provides apis to authenticate user from firebase. User can signin after authentication. User will be saved to rails db after successfull signup response from firebase. You can check users in firebase console. If any thing goes wrong firebase will send relevant error messages. You can check user notes if it is authenticated.

This README would normally document whatever steps are necessary to get the
* Services (job queues, cache servers, search engines, etc.)

### Signup
* For signup You have to enter your username and password and it will be saved to rails db as well as firebase after successs response. Here are the end-points for sign up.
* curl --location --request POST 'http://localhost:3000/signup?email=abdullah@test.com&password=abdullah123' \

### Signin
* User can sign in with authenticated username and password. Below are the request url for sign in
* curl --location --request POST 'http://localhost:3000/signin?email=abdullah@test.com&password=abdullah123' \

### notes
* Signed In user can see their notes otherwise error will be raised from firebase.
* curl --location --request GET 'http://localhost:3000/notes' \
