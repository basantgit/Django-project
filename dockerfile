FROM ubuntu
WORKDIR /app
COPY . /app
RUN apt-get update && \ 
pip install python3 python3-pip && \
pip install -r requirement.txt

ENTERYPOINT ["python3"]
CMD ["python3", "manage.py", "runserver"]
