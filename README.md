#GitMail
This is a simple ruby application that takes an input of a github repository and outputs all unique email addresses associated with the repo. It does this by cloning the repository, parsing through git logs to find email addresses and names, finding unique name/email combinations, sorting them, and outputting them to the temrinal. After this, it will delete the temporary folder it made to clone the repo so as not to clutter up your computer.

To use this application, simply run gitmail from your terminal with the argument of the repo you are trying to find the emails of.

###Example
Run this command from your terminal -
ruby gitmail.rb kravinskylev/gitmail
It doesn't matter what directory you're in when you run this command.
That's all there is to it!

###Known Issues
* *"temp_email" already exists*
* *no email addresses are returned*
* *email address is unused*

If you already have a folder named "temp_email", this program will not work correctly. It tries to clone the repo you input into a folder it creates called temp_folder. If temp_folder already exists, the program by default will not force the repo into the already existing folder. I suggest renaming your temp_email folder, or, if you have some ruby knowledge, editing the finder.rb file to create a temporary folder called something else.

If no email addresses are returned, this means that the github user set his email to private. Most emails are not private however - even when an email does not appear on a person's github profile, it still usually is public in their git logs.

If the email address it returns is a bunk email, then this user either outsmarted or outstupided you. They outsmarted you if they want to associate a public email with their github commits in order to make their daily commits look impressive while still remaining un-contactable, and they outstupided you if they set their email to something not associated with their profile.

**That's all there is to it!**
