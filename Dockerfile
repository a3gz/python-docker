FROM alpine
FROM python:3.7

ENV APP_HOME /app

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

ENTRYPOINT [ "python3"]
