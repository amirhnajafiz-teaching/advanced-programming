# Project structure

When you want to start developing an application, make sure to organise your files
into packages, sub-packages, and classes. This organisation can help you understand
each part usages and decreases debugging time.

## Example (REST API)

For example if you want to create a rest-api in Java, you can use the following structure:

```txt
|_ lib/
|_ server/
  |_ src/
    |_ main/
      |_ controller/
        |_ UserController.java
      |_ model/
        |_ User.java
      |_ url/
        |_ Http.java
        |_ Request.java
        |_ Response.java
  |_ pom.xml
  |_ config.txt
|_ database
  |_ src/
    |_ main/
      |_ query
        |_ User.java
|_ guid.txt
```
