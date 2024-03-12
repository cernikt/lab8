FROM python:3.8

# Set the working directory in the container
WORKDIR /usr/src/app

COPY . .

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt


EXPOSE 8000

# Command to run on container start
CMD ["gunicorn", "-b", "0.0.0.0:8000", "app:app", "--timeout 600"]