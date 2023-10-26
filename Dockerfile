FROM python:3.9

WORKDIR /home/ubuntu/projects/Dashboard

COPY requirements.txt /home/ubuntu/projects/Dashboard
RUN pip install -r requirements.txt

COPY . /home/ubuntu/projects/Dashboard

EXPOSE 8000

CMD python /home/ubuntu/projects/Dashboard manage.py runserver 0.0.0.0:8000