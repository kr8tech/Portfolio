FROM python:3.9

WORKDIR /home/ubuntu/Portfolio/Dashboard

COPY requirements.txt /home/ubuntu/Portfolio/Dashboard
RUN pip install -r requirements.txt

COPY . /home/ubuntu/Portfolio/Dashboard

EXPOSE 8000

CMD python /home/ubuntu/Portfolio/Dashboard manage.py runserver 0.0.0.0:8000