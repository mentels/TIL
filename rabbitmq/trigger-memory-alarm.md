## Trigger memory alarm

With the following config:

```config
# in etc/rabbitmq/rabbit.conf
vm_memory_high_watermark_paging_ratio = 1.1
vm_memory_high_watermark.relative = 0.5
total_memory_available_override_value = 1GB
```

and quick run of PerfTest memory alarm should be easily reached when the broker 
uses 500 MB of memory.