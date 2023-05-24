# Networking and HTTP.

Networking means to connect to computers in different geographical places to each other
in order to make a communication between them. ```HTTP``` is a protocol for sending and
receiving the data in a network.

We use ```HTTP``` in order to send or get data. To get a data we send a ```HTTP Request```
and on the other side, we get the data using an ```HTTP Response```. We put information
of our data in small units called ```Headers```.

## Example

### Request and Response

```shell
curl -I www.google.com

Request URL: https://www.google.com
Request Method: GET
Status Code: 200
Remote Address: 140.82.121.6:443
Referrer Policy: no-referrer-when-downgrade

HTTP/1.1 200 OK
Content-Type: text/html; charset=ISO-8859-1
Content-Security-Policy-Report-Only: object-src 'none';base-uri 'self';script-src 'nonce-7ZL-Ajjr9pL4TPKtnqO-qw' 'strict-dynamic' 'report-sample' 'unsafe-eval' 'unsafe-inline' https: http:;report-uri https://csp.withgoogle.com/csp/gws/other-hp
P3P: CP="This is not a P3P policy! See g.co/p3phelp for more info."
Date: Wed, 24 May 2023 09:13:18 GMT
Server: gws
X-XSS-Protection: 0
X-Frame-Options: SAMEORIGIN
Transfer-Encoding: chunked
Expires: Wed, 24 May 2023 09:13:18 GMT
Cache-Control: private
Set-Cookie: 1P_JAR=2023-05-24-09; expires=Fri, 23-Jun-2023 09:13:18 GMT; path=/; domain=.google.com; Secure
Set-Cookie: AEC=AUEFqZcCIxPfHxPrcJ-xypqpCj2ci3n-xg2DzyQ3MAXqlys2YoSMYgoQAg; expires=Mon, 20-Nov-2023 09:13:18 GMT; path=/; domain=.google.com; Secure; HttpOnly; SameSite=lax
Set-Cookie: NID=511=OML4yG4CacvBzgVoA7Ap1G8aFUEt5Mk9ONhrxNeafL6fNbNlZwqNCxTE5DPpjdMudiqo4gXwNwaj4SAkqmwKoWzXh432VU_lShvty07HhOXkfsHzWm2u0cazVkdP6nQhRUCL4TfkkRAvZ7nXpmTDcBFPsFfLxg-QvA6SatlROMo; expires=Thu, 23-Nov-2023 09:13:18 GMT; path=/; domain=.google.com; HttpOnly
```

### Methods

In order to get a data, we use ```GET``` method. If we want to send a data in our reqeust, we use ```POST``` method.
And we set the data in reqeust body.

## Schema

<div align="center">
  <img width="500" src="https://www.ionos.com/digitalguide/fileadmin/DigitalGuide/Screenshots_2020/diagram-of-http-communication-process.png" />
</div>

## HTTP Client

In order to send ```HTTP Requests``` and get ```HTTP Response``` you need to use an ```HTTP Client``` in your application.

### GET Example

```java
HttpRequest request = HttpRequest.newBuilder()
  .uri(new URI("https://postman-echo.com/get"))
  .headers("key1", "value1", "key2", "value2")
  .GET()
  .build();
```

### POST Example

```java
HttpRequest request = HttpRequest.newBuilder()
  .uri(new URI("https://postman-echo.com/post"))
  .headers("Content-Type", "text/plain;charset=UTF-8")
  .POST(HttpRequest.BodyPublishers.ofString("Sample request body"))
  .build();

byte[] sampleData = "Sample request body".getBytes();
HttpRequest request2 = HttpRequest.newBuilder()
  .uri(new URI("https://postman-echo.com/post"))
  .headers("Content-Type", "text/plain;charset=UTF-8")
  .POST(HttpRequest.BodyPublishers
   .ofInputStream(() -> new ByteArrayInputStream(sampleData)))
  .build();
```

### Response

```java
HttpResponse<String> response = HttpClient.newHttpClient()
  .send(request, HttpResponse.BodyHandlers.ofString());
HttpHeaders responseHeaders = response.headers();
```

## Resources

- [Open JDK](https://openjdk.org/groups/net/httpclient/intro.html)
