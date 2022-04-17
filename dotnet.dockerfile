ARG VERSION="6.0"
FROM mcr.microsoft.com/dotnet/sdk:${VERSION}

LABEL version="1.0"
LABEL author="Tarik Catovic"
LABEL description="Dotnet with Entity Framework"

WORKDIR /app

# Install Entity Framework locally
RUN dotnet new tool-manifest
RUN dotnet tool install dotnet-ef