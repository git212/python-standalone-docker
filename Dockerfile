FROM alpine:3.11

# install python3
RUN apk add python3
# install flask
RUN pip install flask
# install redis
RUN pip install redis
# copy your code to docker image
WORKDIR /app
copy app.py .
# oper 5000 port
EXPOSE 5000

# start python app at docker runtime

CMD python app.py