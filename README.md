# 🚀 Django Google APIs & Real-Time Chat System

A Django project integrating Google APIs (OAuth, Drive, Picker), Django REST Framework, and Django Channels for real-time WebSocket-based messaging.

---

## 🔗 Important Links

- **🎥 Watch Demo on YouTube:** [YouTube Link](https://youtu.be/QCFrPA_6Wzs?si=LUrMqalPRrlEAfkv)
- **🌍 Deployed APIs:**
  - **Google Login:** https://google-oauth-project-316971717795.asia-south1.run.app/auth/google/login/
  - **Google Picker:** https://google-oauth-project-316971717795.asia-south1.run.app/google/picker/
  - **Real-Time Chat System:** https://google-oauth-project-316971717795.asia-south1.run.app/chat/
- **📌 Note:** The Google Drive Picker is currently restricted to test users because the app is in **Testing mode** and has not yet completed Google’s verification process. To gain access, please share your email so we can add you as a test user.

---

---

## 🌍 Deployment Details

- **Remote Database:** Aiven PostgreSQL
- **Deployment:** Google Cloud Artifact Registry + Google Cloud Run

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
git clone https://github.com/AMANKUMAR22MCA/GoogleAPI-ChatSystem.git
cd GoogleAPI-ChatSystem
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

### 4️⃣ Setup Google API Credentials
1. Go to [Google Cloud Console](https://console.cloud.google.com/)
2. Create a new project (or use an existing one)
3. Enable the following APIs:
   - Google Drive API
   - Google Picker API
   - Google OAuth 2.0
4. Create OAuth 2.0 Credentials:
   - Go to **Credentials** → **Create Credentials** → **OAuth Client ID**
   - Select "Web Application" as the application type
   - Authorised JavaScript origins
     ```
     http://localhost:8000
     ```
   - Add the following authorized redirect URIs  [Example]:
     ```
     http://localhost:8000/example/callback/
     http://localhost:8000/example/drive/callback/
     ```
   - Save and get your **Client ID** and **Client Secret**

### 5️⃣ Setup Environment Variables (.env file)
- Add the values for the varibales declared in settins.py file ,  api_app/index.html , api_app/ views.py
```

### 6️⃣ Setup Environment Variables 
```
SECRET_KEY=your_django_secret_key
DEBUG=True
GOOGLE_CLIENT_ID=your_google_client_id
GOOGLE_CLIENT_SECRET=your_google_client_secret
GOOGLE_REDIRECT_URI=your google redirect url
```

### 7️⃣ Run Migrations & Create Superuser
```sh
python manage.py migrate
python manage.py createsuperuser
```
### 8️⃣ Google Sign-In Setup

1. Go to **Django Admin Panel**: [http://127.0.0.1:8000/admin/](http://127.0.0.1:8000/admin/).
2. Add Domain Name and Display Name in Sites [ http://127.0.0.1:8000 ] .
3. Navigate to **Social Applications** under **Social Accounts**.
4. Click **Add Social Application** and configure as follows:
   - **Provider**: Google
   - **Name**: Google Sign In
   - **Client ID**: *(Paste from Google Console)*
   - **Secret Key**: *(Paste from Google Console)*
   - **Sites**: Select your site (`example.com` or `127.0.0.1`).
###  Start the Development Server
```sh
python manage.py runserver
```


---

## 🔑 Google OAuth Authentication Endpoints

| Method | Endpoint | Description |
|--------|------------------------|----------------------------------|
| GET    | `/auth/google/login/`  | Initiates Google OAuth login    |
| GET    | `/auth/callback/`      | Handles OAuth callback & retrieves access token |

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

### WebSocket Endpoint:


### Chat API Endpoints

| Method | Endpoint      | Description               |
|--------|------------- |------------------------- |
| GET    | `/chat/`      | User selection page       |
| POST   | `/chat/`      | Authenticate user & login |
| GET    | `/chat/room/` | Chat page with messages   |

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

