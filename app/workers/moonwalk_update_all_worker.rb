class MoonwalkUpdateAllWorker
  include Sidekiq::Worker

  def perform
    # todo: вынести в конфиг
    data = JSON.parse(Faraday.get('http://localhost:8080/updates').body)

    data.each do |anime|
      AnimeUpdateFromJsonWorker.perform_async(anime.to_json)
    end
  end
end