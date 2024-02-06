FROM python:3.10.12

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

# EXPOSE 8000 (commented out as it's generally not necessary with modern Docker networking)
# EXPOSE 8000

ENTRYPOINT ["bash", "-c", "python manage.py migrate && python manage.py runserver 0.0.0.0:8000"]
