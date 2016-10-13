<h1 align="center">
  <a href="http://www.oracle.com/technetwork/java/javaee/overview/index.html"><img src="https://cloud.githubusercontent.com/assets/5771200/19332084/330b8938-912c-11e6-8874-f992e3503bae.png" alt="Java EE" height="150"></a>
  <a href="https://glassfish.java.net/"><img src="https://cloud.githubusercontent.com/assets/5771200/19331354/e36b95d4-9127-11e6-9a99-ce5403ea704b.jpg" alt="Oracle Glassfish" height="150"></a>
  <br>
  <br>
  Universal Temperature Converter
  <br>
  <br>
</h1>
<h4 align="center">A simple java web serivices program to convert to and from any temperature scale</h4>

<p align="center">
  <a href=""><img src="https://img.shields.io/travis/feross/standard/master.svg" alt="Passing"></a>
  <a href="https://java.com/en/"><img src="https://img.shields.io/badge/Java%20EE-7-brightgreen.svg" alt="Java EE"></a>
  <a href="https://opensource.org/licenses/BSD-2-Clause"><img src="https://img.shields.io/badge/License-BSD-blue.svg" alt="BSD License"></a>
</p>
<br>

## Table of Contents
- [Synopsis](#synopsis)
- [Install](#install)
- [Usage](#usage)
- [Screenshots](#screenshots)
- [License](#license)
## Synopsis
The goal of this project was to develop Web Services applications to allow clients to
convert temperature unit from any scale.

The web service server provides functions to convert temperature from one
unit to another. The web service client read users’ request from the web form and invoke
the functions from the web service server to get results.

## Install
First, make a directory to install the files to and change to that directory using :
```bash
 mkdir tempconvert && cd tempconvert
```
Then all you need to do is clone the project from github into the directory by using :
```bash
 git clone https://github.com/josh-privata/TempConverter.git
```
## Usage
##### Note:  [Java Runtime](https://java.com/en/download/) is required to run the preceding commands.
##### Note:  [Oracle Glassfish](https://glassfish.java.net/download.html) is required to run the preceding commands.

Initially the program needs to be compiled. After you have copied the files to a directory, run the command :

```bash
$ jar cvf TempConverter.war .
```

Alternatively, you can use the .war file included.

Then deploy the application to Glassfish using the command :

```bash
$ asadmin deploy TempConverter.war
```

Or using your web browser visit [http://localhost:4848/](http://localhost:4848/) (default username/password 
is most likely admin/admin) and upload your application to the web interface.

### You can access the program by visiting [http://localhost:8080/Client/index.jsp](http://localhost:8080/Client/index.jsp)

## Screenshots
<p align="center"><img src="https://cloud.githubusercontent.com/assets/5771200/19331347/dd1c45ac-9127-11e6-9c56-de054757917a.jpg" alt="Screenshot"></p>
<p align="center"><img src="https://cloud.githubusercontent.com/assets/5771200/19331348/dd229a10-9127-11e6-9433-cd1634fa151a.jpg" alt="Screenshot"></p>

## License
[BSD](LICENSE) Copyright (c) 2016 [Josh Cannons](http://joshcannons.com).