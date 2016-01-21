## README

* This application requires Ruby v2.2 and above

* A few commands to test JSON API responses:

POST localhost:3000/users

Request Payload
```json
{
  "data": {
    "type": "users",
    "attributes": {
		"email": "jane.doe@gmail.com",
		"name": "Jane Doe"
    }
  }
}
```

Response Payload : 201 Created
```json
{
  "data":{
    "id": "2",
    "type": "users",
    "links":{
      "self": "http://localhost:3000/users/1"
    },
    "attributes":{
      "name": "Jane Doe",
      "email": "jane.doe@gmail.com"
    },
    "relationships":{
      "contacts":{
        "links":{
          "self": "http://localhost:3000/users/1/relationships/contacts",
          "related": "http://localhost:3000/users/1/contacts"
        }
      }
    }
  }
}
```

GET localhost:3000/users/1

Response Payload : 200 OK
```json
{
  "data":{
    "id": "2",
    "type": "users",
    "links":{
      "self": "http://localhost:3000/users/2"
    },
    "attributes":{
      "name": "Jane Doe",
      "email": "jane.doe@gmail.com"
    },
    "relationships":{
      "contacts":{
        "links":{
          "self": "http://localhost:3000/users/2/relationships/contacts",
          "related": "http://localhost:3000/users/2/contacts"
        }
      }
    }
  }
}
```
