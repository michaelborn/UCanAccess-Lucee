# UCanAccess



[![cfmlbadges](https://cfmlbadges.monkehworks.com/images/badges/compatibility-lucee-5.svg)](https://cfmlbadges.monkehworks.com) [![cfmlbadges](https://cfmlbadges.monkehworks.com/images/badges/built-with-commandbox.svg)](https://cfmlbadges.monkehworks.com) [![cfmlbadges](https://cfmlbadges.monkehworks.com/images/badges/testing-whats-testing.svg)](https://cfmlbadges.monkehworks.com)

Connect to MS Access databases easily with the [UCanAccess JDBC driver](http://ucanaccess.sourceforge.net/site.html) which supports MS Access files from 2000 through 2016.

## Installation

### via Forgebox Provider

1. In your Lucee (Server) Administrator, go to the Extension > Providers page and add https://forgebox.io as a New Extension Provider if not already present
2. Go to Extension > Applications and look for UCanAccess in the "Not installed" section
3. Click the extension and install

### Manual Installation

1. Download the the lucee-ucanaccess.lex file
2. In your Lucee Administrator, go to the Extension > Applications page
3. Under "Upload new extension", select the lex file and click "Upload"

## Usage

The main "trick" to using the driver is configuring your datasource.

1. The classpath should be `net.ucanaccess.jdbc.UcanaccessDriver`
2. The connection string should start with `jdbc:ucanaccess:///`
3. The rest of the connection string should be your full MS Access file path: `C:\Users\me\my\AccessDatabase.accdb`

```js
msAccessDB = {
   class: "net.ucanaccess.jdbc.UcanaccessDriver",
   connectionString: "jdbc:ucanaccess:///C:\Users\me\my\AccessDatabase.accdb"
};
```

## TODO

* ❌ Get it working
* ❌ Test various datasource options - e.g. connectionLimit, username, password
* ❌ Document various [connection string options](http://ucanaccess.sourceforge.net/site.html#examples)

## The Good News

> For all have sinned, and come short of the glory of God ([Romans 3:23](https://www.kingjamesbibleonline.org/Romans-3-23/))

> But God commendeth his love toward us, in that, while we were yet sinners, Christ died for us. ([Romans 5:8](https://www.kingjamesbibleonline.org/Romans-5-8))

> That if thou shalt confess with thy mouth the Lord Jesus, and shalt believe in thine heart that God hath raised him from the dead, thou shalt be saved. ([Romans 10:9](https://www.kingjamesbibleonline.org/Romans-10-9/))
 
## Repository

Copyright 2019 (and on) - [Michael Born](https://michaelborn.me/)

* [Homepage](https://bitbucket.org/michaelborn_me/ucanaccess/src/master/)
* [Issue Tracker](https://bitbucket.org/michaelborn_me/ucanaccess/issues?status=new&status=open)
* [Apache-2.0 License](http://www.apache.org/licenses/LICENSE-2.0.txt)