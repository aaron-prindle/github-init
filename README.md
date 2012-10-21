github-init
==============

Features
-------------- 
github-init is a shell script that can be used to create a repository on github.com from the command line.
It uses the github APIv3 to do so.

Installation
--------------
To copy this git repository, go to the directory you want to download github-init and clone the repo there:

    git clone  https://github.com/aaron-prindle/github-init.git
Then you should alias the shell script so that you can access it more easily (you might want to add this to your .bashrc aliases):

    alias github-init="~/path-to-github-init/github-init.sh"

Example usage
--------------
I designed github-init to be used inside of the directory you want to make a repository.
Here is a example starting from making the project directory of to pushing remotely of how someone might use github-init

    mkdir project
    cd project
    github-init username description-of-repo
    (it will prompt you for github account password here, enter it)
    (what the above command does is create a git repository on github.com with the name of the folder you are in and the description supplied)
    git init
    touch README.md
    git add .
    git commit -a -m "initializing repo"
    git remote add origin git@github.com:username/project.git
    git push -u origin master

Reasoning
--------------
In doing this process, you can make the project without ever having to leave the command line.  It helps my workflow at least.  If you have any questions feel free to email me at aaprindle@gmail.com

    
