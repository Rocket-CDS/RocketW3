# RocketW3 Skin

A free open source skin for DNN using W3.CSS

[https://www.w3schools.com/w3css/default.asp](https://www.w3schools.com/w3css/default.asp)


## Usage
[https://github.com/Rocket-CDS/RocketW3/blob/main/RocketW3.md](https://github.com/Rocket-CDS/RocketW3/blob/main/RocketW3.md)

## Installation
- Download the Install package from the GitHub release of the skin.  
- Install the Skin onto a DNN installation from Host/Extensions.  (do not install via Admin/Extensions)

## Customization
- Install the Skin onto a DNN installation from Host/Extensions.  (do not install via Admin/Extensions)
- Clone the Skin from GitHub into the "\Portals\_default\Skins" folder.

The "\Portals\_default\Skins\RocketW3\Containers" folder is a copy of the "\Portals\_default\Containers\RocketW3" folder.  This is to only have files in 1 GitHub repository.  If the repo has changed since the last install the Container files will need to be copied to the "\Portals\_default\Containers\RocketW3" folder.  
- Changes to containers will need to be made on the "\Portals\_default\Containers\RocketW3" folder, and then copied to the "\Portals\_default\Skins\RocketW3" folder when a commit to GitHub is made.

## Building a installation Package  

The creation of the installation package is manually done.  

### If Containers have been changed
- Copy the contents of the "\Portals\_default\Containers\RocketW3" folder to the "\Portals\_default\Skins\RocketW3\Containers" folder.
- Zip the contents of "\Portals\_default\Skins\RocketW3\Containers" (content files should be on the root of the zip.)
- Rename the zip file to "ResourcesContainers.zip"
- Copy the "ResourcesContainers.zip" file to the "\Portals\_default\Skins\RocketW3\Installation" folder.

### If the Skin has been changed
- Zip the contents of "\Portals\_default\Skins\RocketW3" (content files should be on the root of the zip.)
- Remove the "\Containers" folder.
- Remove the "\Installation" folder.
- Rename the zip file to "ResourcesSkin.zip"
- Copy the "ResourcesSkin.zip" file to the "\Portals\_default\Skins\RocketW3\Installation" folder.

### Create the install zip package

- Zip the contents of "\Portals\_default\Skins\RocketW3\Installation" (content files should be on the root of the zip.)
- Rename the zip file to "RocketW3_Install.zip"



**The RocketW3_Install.zip file can now be installed into DNN via "Host\Extensions"**






