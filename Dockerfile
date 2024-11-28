
FROM python:3.12.7-slim-bookworm

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file to the working directory
COPY requirements.txt ./

Run python3 -m pip install --upgrade pip

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the current directory contents into the container at /app
COPY . ./


# Run point.py when the container launches
CMD ["python","point.py"]
