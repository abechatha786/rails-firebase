# README

### Rails-firebase Authentication:

## Firebase:
You need to create an account on Firebase to get the following keys:
```sh
   FIREBASE_KEY=FIREBASE_KEY
   ```

This Rails App provides apis to authenticate user from firebase.

## Signup
* For signup You have to enter username and password and it will be saved to firebase, after successs response from firebase, same user will be create in our database. 

 ```sh
   curl --location --request POST 'http://localhost:3000/signup?email=abdullah@test.com&password=abdullah123' \
   ```

## Signin

* User can sign in with authenticated username and password.
```sh
   curl --location --request POST 'http://localhost:3000/signin?email=abdullah@test.com&password=abdullah123' \
   ```

## Notes
* Only Loggedin user can see their notes otherwise error will be raised.
```sh
   curl --location --request GET 'http://localhost:3000/notes' \
   ```
