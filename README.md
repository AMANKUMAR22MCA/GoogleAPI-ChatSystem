# 🚀 Django Google APIs & Real-Time Chat System

A Django project integrating Google APIs (OAuth, Drive, Picker), Django REST Framework, and Django Channels for real-time WebSocket-based messaging.

---

## 🔗 Important Links

- **🎥 Watch Demo on YouTube:** [YouTube Link](https://youtube.com)
- **🌍 Deployed APIs:**
  - **Google Login:** [Google OAuth](https://google-oauth-project-316971717795.asia-south1.run.app/)
  - **Google Picker:** [Google Picker API](https://google-oauth-project-316971717795.asia-south1.run.app/google/picker/)
  - **Real-Time Chat System:** [Chat Application](https://google-oauth-project-316971717795.asia-south1.run.app/chat/)
- **🚧 Google Drive Picker Issue:** The Google Drive Picker is not working because the app is in **Testing mode** and has not yet completed Google’s verification process. Only approved test users can access it. Please share your email with us to be added as a test user.

---

## 🌍 Deployment Details

- **Remote Database:** Aiven PostgreSQL
- **Deployment:** Google Cloud Artifact Registry

---

## 📌 Features

- 🔑 **Google OAuth Authentication** (Login with Google)
- 📂 **Google Drive Integration** (Upload, List, and Download files)
- 📑 **Google Picker API** (Select files directly from Google Drive)
- 💬 **Real-time Chat System** (WebSockets with Django Channels)
- 🛠 **Django REST Framework (DRF)** (JWT Authentication, API endpoints)

---

## 🛠 Project Setup (Quick Guide)

### 1️⃣ Clone the Repository
```sh
git clone https://github.com/AMANKUMAR22MCA/GoogleAPI-WebsocketChatSystem.git
cd GoogleAPI-WebsocketChatSystem
```

### 2️⃣ Create & Activate Virtual Environment
```sh
python -m venv venv
# Activate on Windows
venv\Scripts\activate
# Activate on macOS/Linux
source venv/bin/activate
```

### 3️⃣ Install Dependencies
```sh
pip install -r requirements.txt
```

### 4️⃣ Setup Environment Variables (.env file)
```
SECRET_KEY=your_django_secret_key
DEBUG=True
GOOGLE_CLIENT_ID=your_google_client_id
GOOGLE_CLIENT_SECRET=your_google_client_secret
GOOGLE_REDIRECT_URI=your google redirect url
```

### 5️⃣ Run Migrations & Create Superuser
```sh
python manage.py migrate
python manage.py createsuperuser
```

### 6️⃣ Start the Development Server
```sh
python manage.py runserver
```

---

## 📂 Google Drive API Endpoints

| Method | Endpoint | Description |
|--------|--------------------------------|--------------------------------------|
| GET    | `/google-drive/auth/`        | Redirects user to Google OAuth for Drive permissions |
| GET    | `/google-drive/callback/`    | Handles Google Drive OAuth callback |
| POST   | `/google-drive/upload/`      | Uploads a file to Google Drive |
| GET    | `/google-drive/files/`       | Lists all files from Google Drive |
| GET    | `/google-drive/download/<file_id>/` | Downloads a file from Google Drive |

---

## 📑 Google Picker API

| Method | Endpoint | Description |
|--------|----------------|----------------------------------|
| GET    | `/google/picker/` | Opens Google Picker to select files |

---

## 💬 Real-Time Chat System (WebSockets)

### Features:
- Users can join chat rooms
- Messages are stored in the database
- WebSocket-based real-time communication


### Chat API Endpoints

| Method | Endpoint | Description |
|--------|---------------------|--------------------------------|
| GET    | `/chat/`            | User selection page          |
| POST   | `/chat/`            | Authenticate user & login    |
| GET    | `/chat/room/`       | Chat page with messages      |

---

## 🛠 Technologies Used

- **Django** (Backend Framework)
- **Django REST Framework (DRF)** (API Development)
- **Django Channels & WebSockets** (Real-time Communication)
- **PostgreSQL** (Database - Aiven)
- **Google Cloud Artifact Registry** (Deployment)
- **Google OAuth & APIs** (Authentication & File Management)

---

## 📧 Contact

For any queries, reach out to:
- 🌐 **GitHub:** [https://github.com/AMANKUMAR22MCA](https://github.com/AMANKUMAR22MCA)

