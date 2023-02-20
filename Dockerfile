# Base image
FROM mcr.microsoft.com/dotnet/framework/sdk:4.8-windowsservercore-ltsc2019

# Set the working directory
WORKDIR /app

# Copy the application files
COPY bin/Release/* ./

# Expose the port for the application
EXPOSE 80

# Set the entry point for the application
ENTRYPOINT ["MyApplication.exe"]