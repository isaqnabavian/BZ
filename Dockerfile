FROM python:3.9.6
LABEL MAINTAINER ="ahmadreza"

ENV PYTHONUNBUFFERED 1

RUN mkdir /BZ
WORKDIR /BZ
COPY . /BZ

ADD requirments/requirments.txt /BZ
RUN pip install --upgrade pip
RUN pip install -r requirments.txt

RUN python manage.py collectstatic --no-input

CMD ["gunicorn" , "--chdir" , "BZ" , "--bind" , ":8000" , "BZ.wsgi:application"]