awebo

links:
https://learnopencv.com/yolov9-advancing-the-yolo-legacy/

comando para ejecutar video analisis:
python detect.py --source './vids/vid4.mp4' --img 640 --device 0 --weights './yolov9-c-converted.pt' --name yolov9_c_c_640_detect

ruta importante
\\wsl.localhost\Ubuntu-20.04\home\verlo\computervision\yolov9\runs\detect\yolov9_c_c_640_detect9

// cpu
python3 detect.py --source './vids/vid.mp4' --img 640 --device cpu --weights './yolov9-c-converted.pt' --name yolov9_c_c_640_detect
