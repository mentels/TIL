# Matching signed integers uses Two's complement

When matching Erlang integers from binary and using the [`signed`](http://erlang.org/doc/programming_examples/bit_syntax.html)
type specifies the [Two's complement](https://en.wikipedia.org/wiki/Two%27s_complement) system is used, i.e. to compute
the value of the negative number (most significant bit set to 1) we reverse all the bits and subtract 1 from the value.

```erlang
<<A/signed,B/unsigned>> = <<(2#10000000), (2#10000000)>>.
<<128,128>>
27> A.
-128 % 011111111 = -127 - 1 = -128
28> B.
128

<<C/signed,D/unsigned>> = <<(2#10000001), (2#10000001)>>.
<<129,129>>
30> D.
129
31> C.
-127 % 01111110 = -126 - 1 = -127
```
