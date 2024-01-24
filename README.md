# Chromebook-R-Install

All credit to this [tutorial](https://levente.littvay.hu/chromebook/)  

## Steps: 

1. Open Chrome
2. Type `chrome://flags` into the search bar
3. Search on the page for "Debian version for new Crostini containers" (Use Control+F)
4. Set option to "Bullseye" and restart chromebook
5. Open settings and go to "Advanced -> Developers -> Linux development environment -> Turn on.". I recommend using the default Linux settings/partition size.
6. Download the file either manually or by cloning this repository
7. Open the terminal and run the command: `bash r-install-script.sh`
8. Optionally, delete the rstudio.deb file after to clean up.
