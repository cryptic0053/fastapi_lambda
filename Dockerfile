FROM public.ecr.aws/lambda/python:3.11

# Set working directory
WORKDIR /var/task

# Copy and install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt --target .

# Copy the app code
COPY main.py .

# Set the handler
CMD ["main.handler"]
