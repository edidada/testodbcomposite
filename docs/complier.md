# complier


```shell

odb -d mysql --generate-query --generate-schema person.hxx

```



not work
```shell

g++ -c person-odb.cxx c++ -DDATABASE_MYSQL -c driver.cxx c++ -o driver driver.o person-odb.o -lodb-mysql -lodb

```


```shell

g++ -c person-odb.cxx
g++ -DDATABASE_MYSQL -c driver.cxx
g++ -o driver driver.o person-odb.o -lodb-mysql -lodb
```
