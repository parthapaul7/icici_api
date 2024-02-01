require_relative 'api_client'

request_body = {
  "requestId": "34e75862-32dc-4b16-aa4a-410446865404",
  "requestDatetime": "2019-11-26T12:28:56.321+05:30",
  "partnerCode": "PAR01",
  "applicationReferenceNumber": "REF457679",
  "uid": "{{$guid}}",
  "entityName": "Mr Rajagopal Naidu",
  "pan": "BISPP7664N",
  "constitution": "E4",
  "productCode": "BLG-OLP",
  "sourceCode": "TEST",
  "productType": "DL",
  "underwriting": "BankStatement",
  "emailId": "xcadmin@icicibank.com",
  "consent": "Y",
  "mobile":"8145714219"
}

# example
api_client = APIClient.new('https://api.example.com')
response = api_client.post('/endpoint',request_body)
puts "Response Code: #{response.code}"
puts "Response Body: #{response.body}"
