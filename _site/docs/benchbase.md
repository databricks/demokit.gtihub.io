
```
sudo apt install openjdk-17-jdk-headless
```

```
./mvnw clean package -P arcion
```


# sybase

https://infocenter.sybase.com/help/index.jsp?topic=/com.sybase.infocenter.dc00729.1500/html/errMessageAdvRes/BABIDFFD.htm

The set arithabort and set arithignore options specify behavior following the loss of precision or (for numeric and decimal types) the loss of scale. For more information, see:


```bash
set arithabort numeric_truncation off
declare @numvar numeric(5,2)
select @numvar = 38.44*.72
select @numvar
go
```

```
```bash
declare @numvar numeric(5,2)
select @numvar = 38.44*.72
select @numvar
go
```

jconn https://wiki.scn.sap.com/wiki/display/SYBCON/jConnect+Driver+Overview

https://help.sap.com/docs/SAP_ASE_SDK


rcion@05fdbef8cf65:/arcion/lib$ java -jar /arcion/lib/jconn4-1.6.0_03.jar
jConnect (TM) for JDBC(TM)/16.0 SP02 PL05 (Build 27308)/P/EBF26574/JDK 1.6.0/jdbcmain/OPT/Wed Sep 21 19:02:16 PDT 2016

Confidential property of SAP AG or an SAP affiliate company.
Copyright (c) 2013
SAP AG or an SAP affiliate company.  All rights reserved.
Unpublished rights reserved under U.S. copyright laws.
This software contains confidential and trade secret information of SAP AG or
an SAP affiliate company.   Use, duplication or disclosure of the software and
documentation by the  U.S.  Government  is  subject  to  restrictions set forth in
a license agreement  between  the  Government  and SAP AG or an SAP affiliate
company,  or  other  written agreement  specifying  the  Government's rights to
use the software and any applicable FAR provisions, for example, FAR 52.227-19.
SAP AG or an SAP affiliate company


jconnect 16
https://infocenter.sybase.com/help/index.jsp?topic=/com.sybase.infocenter.help.jc.16.0/doc/html/title.html


https://infocenter.sybase.com/help/index.jsp?topic=/com.sybase.infocenter.dc39001.1600/doc/html/san1353997896765.html

Connection Properties
https://infocenter.sybase.com/help/index.jsp?topic=/com.sybase.infocenter.dc39001.1600/doc/html/har1355981355759.html

jconn4 properties
https://docs.oracle.com/cd/E19226-01/820-7692/beand/index.html


serverName – Specify the host name or IP address of the database server.

portNumber – Specify the port number of the database server.

databaseName – Set as appropriate. Do not specify the complete URL, only the database name.

user – Set as appropriate.

password – Set as appropriate.

BE_AS_JDBC_COMPLIANT_AS_POSSIBLE – Set to true.

FAKE_METADATA – Set to true.

