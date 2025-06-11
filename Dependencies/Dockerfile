# FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
# WORKDIR /src
# COPY Dependencies.csproj .
# RUN dotnet restore
# COPY . .
# RUN dotnet build "Dependencies.csproj" -c Release -o /app/build
# RUN dotnet publish -c Release -o /app
# FROM mcr.microsoft.com/dotnet/sdk:8.0
# WORKDIR /app
# COPY --from=build /app .
# ENTRYPOINT ["dotnet", "Dependencies.dll"]

FROM mcr.microsoft.com/dotnet/sdk:8.0-alpine AS build-env
WORKDIR /app
COPY . ./
RUN dotnet restore
RUN dotnet publish -c Release -o out

FROM mcr.microsoft.com/dotnet/runtime:8.0-alpine
WORKDIR /app
COPY --from=build-env /app/out .
ENTRYPOINT ["dotnet", "Dependencies.dll"]