FROM python:3.10

# Set the working directory in the container
WORKDIR /app

# Copy the rest of the application code
COPY . .

# Install dependencies directly
RUN pip install Django djangorestframework gunicorn

# Expose the port Django runs on
EXPOSE 8001

# Run migrations and start the Django server
CMD ["sh", "-c", "python manage.py migrate"]
CMD ["sh", "-c", "python manage.py runserver 0.0.0.0:8001"]
