Use Python3

```
pip3 install matplotlib --user
```
Install torch vision
```
git clone https://github.com/pytorch/vision
cd vision
python3 setup.py install --user
```

Download vgg19 from `https://download.pytorch.org/models/vgg19-dcbb9e9d.pth` and put it in `/home/mahmood/.cache/torch/checkpoints`
Run
```
python3 main.py
```

Tutorial from https://pytorch.org/tutorials/advanced/neural_style_tutorial.html
