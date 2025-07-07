To try any of these, toggle the target in the Makefile and ```make clean && make && python test_python.py```.

- ```128_128_64_16/```: 596 TFLOPs

- ```256_128_64_16/```: 608 TFLOPs
- ```256_128_64_16_persist/```: 611 TFLOPs

- ```256_128_64_32/```: 633 TFLOPs
- ```256_128_64_32_persist/```: 630 TFLOPs
- ```256_128_64_32_no_swizzle/```: 590 TFLOPs
- ```256_128_64_32_outbf16/```: 645 TFLOPs // updated to store c in bf16

- ```256_256_32_16/```: 490 TFLOPs
- ```256_256_64_16/```: 61 TFLOPs
- ```256_256_64_16_rolled/```: 485 TFLOPs
