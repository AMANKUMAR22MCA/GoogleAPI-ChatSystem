# Use a lightweight Python image
FROM python:3.9-alpine

# Set the working directory inside the container
WORKDIR /app
# Install curl (and bash) to enable fetching the wait-for-it.sh script
RUN apk add --no-cache curl bash

# Copy and install dependencies
COPY requirements.txt requirements.txt
# install requirements for the project
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire project into the container
COPY . .

EXPOSE 8000

# Run Daphne ASGI server
CMD ["sh", "-c", "daphne -b 0.0.0.0 -p 8000 google_apis.asgi:application"]