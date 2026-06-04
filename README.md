# 📦 Customer-Churn-MLOps – Kriteria 3 (CI & Deployment)

## 📁 Folder Structure
```
Customer-Churn-MLOps/
├── Dockerfile                # Container image for model serving
├── MLProject/
│   ├── mlproject.yaml        # MLflow Project definition
│   ├── params.yaml           # Default parameters
│   └── requirements.txt      # Python dependencies for training
├── .github/workflows/ci.yml  # GitHub Actions CI pipeline
├── README.md                 # *You are reading it*
└── requirements.txt          # Top‑level dependencies (Docker, CI)
```

## 🛠️ Core Components
- **MLProject** – Standardised entry point for training (`mlflow run MLProject`).
- **Dockerfile** – Builds a reproducible image that runs `Inference.py` (served from `SMSML_Rois-Hoiron/Monitoring dan Logging`).
- **GitHub Actions (`ci.yml`)** – Executes the MLflow run, runs linting, and verifies that the model artifacts are produced.

## 🚀 How to Use
1. **Clone repository**
```bash
git clone https://github.com/roiskhoiron/Customer-Churn-MLOps.git
cd Customer-Churn-MLOps
```
2. **Install dependencies** (for local CI testing)
```bash
pip install -r requirements.txt
```
3. **Run CI locally** (optional)
```bash
bash -c "mlflow run MLProject --env-manager=local"
```
4. **Build Docker image**
```bash
docker build -t churn‑service .
```
5. **Run container** (serves API from `../SMSML_Rois-Hoiron/Monitoring dan Logging/Inference.py`)
```bash
docker run -p 8000:8000 churn‑service
```

## 📊 What This Folder Provides for Kriteria 3
- **MLProject** – standardisation of training commands.
- **CI pipeline** – automatically validates code, runs training, and publishes artefacts.
- **Docker** – ensures reproducible deployment for the serving component.

---
**Proyek SMSML Dicoding Indonesia 2026**  
**Student:** Roishoiron