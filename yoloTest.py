from ultralytics import YOLO
import numpy as np

model = YOLO("yolov8n.pt", "v8")

detection_output = model.predict(source="images/5.jpg", conf=0.25, save=True)
print("============RAW OUTPUT=============")
print(detection_output)

# Move the tensor to CPU and then convert to NumPy array
numpy_output = detection_output[0].cpu().numpy()

print("============NUMPY OUTPUT=============")
print(numpy_output)
