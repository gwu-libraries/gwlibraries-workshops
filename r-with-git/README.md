# RStudio + Git for Collaboration and Reproducibility

## Slides from presentation

[Slides as PDF](https://github.com/gwu-libraries/gwlibraries-workshops/blob/master/r-with-git/RStudio_with_Git.pdf)

## Setup instructions

If you already have R installed, skip to Step 2.  If you also have RStudio installed, skip to Step 3.  It would, however, be a good idea to bring your versions of both R and RStudio up to date.

***Attendees of the GW workshops:*** If you encounter any problems with these installations prior to the workshop, please contact me at kerchner@gwu.edu and I can try to assist.

### 0. Create a Github account (if you don't already have one)

|  |  |
|--|--|
| If you already have a Github account | Please make sure you know:<br>1. Your Github username<br>2. Your Github password<br>3. The email account you associated with your Github account |
| If you **don't** yet have a Github account | Go to https://github.com/ and create a free Github account.  Please remember your password and the email account you associate with your Github account |

Although we won't need it for this workshop, I would highly recommend for faculty and students to also take advantage of Github's education benefits (slightly different for faculty versus students) at: https://education.github.com/benefits 

### 1. Install R

Please follow the instructions at https://cran.r-project.org/ for installing R.

### 2. Install RStudio

RStudio be downloaded from https://www.rstudio.com/products/rstudio/download/. You will need the free Desktop version.

### 3. Determine whether your computer already has `git` installed.

Your computer may or may not already have `git` installed.  Here's one way to check:

|  |  |
| ----- | ---- |
| **MacOS** |     If you open the Terminal app and type:<br>`which git`<br>and you get a response like:<br> `/usr/bin/git`<br>then git is already installed.  If you do not get a path as a result, you might not have git installed.  |
| **Windows** | In the Windows Start menu search bar (usually in the bottom left), search for Git on your computer. If you get an App result, then git is already installed. |
 

### 4. If you _**don't**_ have `git` installed, install it

|  |  |
| ----- | ---- |
| **MacOS** |   Go to https://git-scm.com/download/mac, download and run the installer. Accepting all of the default selections is recommended. |
| **Windows** | Go to http://git-scm.com/download/win, download and run the installer.  Accepting all of the default selections is recommended. |

For further help and other ways of installing Git: https://happygitwithr.com/install-git.html


### 5. Configure Git location in RStudio

* Open RStudio
* Click **Tools -> Global Options -> Git/SVN**

* If `Git executable` shows (none), click `Browse` and select the git executable installed on your system

  On a Mac, this will likely be one of
  `/usr/bin/git`
  `/usr/local/bin/git`
  `/usr/local/git/bin/git`
  (you can also open the Terminal app and type `which git` to find git's location)
  
  On Windows, `git.exe` will likely be somewhere in `Program Files` (for example: `C:/Program Files/Git/bin/git.exe`)
 
* Check `Enable version control interface for RStudio projects`
  
* Click `OK`

### 6. Configure your user name and email

* Open RStudio
* Open the Terminal tab (it's next to the Console tab)
* Enter the following at the prompt (substitute _your_ name, unless your name is Jane Doe. Keep the quotation marks.)
```
git config --global user.name "Jane Doe"
```
* Enter the following at the prompt (substitute _your_ email, unless your email is `jane@example.com`. Keep the quotation marks.)
```
git config --global user.email "jane@example.com"
```
