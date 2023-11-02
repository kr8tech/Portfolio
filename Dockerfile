FROM python:3.9

WORKDIR /
ENV PYTHONUNBUFFERED=1
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .
EXPOSE 8005
RUN ls
RUN chmod a+x scripts.sh
CMD ["./scripts.sh"]