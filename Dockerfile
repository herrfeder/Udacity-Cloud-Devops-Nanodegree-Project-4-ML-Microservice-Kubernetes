FROM python:3.7.9-buster

## Step 1:
# Create a working directory
RUN useradd -m user
WORKDIR /home/user/


## Step 2:
# Copy source code to working directory
COPY app.py ./app.py
COPY requirements.txt ./requirements.txt
COPY model_data ./model_data
RUN chmod +x app.py
RUN chown user:user app.py
RUN chown user:user requirements.txt
# running as non-root
USER user

## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip3 install -r requirements.txt

## Step 4:
# Expose port 10000 instead for running as non-root
EXPOSE 10000

## Step 5:
# Run app.py at container launch
CMD ["app.py"]
ENTRYPOINT ["python3"]
