## Produce sequence of arbitrary strings

E.g. to produce a sequence of strings like go/01 up to go/25  command can be used:

```shell
for i in `seq -f "go/%02g" 01 25`;do echo $i; done
```

* `0` indicates that if the number doesn't fill the full field width it will be filled with 0s
* `2` stands for the field width 
* `g` - If  the exponent is less than -4 or greater than or equal to the precision, then convert num
ber as for %e or %E.  Otherwise convert as for %f.  Trailing zeroes and  a  trailing  decimal
point are omitted (from `man format`)

