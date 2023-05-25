# Config file for application

When developing an application, its good to set your base variables inside a file
(named configuration file) and read that file when program starts.

## Example (Socket)

When building a socket on server side, you have to set a port number. You can write the
value of port number inside a file like this:

```txt
socket_port=8080
```

And before you start the server you can read the file and extract the value:

```java
FileInputStream fstream = new FileInputStream("config.txt");
BufferedReader br = new BufferedReader(new InputStreamReader(fstream));

String strLine;
int socket_port;

// read File Line By Line
while ((strLine = br.readLine()) != null)   {
  String[] parts = strLine.split("=", 1);
  if (parts[0] == "socket_port") {
    socket_port = Integer.parseInt(parts[1])
  }
}

// close the input stream
fstream.close();


ServerSocket ss = new ServerSocket(socket_port);  
Socket s = ss.accept(); //establishes connection and waits for the client   
```

Or you can use this file in client side to define socket host and socket port, or connection
timeout. Basically everything that can be variable in your program.
