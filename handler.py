import runpod  # Required.
import time

def handler(job):
    job_input = job["input"]  # Access the input from the request.
    # Add your custom code here.
    time.sleep(10)
    return {"payload":"paylaod"}

runpod.serverless.start({"handler": handler})  
