# 1.1 Think About Time Reflection

I learned about the concept of “flow”, counterintuitive productivity, meditation, habit forming (tiny habits), time boxing, and probably a few other things I can’t recall right now! It’s hard to choose one topic that particularly interested me, as they all had their own merits. I really enjoyed the concept of “flow” and ways to potentially measure it. I have experienced this state a lot in my life and constantly attempt to enter into it whenever I can.

Time boxing is when a group of people agree on a set amount of time to work towards a goal rather than working without a timebox until the goal is completed. This idea can be used in phase 0 to better manage assignments. I think it will be especially useful for paired programming assignments, as a pair can agree on a set amount of time to complete the task(s) in a reasonable amount of time while still respecting each others’ schedules. It can also help to prevent entering a rabbit hole while working!

I currently don’t have a particular way of managing my time. I guess I could say I try to just go with the flow, but there are also times where I have to make myself do things I know I need to do. I definitely need to work on my time management, as I am easily distracted and often find myself procrastinating and stressing out to get things done. I’d give myself a very average 5/10 for time management. :)

I already got the Headspace app and plan on using that during phase 0 (and just in life in general!) to help reduce anxiety and get into “flow” mode. I also plan on forming micro habits involving phase 0 (e.g. work for 15 minutes on an assignment after eating a meal). I can see myself referring back to a lot of these methods/ideas during phase 0! I guess my overall plan is to utilize these tools as I go based on which feels most applicable at the time. For example, if I am spending too much time on assignments, focus on time boxing; if I am stressing and anxious over an assignment/task, focus on meditation or “flow”; etc.

I also need to start using a calendar… :)

# 1.2 The Command Line Reflection

1. A shell is a programming environment (e.g. Terminal) that takes commands and allows the user to control/edit their computer’s function. “Bash” is a type of shell; the default for Terminal.
2. The most challenging thing for me was trying to memorize all of the commands and how they function. It was hard not to go back and look at my cheat sheet!
3. I was able to successfully use all of the commands, however when I created the “ex12.txt” file and saved it to my desktop, I couldn’t figure out how to access it from Terminal. I had to manually move it into the “temp” folder to continue.
4. I think knowing the “man *” (help) command is one of the most important because you can get help knowing what any given command does. Beyond that, I just think it really depends on what you are trying to accomplish.
5. **pwd** - Print working directory. Tells you where you are.

**ls** - Lists which files are in the current working directory.

**mv** - Moves files a file/directory.

**cd** - Changes directory.

**../** - Moves up one directory in “directory tree”.

**touch** - (Couldn’t remember off top of head!) Makes an empty file.

**mkdir** - Makes a new directory.

**less** - Reads a file.

**rmdir** - Removes a directory.

**rm** - Removes a file.

**help** - Gives information on a given command (I used “man” for OS X)

# 1.4 Forking and Cloning Reflection

My (super sexy) instructions:

--------------------------------

To **create a new repo**, you will need to do the following. First, go to log into your Github account. At the top right of your screen to the left of your account avatar, there should be a “+” sign. Click on this, and click on “New repository”. Then give your new repo a name, customize it, and click “Create repository” when you’re done. Ya did it!

To **fork a repo**, click on the link to the desired repo. Then, click on the “Fork” icon (top-right of screen) and select the desired fork location. DONE.

To **clone a repo**, buy or make a cloning machine and chuck it in there for a few minutes. Just kidding! There is a “clone URL” on the right of your screen (when you are in the desired repository). Copy that URL! Then go to your shell and find your way to your git account if you aren’t already there. Now type in “git clone [URL]” where [URL] is the URL that you just copied. BOOM! Nailed it. To check that it indeed worked, type “-ls” and you should see the newly cloned repository just straight chillin’ locally in your git account.

-------------------------------

When you fork a repository, you gain access to the files within that repository, but won’t make any changes to the repository you forked from. This is good for working on open source projects.

The setup of git and Github wasn’t too difficult. I did accidentally clone "phase-0" into “p0-cli-exploration”, but in doing so I learned how to remove the file in the shell and then clone it correctly into my git account.