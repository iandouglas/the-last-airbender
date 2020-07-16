require 'rails_helper'

RSpec.describe Member do
    it 'builds appropriate objects and attributes' do
        attr = {
            "_id":"5cf5679a915ecad153ab68c8",
            "allies":["Royal Earthbender Guards"],
            "enemies":["Chin"],
            "photoUrl":"https://vignette.wikia.nocookie.net/avatar/images/5/51/46th_Earth_King.png/revision/latest?cb=20130627160441",
            "name":"46th Earth King",
            "affiliation":" Earth Kingdom Earth Kingdom Royal Family"
        }

        member = Member.new(attr)

        expect(member).to be_a(Member)
        expect(member.name).to be_a(String)
        expect(member.name).to eq('46th Earth King')
        expect(member.photo).to be_a(String)
        expect(member.photo).to eq('https://vignette.wikia.nocookie.net/avatar/images/5/51/46th_Earth_King.png/revision/latest?cb=20130627160441')
        expect(member.allies).to be_a(Array)
        expect(member.allies).to eq(['Royal Earthbender Guards'])
        expect(member.enemies).to be_a(Array)
        expect(member.enemies).to eq(['Chin'])
        expect(member.affiliation).to be_a(String)
        expect(member.affiliation).to eq(' Earth Kingdom Earth Kingdom Royal Family')
    end
end