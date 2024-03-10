print("test")

import cv2
import numpy as np

# Create a blank 500x500 black image
image = np.zeros((500, 500, 3), dtype="uint8")

# Set the font, scale, color, and thickness
font = cv2.FONT_HERSHEY_SIMPLEX
font_scale = 1
color = (255, 255, 255) # White color in BGR
thickness = 2
text = "Hello, World!"

# Get the text size to center the text
text_size = cv2.getTextSize(text, font, font_scale, thickness)[0]
text_x = (image.shape[1] - text_size[0]) // 2
text_y = (image.shape[0] + text_size[1]) // 2

# Put the text on the image
cv2.putText(image, text, (text_x, text_y), font, font_scale, color, thickness)

# Display the image
cv2.imshow("Hello World Image", image)

# Wait for a key press and close all windows
cv2.waitKey(0)
cv2.destroyAllWindows()
