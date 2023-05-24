# Multithreading

Multithreading is a programming concept in which the application can create a small unit of tasks to execute in parallel.
If you are working on a computer, it runs multiple applications and allocates processing power to them.

<div align="center">
   <img src="https://www.tutorialspoint.com/java/images/Thread_Life_Cycle.jpg" width="500" />
</div>

## Example

```java
// Java code for thread creation by extending
// the Thread class
class MultithreadingDemo extends Thread {
    public void run()
    {
        try {
            // Displaying the thread that is running
            System.out.println(
                "Thread " + Thread.currentThread().getId()
                + " is running");
        }
        catch (Exception e) {
            // Throwing an exception
            System.out.println("Exception is caught");
        }
    }
}
 
// Main Class
public class Multithread {
    public static void main(String[] args)
    {
        int n = 8; // Number of threads
        for (int i = 0; i < n; i++) {
            MultithreadingDemo object
                = new MultithreadingDemo();
            object.start();
        }
    }
}
```

## Resources

- [JavaTPoint](https://www.javatpoint.com/multithreading-in-java)
