# Remove string prefix and suffix

To remove the `xxx` prefix and `.log` suffix from "xxx_my_file.log"
we can do the following:

```bash
string="xxx_my_file.log"
prefix="xxx_"
suffix=".log"
string=${string#$prefix}
string=${string%$suffix}
echo $string
```
