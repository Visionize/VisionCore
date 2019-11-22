FROM "tensorflow/tensorflow:latest-gpu-py3-jupyter"

#Set working directory
WORKDIR /VisionCore

# Copy all files from the current directory into the working directory
COPY . /VisionCore

#Use the latest version of pip
RUN pip install --upgrade pip

#Install all required python dependencies
RUN pip install --trusted-host pypi.python.org -r requirements.txt

#Expose port used by Jupyter notebook
EXPOSE 8888

#Run the jupyter lab command
CMD ["jupyter", "lab", "--allow-root", "--ip=0.0.0.0", "--port=8888", "--no-browser"]
