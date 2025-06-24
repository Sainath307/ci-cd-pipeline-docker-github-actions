# Use Python base image
FROM python:3.9

# Set working directory
WORKDIR /app

# Copy and install requirements
COPY app/requirements.txt .
RUN pip install -r requirements.txt

# Copy application files
COPY app .

# Expose port and start the app
EXPOSE 5000
CMD ["python", "app.py"]
