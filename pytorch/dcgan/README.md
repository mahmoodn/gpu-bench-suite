Download CelebA dataset fom https://drive.google.com/drive/folders/0B7EVK8r0v71pTUZsaXdaSnZBZzg

Extract it with the following structure:

```
/path/to/celeba
    -> img_align_celeba
        -> 188242.jpg
        -> 173822.jpg
        -> 284702.jpg
        -> 537394.jpg
           ...
```
Then change `dataroot = "/path/to/celeba"`. 

Change `num_epochs` if you want.

For profiling, 1 epoch is used. The run is limited to 150 steps. If you want more, uncomment

```
if mycounter == 150:
            flag = 1
            break
```
and
```
if flag == 1:
        break;
```

Uncomment the last lines to see the plots if you want.
