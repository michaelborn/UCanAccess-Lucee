# UCanAccess

Connect to MS Access databases easily with the [UCanAccess JDBC driver](http://ucanaccess.sourceforge.net/site.html) which supports MS Access files from 2000 through 2016.

## Usage

1. Add `https://forgebox.io` to your Lucee Extension Providers list.
2. Install this extension.
3. Configure your datasource
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

* ❌ Get it actually working
* ❌ Test various datasource options - e.g. connectionLimit, username, password
* ❌ More documentation?

## The Good News

> For all have sinned, and come short of the glory of God ([Romans 3:23](https://www.kingjamesbibleonline.org/Romans-3-23/))

> But God commendeth his love toward us, in that, while we were yet sinners, Christ died for us. ([Romans 5:8](https://www.kingjamesbibleonline.org/Romans-5-8))

> That if thou shalt confess with thy mouth the Lord Jesus, and shalt believe in thine heart that God hath raised him from the dead, thou shalt be saved. ([Romans 10:9](https://www.kingjamesbibleonline.org/Romans-10-9/))
 
## Repository

Copyright 2019 (and on) - [Michael Born](https://michaelborn.me/)

* [Homepage](https://bitbucket.org/michaelborn_me/ucanaccess/src/master/)
* [Issue Tracker](https://bitbucket.org/michaelborn_me/ucanaccess/issues?status=new&status=open)
* [Apache-2.0 License](http://www.apache.org/licenses/LICENSE-2.0.txt)