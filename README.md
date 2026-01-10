# Serverless FastAPI on AWS Lambda 🚀

![Python](https://img.shields.io/badge/Python-3.9%2B-blue) ![FastAPI](https://img.shields.io/badge/FastAPI-0.95%2B-green) ![AWS Lambda](https://img.shields.io/badge/AWS-Lambda-orange) ![Docker](https://img.shields.io/badge/Docker-Ready-blue)

A production-ready template for deploying high-performance **FastAPI** applications on **AWS Lambda**. This project demonstrates how to bridge modern ASGI web frameworks with serverless architecture using Docker containers and automated build scripts.

## 📖 Overview
Traditional web frameworks require a continuously running server. This project leverages **AWS Lambda** to run FastAPI in a serverless environment, meaning it scales automatically to zero when not in use and handles high concurrency without manual server management.

It supports two deployment methods:
1.  **Container Image:** Packaging the API as a Docker image (best for large dependencies like `pandas` or `numpy`).
2.  **Zip Package:** Standard Lambda deployment package.

## 🛠 Tech Stack
* **Framework:** [FastAPI](https://fastapi.tiangolo.com/) (High-performance web API)
* **Serverless Platform:** AWS Lambda
* **Adapter:** [Mangum](https://github.com/jordaneremieff/mangum) (ASGI adapter for AWS Lambda)
* **Containerization:** Docker
* **Automation:** Bash Scripting (`build.sh`)

## 📂 Project Structure
```bash
.
├── main.py              # FastAPI application entry point
├── build.sh             # Automated script to create deployment packages
├── Dockerfile           # Configuration for Lambda-compatible Docker image
├── requirements.txt     # Python dependencies
├── deployment.zip       # Pre-built package for AWS Lambda
└── aws_lambda_web_api.pdf # Architecture diagram & Reference
