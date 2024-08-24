# Use the latest Golang image
FROM golang:latest

# Set the working directory inside the container
WORKDIR /app

# Copy the Go module files and download dependencies
COPY go.mod go.sum ./
RUN go mod download

# Copy the rest of the application code to the container
COPY . .

# Install the `present` tool
RUN go install golang.org/x/tools/cmd/present@latest

# Expose port 3999 for the present server
EXPOSE 3999

# Set the command to run the `present` tool
CMD ["present", "-http", "0.0.0.0:3999", "-play=false"]
