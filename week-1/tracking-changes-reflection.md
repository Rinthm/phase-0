**How does tracking and adding changes make developers' lives easier?**
By tracking and adding changes, a developer can make changes/edit a file without altering the master file. This means any number of developers can edit the same file simultaneously without "stepping on each others' toes," thus making it a lot quicker and easier to work as a team. This also means any potential changes will have a date, username, and description of what changes were made. That way, before the changes are finalized they can be reviewed. 

**What is a commit?**
A commit is basically when you save any changes you've made in your branch for future approval/submission.

**What are the best practices for commit messages?**
Good commit messages are in the imperative, present tense. They should have a short, capitalized title, and then a more detailed explanation of what changes were made in relation to what was previously in the file.

**What does the HEAD^ argument mean?**
HEAD^ refers to the previous file that had been committed. 

**What are the 3 stages of a git change and how do you move a file from one stage to the other?**
The 3 stages are editing/working on the file, adding the file to the stage using "git add", and committing it using "git commit -m "Your message here"". 

**Write a handy cheatsheet of the commands you need to commit your changes?**
"git add file_name" - Adds file_name to the stage.
"git commit -m "Your message here"" - commits changes.

**What is a pull request and how do you create and merge one?**
A pull request is essentially when you merge any changes/edits you've made into the master branch. This will save your files remotely on Github. You create and merge a pull request in your Github account. You click on the "pull request" icon and make sure the base fork is under your username. Then, you click on the "Create pull request" icon. Then you just click "Merge pull request" and enter your username and password when prompted. Lastly, you should delete the branch to keep your branched clean.

**Why are pull requests preferred when working with teams?**
Pull requests are preferred when working with teams because they allow developers to remotely submit changes, and before the changes are made to the master branch, the rest of the team can review the changes before merging.