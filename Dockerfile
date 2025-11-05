# Use an official Python image as base
FROM python:3.10-slim

# Set work directory
WORKDIR /app

# Copy all files into the container
COPY . .

# Install dependencies
# (If you don’t have requirements.txt yet, create one)
RUN pip install --no-cache-dir -r requirements.txt

# Expose the app port (adjust if not 8080)
EXPOSE 8080

# Start the app (adjust if your entry point file is named differently)
CMD ["python", "app.py"]
