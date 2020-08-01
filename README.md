This package provides a set up to run Python inside a Docker container.

The goal was to run files from my project directory in the host computer without having to rebuild the image every time a file was added or changed.
In other words: I wanted to run a python script from the command line as if Python was installed in the host computer.

## Build the image

    docker build -t python .

Now we have an image tagged `python`.

## Run a script

Suppose we have our project under `/path/to-my/project`.

To run the included `hello-wordl.py` file, assuming for a moment that our project sits on `/path/to/project` this is how we run the script: 

    docker run --rm -it -v /path/to/project:/app python hello-world.py

I like to work with batch files or shell scripts so I don't have to type the whole command every time.

## Final words

This approach is meant to be used for learning purposes only.

If you are interested in using this pacakge to explore Machine Learning with SciKit Learn, you might want to uncomment from Dockerfile everything betweeen `SciKitLearn.begin` and `SciKitLearn.end`. Actually, only `RUN pip install -U scikit-learn` is needed.
