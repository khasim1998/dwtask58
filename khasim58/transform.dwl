%dw 2.0 
output application/json
//Here i am used to Remove Count Key from each object with the help of map object and map function
---
//here i am used mapobject because given payload is object 
payload mapObject ((value, key, index) -> 
//here i used map to go in to the Array and remove count key
(key): value map ((item, index) ->item-"count" )
)


/*
{
 "notification": [{
  "status": {
   "code": "BILLING",
   "value": "Past Due"
  }
 }],
 "notification1": [{
  "status": {
   "code": "RENEWAL",
   "value": "Past Due"
  }
 }]
}
*/
/*payload mapObject ((value, key, index) -> 
 (key): value map ((item, index1) ->
 item -"count"
 )
)*/
