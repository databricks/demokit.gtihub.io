
jconn4 works with 

/arcion/lib/jconn4-1.6.0_03.jar
jsqsh - works
ycbs - not not work
benchbase does not work

# benchnase

pom.xml

```bash
    <profiles>
        <profile>
            <id>arcion</id>
            <repositories>
            <repository>
                <id>jumpmind</id>
                <name>jumpmind</name>
                <url>https://maven.jumpmind.com/repo</url>
            </repository>
            </repositories>   
            <dependencies>
                <dependency>
                <!-- https://mvnrepository.com/artifact/jdbc.sybase/jconn4 -->
                <dependency>
                    <groupId>jdbc.sybase</groupId>
                    <artifactId>jconn4</artifactId>
                    <version>16.0</version>
                </dependency>
            </dependencies>
        </profile>                 
```
