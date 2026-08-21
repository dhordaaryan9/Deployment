# 1. Start with a standard Python environment
FROM python:3.9-slim

# 2. Set the working directory inside the container
WORKDIR /app

# 3. Copy your requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 4. Copy the rest of your project files into the container
COPY . .

# 5. Expose the port that FastAPI runs on
EXPOSE 8000

# 6. Start the FastAPI server using Uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
