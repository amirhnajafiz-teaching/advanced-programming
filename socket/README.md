# Socket programming.

Socket Programming is a method to connect two nodes over a network to establish a means of communication between those two nodes.
A node represents a computer or a physical device with an internet connection.
A socket is the endpoint used for connecting to a node.

<div align="center">
  <img src="https://static.javatpoint.com/core/images/socket-programming.png" width="500" />
</div>

## Example

### Server

```java
ServerSocket ss=new ServerSocket(6666);  
Socket s=ss.accept();//establishes connection and waits for the client   
```

### Client

```java
Socket s=new Socket("localhost",6666);  
```
