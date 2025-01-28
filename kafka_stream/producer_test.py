from kafka import KafkaProducer
from time import sleep
from json import dumps


# initialize kafka producer
producer = KafkaProducer(bootstrap_servers=['localhost:9092'],
    value_serializer=lambda x: 
    dumps(x).encode('utf-8')
  ) 

# Function to send data to Kafka
def send_to_kafka(producer, data):
  producer.send('transaction_topic', value=data)
  producer.flush()

def main():
  i = 0
  while True:
    send_to_kafka(producer, f"hello {i}")
    print("data published")
    sleep(10)
    i += 1
        

if __name__ == "__main__":
    main()