####Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with vagrant](#setup)
    * [What vagrant affects](#what-vagrant-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with vagrant](#beginning-with-vagrant)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

##Overview

This module manage the  system wide installation of vagrant from a package, which are available from the [Vagrant website] (http://www.vagrantup.com/downloads.html). It also handles  one or more Vagrantfiles in your users hoome directories.

##Module Description

The vagrant packages will be installed in a system wide location, mostly somewhere in /opt/vagrant.

One can install different vagrant plugins, and or multiple vagrant files in some of your users home directories  to provide a per user suited vagrant environment.

Site specific supported vagrant can be defined using your hiera setup.
A list of available vagrant files can be found [here]


##Setup

###What vagrant affects

* A list of files, packages, services, or operations that the module will alter, impact, or execute on the system it's installed on.
* This is a great place to stick any warnings.
* Can be in list or paragraph form.

###Setup Requirements **OPTIONAL**

If your module requires anything extra before setting up (pluginsync enabled, etc.), mention it here.

###Beginning with vagrant

The very basic steps needed for a user to get the module up and running. 

If your most recent release breaks compatibility or requires particular steps for upgrading, you may wish to include an additional section here: Upgrading (For an example, see http://forge.puppetlabs.com/puppetlabs/firewall).

##Usage

Put the classes, types, and resources for customizing, configuring, and doing the fancy stuff with your module here. 

##Reference

Here, list the classes, types, providers, facts, etc contained in your module. This section should include all of the under-the-hood workings of your module so people know what the module is touching on their system but don't need to mess with things. (We are working on automating this section!)

##Limitations

This is where you list OS compatibility, version compatibility, etc.

##Development

Since your module is awesome, other users will want to play with it. Let them know what the ground rules for contributing are.

##Release Notes/Contributors/Etc **Optional**

If you aren't using changelog, put your release notes here (though you should consider using changelog). You may also add any additional sections you feel are necessary or important to include here. Please use the `## ` header. 
