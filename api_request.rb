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

# offer exsistance api 
response = api_client.post('/endpoint',request_body)
puts "Response Code: #{response.code}"
puts "Response Body: #{response.body}"

#offer details api (for existing offer )
offer_details ={
 "requestId": "34e75862-32dc-4b16-aa4a-410446865404",
 "requestDatetime": "2019-11-26T12:28:56.321+05:30",
 "partnerCode": "PAR01",
 "applicationReferenceNumber": "Partner App Reference like Lead Id",
 "uid": "unique Id from the partner",
 "otp": "123456",
 "accountNumber": "058374029348023",
 "customerType": "ETB|NTB",
 "etbType": "WO|NO",
 "demogDetails": {
 "entityDetails": {
 "name": "Bradley Gomez",
 "pan": "ubifao",
 "doi": "merwufci",
 "address": "1109 Cerkes Court",
 "email": "zukgehza@buom.km",
 "state": "RI",
 "city": "Butijisim",
 "pincode": "ojucem",
 "constitution": "misok",
 "mobileNumber": "6188922889568256"
 },
 "promoterDetails": [
 {
 "fullName": "Benelli",
 "gender": "Female",
 "mobileNumber": "3873162085269504",
 "dateOfBirth": "2/8/1973",
 "pan": "ezezamuwele",
 "address": "649 Hupod Pike",
 "city": "Vaplostew",
 "state": "FL",
 "pincode": "ruhadataguckon",
 "shareholdingPattern": "husuhealai"
 }
 ]
 }
}
response = api_client.get('/endpoint', offer_details)
puts "Response Code: #{response.code}"
puts "Response Body: #{response.body}"