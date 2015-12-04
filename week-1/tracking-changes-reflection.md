## Tracking Changes Reflection
 
 - *How does tracking and adding changes make developers' lives easier?* They identify which files and/or directories will be included in the next commit. That way you can choose whether or not to include changes.
 
 - *What is a commit?* The commit saves a bundle of changes to the branch.
 
 - *What are the best practices for commit messages?* Create a summary header that's short and specific. If more detail is necessary, put it in paragraph or bullet form below that header. List the changes as imperatives.
 
 - *What does the HEAD^ argument mean?* It refers to the last commit you did.
 
 - *What are the 3 stages of a git change and how do you move a file from one stage to the other?* 
   1. **git add** stages the changes so they're ready to be included in the commit. If you want to add just a single file or directory, make it **git add file-name**. If you want to add everything in your current directory, make it **git add .**
   2. **git commit - m "commit message"** saves your changes to your local
   3. **git push origin branch_name** pushes *branch_name* to the remote repo titled *origin*
 
 - *Write a handy cheatsheet of the commands you need to commit your changes?*
   - **git branch** confirm I'm on the master
   - **git pull** confirm there's nothing waiting for me to pull it from GitHub
   - **git checkout -b branch_name** create a new branch on my local under master
   - **git add .** or **git add file name** adds stuff to the things ready to be committed
   - **git commit -m "commit message"** commits the staged items to branch with a summary of what I'm trying to do
   - **git push origin branch_name** pushes *branch_name* to remote repo titled *origin*
   - go do a bunch of stuff on GitHub to pull the changes from branch_name into the master there, merge them, resolve any conflicts and generally clean up the remote repo
   - **git checkout master** shows local master
   - **git pull origin master** merges the new remote master to my local master

 - *What is a pull request and how do you create and merge one?* A pull request fetches any committed changes that have not yet been incorporated into the master. After committing changes from your local, you pull them into GitHub. When starting a new session locally, pull others' changes from GitHub to your home environment. 

 From your home terminal, enter **git pull** to get any un-merged changes into your local master. That **pull** command both fetches the changes and merges them into your local master.

 From GitHub, click the **compare and pull request** button. You'll be able to see the changes that are waiting and then click **create pull request**. To merge the changes into the master on GitHub, click the button **merge pull request** and then **confirm merge**. Once that's done, delete the branch since it's now identical to the master and therefore not useful.

 - *Why are pull requests preferred when working with teams?* The only alternative to pull requests I've seen so far is the fetch & merge combination. I imagine that the pull request is preferred because it would be possible to forget the second step and then you'd wind up with an un-merged master file.