from kafka import KafkaConsumer
import json

# Kafka Consumer
consumer = KafkaConsumer(
  'transaction_topic',
  bootstrap_servers=['localhost:9092'],
  group_id='transaction_group',
  auto_offset_reset='earliest',
  enable_auto_commit=True,
  value_deserializer=lambda x: json.loads(x.decode('utf-8'))
)

# Function to process the consumed message
def process_message(message):
  print(f"Received message: {message}")
  # You can add logic to process the message here

# Consume messages
def main():
  for message in consumer:
    process_message(message.value)  # Call the processing function for each message

if __name__ == "__main__":
    main()
