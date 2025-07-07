import logging

# Configure the logger (only done once)
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s',
    handlers=[
        logging.StreamHandler(),  # Output to console
        logging.FileHandler('app.log')  # Optional: Output to a file
    ]
)

# Function to get the logger for a specific module
def get_logger():
    return logging.getLogger("PRScs")