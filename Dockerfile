# Start with a standard Python environment
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file first to install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your project files
COPY . .

# Start the application
# (This line changes based on your specific app!)
CMD ["python", "main.py"]
