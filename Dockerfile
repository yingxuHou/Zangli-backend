FROM python:3.11

WORKDIR /app

# Upgrade pip to ensure latest wheel support
RUN pip install --upgrade pip

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Set environment variables
ENV FLASK_CONFIG=production
ENV PORT=8080

# Expose port
EXPOSE 8080

# Run command
CMD ["gunicorn", "-b", "0.0.0.0:8080", "wsgi:app"]
