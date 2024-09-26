Scenario: Verify that allows creating the list of Users
Given I initialize story variable `userId` with value `#{generate(Twitter.userId)}`
Given I initialize story variable `userName` with value `#{generate(Name.fullName)}`
When I set request headers:
|name            |value           |
|Content-Type    |application/json|
Given request body: [
  {
    "id": ${userId},
    "username": "${userName}",
    "firstName": "string",
    "lastName": "string",
    "email": "string",
    "password": "string",
    "phone": "string",
    "userStatus": 0
  }
 ]
When I execute HTTP POST request for resource with URL `https://petstore.swagger.io/v2/user/createWithList`
Then response code is equal to `200`
