# Use a base image with Linux installed
FROM ubuntu:latest
FROM python:3.7

ENV APP_HOME /home
COPY requirements.txt $APP_HOME/
RUN pip install --upgrade pip 

# SciKitLearn.begin
# https://scikit-learn.org/stable/install.html
# RUN pip install -U scikit-learn
# RUN python3 -m pip show scikit-learn # to see which version and where scikit-learn is installed
# RUN python3 -m pip freeze # to see all packages installed in the active virtualenv
# RUN python3 -c "import sklearn; sklearn.show_versions()"
# SciKitLearn.end

WORKDIR $APP_HOME


# Install necessary packages
RUN apt-get update && \
    apt-get install -y \
    bash \
    && rm -rf /var/lib/apt/lists/*

# Set the default command to start bash
CMD ["/bin/bash"]
