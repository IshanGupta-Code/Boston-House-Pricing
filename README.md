# Boston House Pricing

[![License: Apache‑2.0](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](LICENSE)

**Deployed App:** [https://boston-house-pricing-ihsv.onrender.com](https://boston-house-pricing-ihsv.onrender.com)

---

## 🎯 Project Overview

This is a simple machine learning web application that predicts house prices in Boston based on input features.
It uses a trained regression model along with data scaling to generate price estimates via a web UI or API.

---

## 🧩 Repository Structure

```
Boston‑House‑Pricing/
├── app.py
├── Dockerfile
├── LICENSE
├── Linear_Reg_ML.ipynb
├── procfile
├── README.md
├── regmodel.pkl
├── requirements.txt
├── scaling.pkl
└── templates/
    └── home.html
└── static/
    └── style.css
```

* `app.py` — Flask application serving the frontend and endpoints.
* `Linear_Reg_ML.ipynb` — Exploratory data analysis and model training notebook.
* `regmodel.pkl` — Serialized regression model.
* `scaling.pkl` — Serialized scaler (for feature normalization).
* `templates/` — HTML templates for the web interface.
* `Dockerfile` & `procfile` — Deployment files for containerized / cloud deployment.
* `requirements.txt` — Python dependencies.

---

## 🛠️ Getting Started

### Prerequisites

* Python 3.7+
* pip (or virtual environment tool)
* (Optionally) Docker

### Installation & Run Locally

1. Clone the repo

   ```bash
   git clone https://github.com/IshanGupta-Code/Boston-House-Pricing.git
   cd Boston-House-Pricing
   ```

2. Create and activate a virtual environment

   ```bash
   python3 -m venv venv
   source venv/bin/activate   # On Windows: venv\Scripts\activate
   ```

3. Install dependencies

   ```bash
   pip install -r requirements.txt
   ```

4. Run the app

   ```bash
   python app.py
   ```

5. Open your browser and go to `http://localhost:5000` to view the UI.

---

## 🚀 Deployment

This app is deployed on Render at:
**[https://boston-house-pricing-ihsv.onrender.com](https://boston-house-pricing-ihsv.onrender.com)**

You can use either the web form or directly call the API endpoint (if exposed) to get predictions.

---

## 📊 Model & Approach

* The model is a **linear regression** model trained on the classic Boston housing dataset.
* Features are scaled before feeding into the model (using the `scaling.pkl`).
* The pipeline includes EDA, feature scaling, model training, serialization.
* Inference is handled via Flask, receiving inputs from the frontend, preprocessing them with the scaler, and returning the predicted house price.

---

## 📋 Usage Example (API)

Assuming there is an API endpoint `/predict` (POST), a JSON request body might look like:

```json
{
  "feature1": value1,
  "feature2": value2,
  ...
}
```

The response might return:

```json
{
  "predicted_price": 24.5
}
```

---

## 🧪 Testing & Future Work

* Add unit tests for the prediction API and preprocessing steps.
* Try more advanced regression / ensemble models (e.g., RandomForest, XGBoost) for better accuracy.
* Add more input validation and error handling.
* Enhance UI/UX with charts or feature importance visualizations.
* Add CI/CD and automated deployment.

---

## 📚 References

* Boston Housing dataset (from scikit-learn)
* Flask documentation
* Deployment guides (e.g. Render, Heroku)

---

## 📄 License

This project is licensed under the **Apache License 2.0**. See the [LICENSE](LICENSE) file for details.

---

