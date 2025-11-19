# Use alpine/python base image
FROM python:3.12-alpine

# Set workdir
WORKDIR /app

# Install flask as a dependency
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the app source code
COPY app.py .

# Expose port for Render
EXPOSE 8080

# Start the Hello World simple web app
CMD ["python", "app.py"]

