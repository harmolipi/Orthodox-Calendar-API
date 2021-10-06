# Orthodox Calendar API
This is a RESTful API for accessing Orthodox Calendar information for a given calendar date in JSON format. It's based off of [OCRA](https://github.com/harmolipi/OCRA), but recreated in Rails. The festal calendar dates all exist in [`public/calendar_database.json`](https://github.com/harmolipi/Orthodox-Calendar-API/blob/main/public/calendar_database.json), which is taken from OCRA.

---

## REST API
### Request all calendar dates

#### Request
`GET /calendars`
```console
curl -i "http://localhost:3000/calendars"
```

#### Response
```console
HTTP/1.1 200 OK
X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/"e0838446d6a77480b8086b7cde7fd4db"
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: ada3a155-32ee-48b5-9aab-9374b5815134
X-Runtime: 0.103137
Transfer-Encoding: chunked

[{"month":"09","date":"01","summary":"Ecclesiastical New Year","fastRank":"Fast Day (Wine and Oil Allowed)","saintsAndFeast":"Ecclesiastical New Year; Symeon the Stylite; Synaxis of the Recovery of the Icon of the Most Holy Theotokos of Miasenae ; The 40 Holy Ascetic Virgin Martyrs of Thrace and their Teacher Ammon the Deacon; Holy Martyrs Calliste and Siblings:  Euodus and Hermogenes; Righteous Meletius, The Struggler of the Muioupolis Mountain; Jesus (Joshua) of Navi; Nicholas of Kourtaliotis","epistle":"I Timothy 2:1-7\nTimothy, my son, first of all, I urge that supplications, prayers, intercessions, and thanksgivings be made for all men, for kings and all who are in high positions, that we may lead a quiet and peaceable life, godly and respectful in every way. This is good, and it is acceptable in the sight of God our Savior, who desires all men to be saved and to come to the knowledge of the truth. For there is one God, and there is one mediator between God and men, the man Christ Jesus, who gave himself as a ransom for all, the testimony to which was borne at the proper time. For this I was appointed a preacher and apostle (I am telling the truth, I am not lying), a teacher of the Gentiles in faith and truth.","gospel":"Luke 4:16-22\nAt that time, Jesus came to Nazareth, where he had been brought up; and he went to the synagogue, as his custom was, on the sabbath day. And he stood up to read; and there was given to him the book of the prophet Isaiah. He opened the book and found the place where it was written, \"The Spirit of the Lord is upon me, because he has anointed me to preach good news to the poor. He has sent me to proclaim release to the captives and recovering of sight to the blind, to set at liberty those who are oppressed, to proclaim the acceptable year of the Lord.\" And he closed the book, and gave it back to the attendant, and sat down; and the eyes of all in the synagogue were fixed on him. And he began to say to them, \"Today this scripture has been fulfilled in your hearing.\" And all spoke well of him, and wondered at the gracious words which proceeded out of his mouth."},...]
```

### Request info for particular date
#### Request
`GET /calendar?month=09&date=01`
```console
curl -i "http://localhost:3000/calendar?month=12%date=06"
```

