from PIL import Image, ImageDraw, ImageFont
import logging

logger = logging.getLogger("lcd_helper")

class LCDHelper:
    def __init__(self, framebuffer="/dev/fb1", width=480, height=320):
        """Initialize the LCDHelper with framebuffer settings."""
        self.framebuffer = framebuffer
        self.width = width
        self.height = height
        logger.info(f"LCDHelper initialized for framebuffer {self.framebuffer} with size {self.width}x{self.height}")

    def display_image(self, image_path):
        """Display an image on the LCD screen."""
        try:
            image = Image.open(image_path).convert("RGB")  # Convert to RGB format
            image = image.resize((self.width, self.height))  # Resize to match the screen dimensions
            with open(self.framebuffer, 'wb') as fb:
                fb.write(image.tobytes())
            logger.info(f"Image displayed: {image_path}")
        except Exception as e:
            logger.error(f"Error displaying image {image_path}: {e}")
            raise

    def display_text(self, text, font_path="/usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf", font_size=24, position=(10, 10)):
        """Display text on the LCD screen."""
        try:
            font = ImageFont.truetype(font_path, font_size)
            image = Image.new("RGB", (self.width, self.height), "black")
            draw = ImageDraw.Draw(image)
            draw.text(position, text, font=font, fill="white")
            with open(self.framebuffer, 'wb') as fb:
                fb.write(image.tobytes())
            logger.info(f"Text displayed: {text}")
        except Exception as e:
            logger.error(f"Error displaying text '{text}': {e}")
            raise

    def clear_screen(self):
        """Clear the LCD screen by filling it with black."""
        try:
            image = Image.new("RGB", (self.width, self.height), "black")
            with open(self.framebuffer, 'wb') as fb:
                fb.write(image.tobytes())
            logger.info("Screen cleared.")
        except Exception as e:
            logger.error(f"Error clearing screen: {e}")
            raise
