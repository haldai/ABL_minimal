# Prequisites

1. Install [SWI-Prolog](https://www.swi-prolog.org/Download.html) (tested with version 9.1.11-5-gddaf93732)
2. Install [Python](https://www.python.org/downloads/) (tested with version 3.11.3) and [Jupyter Notebook](https://jupyter.org/install). However, I strongly recommend you to use [VS Code](https://code.visualstudio.com/).
3. Use [venv](https://docs.python.org/3/library/venv.html) to install the required packages:
   ```shell
   pip install -r requirements.txt
   ```

# About the Codes

1. `data_generator.ipynb` explains about the task and how was the MNIST Sum dataset generated.
2. `mnist_sum.pl` is the prolog file to abduce two digits given the sum. Try it with Prolog: `consult('mnist_sum.pl').` and then `abduce([X,Y],13).` (Don't forget the period symbol "`.`" and type "`;`" for seeing more answers).
3. `mnist_sum.ipynb` is a self-explained notebook for the simple MNIST Sum task.

# Your Task

1. Try to train a pure neural network to learn the MNIST Sum task.
2. Compare your method with the Abductive Learning algorithm, in two aspects:
   1. Mean squared error of the final output, i.e., the sum;
   2. Digit-wise classification accuracy (like what has been done in the notebook).
3. (_Optional_) Try some advanced tasks and background knowledge by yourself, an example is given in `mnist_sum_2`. Maybe you can try MNIST product and so on.

__Hint__: You can try different types of neural networks, even different combinations of neural networks, for example:

1. CNN encoder for perception, MLP to calculate the sum;
2. CNN encoder for perception, LSTM or other types of RNNs, even Transformers to calculate the sum;

# Your Task (simple version)

For students who are not very good at coding, you could try these things:

1. Write a program to generate a big (>10000) dataset of `[x1,x2,y]`, where `x1` and `x2` are in [0, 1000] and `x1+x2=y`;
2. Use an MLP to learn from this dataset, in which `[x1,x2]` is the input and `y` is the target output.
3. Generate another dataset like step 1, but with `x1` and `x2` in [50000, 100000].
4. Test your MLP learned from step 2 with the new dataset.