#### Response
```console
HTTP/1.1 200 OK
X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/"e0838446d6a77480b8086b7cde7fd4db"
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: ada3a155-32ee-48b5-9aab-9374b5815134
X-Runtime: 0.103137
Transfer-Encoding: chunked

{"month":"09","date":"01","summary":"Ecclesiastical New Year","fastRank":"Fast Day (Wine and Oil Allowed)","saintsAndFeast":"Ecclesiastical New Year; Symeon the Stylite; Synaxis of the Recovery of the Icon of the Most Holy Theotokos of Miasenae ; The 40 Holy Ascetic Virgin Martyrs of Thrace and their Teacher Ammon the Deacon; Holy Martyrs Calliste and Siblings:  Euodus and Hermogenes; Righteous Meletius, The Struggler of the Muioupolis Mountain; Jesus (Joshua) of Navi; Nicholas of Kourtaliotis","epistle":"I Timothy 2:1-7\nTimothy, my son, first of all, I urge that supplications, prayers, intercessions, and thanksgivings be made for all men, for kings and all who are in high positions, that we may lead a quiet and peaceable life, godly and respectful in every way. This is good, and it is acceptable in the sight of God our Savior, who desires all men to be saved and to come to the knowledge of the truth. For there is one God, and there is one mediator between God and men, the man Christ Jesus, who gave himself as a ransom for all, the testimony to which was borne at the proper time. For this I was appointed a preacher and apostle (I am telling the truth, I am not lying), a teacher of the Gentiles in faith and truth.","gospel":"Luke 4:16-22\nAt that time, Jesus came to Nazareth, where he had been brought up; and he went to the synagogue, as his custom was, on the sabbath day. And he stood up to read; and there was given to him the book of the prophet Isaiah. He opened the book and found the place where it was written, \"The Spirit of the Lord is upon me, because he has anointed me to preach good news to the poor. He has sent me to proclaim release to the captives and recovering of sight to the blind, to set at liberty those who are oppressed, to proclaim the acceptable year of the Lord.\" And he closed the book, and gave it back to the attendant, and sat down; and the eyes of all in the synagogue were fixed on him. And he began to say to them, \"Today this scripture has been fulfilled in your hearing.\" And all spoke well of him, and wondered at the gracious words which proceeded out of his mouth."}niko@penguin:~/coding/side-projects/Orthodox-Calendar-API$ curl -i "http://localhost:3000/calendar?month=09&date=01"
HTTP/1.1 200 OK
X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/"e0838446d6a77480b8086b7cde7fd4db"
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 7b88eb31-67f9-4a82-8dc4-7882dd9b1918
X-Runtime: 0.024188
Transfer-Encoding: chunked

{"month":"09","date":"01","summary":"Ecclesiastical New Year","fastRank":"Fast Day (Wine and Oil Allowed)","saintsAndFeast":"Ecclesiastical New Year; Symeon the Stylite; Synaxis of the Recovery of the Icon of the Most Holy Theotokos of Miasenae ; The 40 Holy Ascetic Virgin Martyrs of Thrace and their Teacher Ammon the Deacon; Holy Martyrs Calliste and Siblings:  Euodus and Hermogenes; Righteous Meletius, The Struggler of the Muioupolis Mountain; Jesus (Joshua) of Navi; Nicholas of Kourtaliotis","epistle":"I Timothy 2:1-7\nTimothy, my son, first of all, I urge that supplications, prayers, intercessions, and thanksgivings be made for all men, for kings and all who are in high positions, that we may lead a quiet and peaceable life, godly and respectful in every way. This is good, and it is acceptable in the sight of God our Savior, who desires all men to be saved and to come to the knowledge of the truth. For there is one God, and there is one mediator between God and men, the man Christ Jesus, who gave himself as a ransom for all, the testimony to which was borne at the proper time. For this I was appointed a preacher and apostle (I am telling the truth, I am not lying), a teacher of the Gentiles in faith and truth.","gospel":"Luke 4:16-22\nAt that time, Jesus came to Nazareth, where he had been brought up; and he went to the synagogue, as his custom was, on the sabbath day. And he stood up to read; and there was given to him the book of the prophet Isaiah. He opened the book and found the place where it was written, \"The Spirit of the Lord is upon me, because he has anointed me to preach good news to the poor. He has sent me to proclaim release to the captives and recovering of sight to the blind, to set at liberty those who are oppressed, to proclaim the acceptable year of the Lord.\" And he closed the book, and gave it back to the attendant, and sat down; and the eyes of all in the synagogue were fixed on him. And he began to say to them, \"Today this scripture has been fulfilled in your hearing.\" And all spoke well of him, and wondered at the gracious words which proceeded out of his mouth."}
```

### Available attributes for each date:
| Attribute | Description |
|--- | --- |
| `month` | Month in 2-digit format (e.g. '09') |
| `date` | Date in 2-digit format (e.g. '01') |
| `summary` | Description of day's feast |
| `fastRank` | Fasting for the day |
| `saintsAndFeast` | List of all saints and feasts celebrated |
| `epistle` | Epistle reading for the day |
| `gospel` | Gospel reading for the day |

## Versioning
API defaults to the latest version. Manually specify by setting the `Accept-version` header (e.g. to `v1`).

### Examples
#### cURL:
```console
curl -H "Accept-version: v1" "http://localhost:3000/calendars"
```

#### [Rest-Client](https://github.com/rest-client/rest-client):
```ruby
RestClient.get('http://localhost:3000/calendars', {'Accept-version' => 'v1'})
```

## Testing
Run all tests with:
```console
$ rspec
```

God bless.
