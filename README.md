# README

To run this test you need Ruby v3.1.1 installed, then do:

```
  bundle install
  rake db:migrate
  rails s
```

Open your browser at http://127.0.0.1:3000/ and read the isntructions.


Acumera Reliant Hiring Process - Code Challenge
School, a.k.a. 💀️
An important part of the 💀️ platform is to allow teachers to clock-in/clock-out of their school center. When a teacher arrives at work, they clock-in, when they leave they clock-out, and the platform keeps track of these events.
Using this Ruby on Rails project, build an MVP of a timesheet application.
Your submission should meet the following criteria:
  [x] - 1. A user should be able to click a "Clock In" button to begin tracking time. 
  [x] - 2. A user should be able to click a "Clock Out" button to stop tracking time. 
  [x] - 3. A user should see a list of all their time entries. 
  [x] - 4. A user should see be able to export all their clockin/clockout results in a single CSV. 
Some things to note:
  [x] • A teacher will need to clock in and out multiple times a day (e.g., for lunch) 
  [x] • Time entries will need to be editable. 
  [x] • Time updates must be auditable, i.e. it must be possible to see the edit history of an Clock entry. 
  [x] • The application should support many users. 
  [ ] • Are there any validations the application should do? If so, how should it display errors to users?
    [X] - Users should access only his resources
    [ ] - Stop time should have a minimum time
    [ ] - Start time can not be greater than stop time. 
  [ ] • Testing is an important part of our workflow️, consider including tests for at least one part of the application. There is no need to add tests for everything 

What do we want to check with this simple test?
    • Basic understanding of coesion and coupling in programming. 
    • Basic organization 
        ◦ How you organize the git commits .
        ◦ Deliver a tar.gz to use without any intermediary files, i.e. create the tar.gz file with `git archive` command. 
        ◦ If needed, send additional instructions about how to run the application. 
    • Write tests for just one part of the application, but don't forget to tell us what part you tested! 
        ◦ At Reliant we use rspec for testing, but in this test you can write in any ruby test framework, rspec, minitest, etc. 
What we DON'T want to check with this simple test?
    • UI appearance, if you make it look good, ok, if not, no problem. 
Last words
To log in into the awesome 💀️ clock in/out system, access /users/sign_in. 	
	