# MVC

```MVC``` (Model-View-Controller) is a pattern in software design commonly used to implement user interfaces,
data, and controlling logic. It emphasizes a separation between the software's business logic and display.
This "separation of concerns" provides for a better division of labor and improved maintenance.

<div align="center">
  <img src="https://developer.mozilla.org/en-US/docs/Glossary/MVC/model-view-controller-light-blue.png" width="500" />
</div>

## Example (Twitter)

### Model

Contains of the user data and database methods for storing, updating, and removing data.

```java
class User {
  int id;
  string name;
  
  public int get_id() {
    return this.id
  }
}
```

### View

Contains of the ```Twitter``` pages, user interface, event and actions in user view.

```java
class MainView {
  Component contacts;
  
  public void display_users() {
  
  }
}
```

### Controller

Contains of methods that will be called by view components and they call model methods in order
to implement the program logic.

```java
class UserController {
  public User[] get_all() {
    return
  }
  
  public User get_by_id(int id) {
    return
  }
}
```
