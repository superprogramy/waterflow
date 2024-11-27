# Waterfow - README

# WaterFlow Analytics Suite

WaterFlow Analytics Suite is a Python-based solution designed for managing and analyzing water flow systems. It provides functionality for monitoring leak detection, water quality, and maintaining detailed logs of all activities.

---

## Features

- **Leak Detection Management**:
  - Add and track sensor data for water leaks.
  - Monitor sensor location, status, and detection timestamps.
- **Water Quality Monitoring**:
  - Track water quality parameters (e.g., pH, chlorine levels) for specific locations.
- **Logging System**:
  - Maintain detailed logs of all operations and unauthorized access attempts.
- **Access Validation**:
  - Secure sensitive operations with an environment-variable-based secret key.

---

## Quick Start

### Prerequisites
- Python 3.7+
- Ensure the `WATERFLOW_SECRET` environment variable is set.

### Installation
Clone the repository and navigate to the project directory:
```bash
git clone https://github.com/superprogramy/waterflow.git
cd waterflow
```

### Usage
1. Set the environment variable for security:
   ```bash
   export WATERFLOW_SECRET="your_secret_key"
   ```

2. Run the `app.py` script:
   ```bash
   python3 app.py
   ```

3. Example logs will be printed to the console.

---

## Code Overview

### Main Components
- **`WaterFlowAnalyticsSuite`**: Core class handling leak detection and quality monitoring.
- **Methods**:
  - `add_leak_data(sensor_id, location, status, detection_time)`
  - `add_quality_data(sensor_id, location, parameters, timestamp)`
  - `get_logs()`

### Security
All critical operations validate the provided secret key (`WATERFLOW_SECRET`) to prevent unauthorized access.

---

## Example
```python
# Set the secret key in environment variables
os.environ["WATERFLOW_SECRET"] = "your_secret_key"

# Initialize the application
app = WaterFlowAnalyticsSuite(author="Tomasz", secret="your_secret_key")

# Add leak data
app.add_leak_data(sensor_id="L001", location="Sector 5", status="active", detection_time="2024-11-26 10:00")

# Add quality data
app.add_quality_data(sensor_id="Q001", location="Sector 3", parameters={"pH": 7.2, "chlorine": 0.5}, timestamp="2024-11-26 10:15")

# Print logs
for log in app.get_logs():
    print(log)
```

---

## Future Improvements
- Add real-time data streaming support.
- Integrate with IoT devices for automated data collection.
- Expand the quality monitoring module with additional parameters and alerts.

---

## Author
Created by **Tomasz**.

---

## License
This project is licensed under the MIT License. See the `LICENSE` file for details.
