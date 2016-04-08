# NSF-16-533
Repo to house materials for 2016 proposal to NSF 16-533.

INSTRUCTIONS FOR CONTRIBUTING:

The GITHub Repo is at:

https://github.com/wganderson12/NSF-16-533.git

But you probably knew that since you have are reading a file from it.

To get a copy of this repo on your computer:

# git clone https://github.com/wganderson12/NSF-16-533.git

To make the pdf files for the repo, we have makefiles. To make everything:

# make all

Before editing or adding files, pull the latest changes:

# git pull

Make any changes you want. Compile and make sure there are no errors before
committing your changes. View the PDFs to make sure they look like you want them to. When you are ready to commit your changes to the repo, first get rid of all
the extra files that we don't need copies of:

# make clean

Pull one more time just before committing to make sure your adding to the
latest version:

# git pull

Add any new files to the repo. From the top directity of the repo:

# git add .


Commit your changes:

# git commit -m "Brief message describing your changes here."

Finally, push your changes up to the GITHub. You will need GITHub account to
do this:

# git push origin master
 


