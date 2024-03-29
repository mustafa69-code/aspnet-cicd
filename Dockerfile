FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build-env 

WORKDIR /app 
COPY . . 

RUN dotnet publish -c Release --property:PublishDir=/out 

# runtime image 

FROM mcr.microsoft.com/dotnet/aspnet:7.0 

WORKDIR /app
COPY  --from=build-env /out .

ENTRYPOINT dotnet aspnet-cicd.dll	
