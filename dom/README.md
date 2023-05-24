# What is DOM?


The Document Object Model (```DOM```) is a programming interface for web documents.
It represents the page so that programs can change the document structure, style, and content.
The ```DOM``` represents the document as nodes and objects; that way, programming languages can interact with the page.

So first find your ```events```, for example click on a button, the write your ```actions``` to make a response
to each event. It's good to have a ```stage-diagram```.

```
+----------------+     +--------------+                           +-----------+
+ Click on Login +  -> + Loading page + - (if pass is correct) -> + Home page +
+----------------+     +--------------+             ||            +-----------+
                                                  (else)
                                                    ||
                                                    \/
                                          +-------------------+
                                          + Display error     +
                                          +-------------------+
```

Always keep track of what user is doing. Start from basic steps and add new stages to the main flow.
