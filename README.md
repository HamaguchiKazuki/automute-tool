# osx-automute-tool

# Overview
Automute will automatically mute the volume.
The first argument takes the seconds.
The second argument is whether to put the PC in sleep mode.

## install
write follow command to your `.bash_profile` or `.zshrc`

`alias automute='bash [path to clone dir]/automute.sh'`

## example
`alias automute='bash ~/osx-automute-tool/automute.sh'`

## usage
`automute <seconds> [-s]`

## usage example
`automute 300`

`automute 3600 -s`

