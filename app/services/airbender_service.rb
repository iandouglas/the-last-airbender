class AirbenderService
    def nation_members(search_nation)
        api_nation = search_nation.gsub('_', '+')

        conn = Faraday.new(url: 'https://last-airbender-api.herokuapp.com')
        response = conn.get("/api/v1/characters?affiliation=#{api_nation}&perPage=500")

        payload = JSON.parse(response.body, symbolize_names: true)
        payload.map { |member_attrs| Member.new(member_attrs) }
    end
end