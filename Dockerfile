FROM python:3.9

WORKDIR /SFDJ

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY ./SFDJ .

CMD ["python", "manage.py", "runserver", "8011"]