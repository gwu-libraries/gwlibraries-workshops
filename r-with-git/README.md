# RStudio + Git for Collaboration and Reproducibility

## Setup instructions

If you already have R installed, skip to Step 2.  If you also have RStudio installed, skip to Step 3.  It would, however, be a good idea to bring your versions of both R and RStudio up to date.

***Attendees of the Nov. 2019 workshop at GWSPH:*** If you encounter any problems with these installations prior to the workshop, please contact me at kerchner@gwu.edu and I can drop by to assist.

### 1. Install R

Please follow the instructions at https://cran.r-project.org/ for installing R.

### 2. Install RStudio

RStudio be downloaded from https://www.rstudio.com/products/rstudio/download/. You will need the free Desktop version.

### 3. Install Git

I plan to update this section soon (by a few weeks before the workshop), but if you're really eager to install now, you can refer to these instructions:

#### MacOS

You might already have `git` installed.  If you open the Terminal app and type:

`which git`

and you get a response like:

`/usr/bin/git`

then git is already installed.  Otherwise, proceed to:

https://happygitwithr.com/install-git.html#macos

#### Windows

https://happygitwithr.com/install-git.html#install-git-windows

### 4. Configure Git location in RStudio

* Open RStudio
* Click **Tools -> Global Options -> Git/SVN**

  If Git executable shows (none), click Browse and select the git executable installed on your system

  On a Mac, this will likely be one of
  `/usr/bin/git`
  `/usr/local/bin/git`
  `/usr/local/git/bin/git`
  (you can also open the Terminal and type `which git` to find git's location)
  On Windows, `git.exe` will likely be somewhere in `Program Files`
  
  Click OK

### 5. Create a free Github account (if you don't already have one)

Go to https://github.com/ and create a free Github account.

Although we won't need it for this workshop, I would highly recommend for faculty and students to also take advantage of Github's education benefits (slightly different for faculty versus students) at: https://education.github.com/benefits 


