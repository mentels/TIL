## Map over map


```javascript
map = new Map([ ['ala', 31], ['szymon', 28] ])
map = new Map( Array.from(map).map( ([key, value]) => [key, value +1 ] ) )
=> Map { 'ala' => 32, 'szymon' => 29 }
```
