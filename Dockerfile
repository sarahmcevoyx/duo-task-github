# Use Python 3.6 or later as a base image
FROM python:3.8

# Create and set the work directory inside the image named 'app'
WORKDIR /app

# Copy contents into image
COPY . .

# Install pip dependencies from requirements
RUN pip3 install -r requirements.txt

# Set YOUR_NAME environment variable
ENV YOUR_NAME=sarah

# Expose the correct port
EXPOSE 5500

# Create an entrypoint
ENTRYPOINT ["python", "app.py"]
