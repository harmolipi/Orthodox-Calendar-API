require 'rails_helper'

RSpec.describe 'Calendar', :request do 
  it 'successfully passes' do
    expect(1 + 1).to eq(2)
  end

  describe 'GET /calendars' do
    context '200' do
      it "returns first date's attributes" do
        get v1_calendars_path
        json_response = JSON.parse(response.body)
        day = json_response.first
        attributes = ["month", "date", "summary", "fastRank", "saintsAndFeast", "epistle", "gospel"]
        expect(day.keys).to match_array(attributes)
        expect(response.status).to eq(200)
      end

      it "returns first date's values" do
        get v1_calendars_path
        json_response = JSON.parse(response.body)
        day = json_response.first
        values = ["09", "01", "Ecclesiastical New Year", "Fast Day (Wine and Oil Allowed)", "Ecclesiastical New Year; Symeon the Stylite; Synaxis of the Recovery of the Icon of the Most Holy Theotokos of Miasenae ; The 40 Holy Ascetic Virgin Martyrs of Thrace and their Teacher Ammon the Deacon; Holy Martyrs Calliste and Siblings:  Euodus and Hermogenes; Righteous Meletius, The Struggler of the Muioupolis Mountain; Jesus (Joshua) of Navi; Nicholas of Kourtaliotis", "I Timothy 2:1-7\nTimothy, my son, first of all, I urge that supplications, prayers, intercessions, and thanksgivings be made for all men, for kings and all who are in high positions, that we may lead a quiet and peaceable life, godly and respectful in every way. This is good, and it is acceptable in the sight of God our Savior, who desires all men to be saved and to come to the knowledge of the truth. For there is one God, and there is one mediator between God and men, the man Christ Jesus, who gave himself as a ransom for all, the testimony to which was borne at the proper time. For this I was appointed a preacher and apostle (I am telling the truth, I am not lying), a teacher of the Gentiles in faith and truth.", "Luke 4:16-22\nAt that time, Jesus came to Nazareth, where he had been brought up; and he went to the synagogue, as his custom was, on the sabbath day. And he stood up to read; and there was given to him the book of the prophet Isaiah. He opened the book and found the place where it was written, \"The Spirit of the Lord is upon me, because he has anointed me to preach good news to the poor. He has sent me to proclaim release to the captives and recovering of sight to the blind, to set at liberty those who are oppressed, to proclaim the acceptable year of the Lord.\" And he closed the book, and gave it back to the attendant, and sat down; and the eyes of all in the synagogue were fixed on him. And he began to say to them, \"Today this scripture has been fulfilled in your hearing.\" And all spoke well of him, and wondered at the gracious words which proceeded out of his mouth."]
        expect(day.values).to match_array(values)
        expect(response.status).to eq(200)
      end
    end
  end
end
