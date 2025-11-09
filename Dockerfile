# ---------------------------
# 1️⃣ Use a lightweight base image
# ---------------------------
FROM python:3.11-slim

# ---------------------------
# 2️⃣ Set working directory
# ---------------------------
WORKDIR /app

# ---------------------------
# 3️⃣ Copy requirements and install dependencies
# ---------------------------
COPY app/requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# ---------------------------
# 4️⃣ Copy app source code
# ---------------------------
COPY app/ /app

# ---------------------------
# 5️⃣ Expose Flask default port
# ---------------------------
EXPOSE 5000

# ---------------------------
# 6️⃣ Define command to run the app
# ---------------------------
CMD ["python", "app.py"]

