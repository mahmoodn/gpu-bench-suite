This is a flappy bird game from [1][2]. Download the clone.tar.gz which have the following modifications:

1- In `game/flappy_bird.py`, 
```
#pygame.display.update()
#FPSCLOCK.tick(FPS)
```

2- In `dqn.py`, 
```
self.number_of_iterations = 300
...
        if iteration % 200 == 0:
            torch.save(model, "pretrained_model/current_model_" + str(iteration) + ".pth")
        if iteration % 40 == 0:
            print iteration
        #print("iteration:", iteration, "elapsed time:", time.time() - start, "epsilon:", epsilon, "action:",
        #      action_index.cpu().detach().numpy(), "reward:", reward.numpy()[0][0], "Q max:",
        #      np.max(output.cpu().detach().numpy()))
...
    while counter <= 150:
   # while True:
...
        if counter % 20 == 0:
            print counter
        counter = counter + 1
```

Install prerequisites
```
pip install --user opencv-python pygame numpy
```
Run commands
```
python dqn.py train
python dqn.py test
```




[1] https://github.com/nevenp/dqn_flappy_bird
[2] https://www.toptal.com/deep-learning/pytorch-reinforcement-learning-tutorial
