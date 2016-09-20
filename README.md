# Matlab-based-CNN
A simple implementation of a convolutional neural net based on Matlab.
# Steps
|  layer # |  layer type |  input size |filterbank size| num biases  |   output size|
|---|---|---|---|---|---|
|  1 |  normalize | 32\*32\*3  |   |   | 32\*32\*3|
| 2  | convolve  | 32\*32\*3  |  3\*3\*3\*10 | 10  |32\*32\*10 |
|  3 |  ReLU | 32\*32\*10  |   |   | 32\*32\*10|
| 4  | convolve  | 32\*32\*10  |  3\*3\*3\*10 | 10  |32\*32\*10 |
|  5 |  ReLU | 32\*32\*10  |   |   | 32\*32\*10|
|  6 |  maxpool | 32\*32\*10  |   |   | 16\*16\*10|
| 7  | convolve  | 16\*16\*10  |  3\*3\*3\*10 | 10  |16\*16\*10 |
|  8 |  ReLU | 16\*16\*10 |   |   | 16\*16\*10|
| 9  | convolve  | 16\*16\*10 |  3\*3\*3\*10 | 10  |16\*16\*10 |
|  10 |  ReLU | 16\*16\*10  |   |   | 16\*16\*10|
|  11 |  maxpool | 16\*16\*10  |   |   | 8\*8\*10|| 12  | convolve  | 8\*8\*10  |  3\*3\*3\*10 | 10  |8\*8\*10 |
|  13 |  ReLU | 8\*8\*10 |   |   | 8\*8\*10|
| 14  | convolve  | 8\*8\*10 |  3\*3\*3\*10 | 10  |8\*8\*10 |
|  15 |  ReLU | 8\*8\*10  |   |   | 8\*8\*10|
|  16 |  maxpool | 8\*8\*10  |   |   | 4\*4\*10||  17 |  fullconnect | 4\*4\*10  |  4\*4\*10\*10  |  10 | 1\*1\*10||  18 |  softmax | 1\*1\*10  |   |   | 1\*1\*10|

# Run
* To see the result, run **samplecode**
* To check correctability, run **debug**