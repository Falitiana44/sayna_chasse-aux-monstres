require 'httparty'

@url = "https://fr.dofus.dofapi.fr/monsters"

def larves
    larves_url = @url + "?filter[where][type]=Larves"
    larves_result = HTTParty.get(larves_url).parsed_response
    File.write("./lib/monstres/larves.json", larves_result.to_json, mode: "w")
end

def monstres_des_cavernes
    monstres_des_cavernes_url = @url + "?filter[where][type]=Monstres des cavernes"
    monstres_des_cavernes_result = HTTParty.get(monstres_des_cavernes_url).parsed_response
    File.write("./lib/monstres/monstres_des_cavernes.json", monstres_des_cavernes_result.to_json, mode: "w")
end

def monstres_des_plaines_herbeuses
    monstres_des_plaines_herbeuses_url = @url + "?filter[where][type]=Monstres des Plaines herbeuses"
    monstres_des_plaines_herbeuses_result = HTTParty.get(monstres_des_plaines_herbeuses_url).parsed_response
    File.write("./lib/monstres/monstres_des_plaines_herbeuses.json", monstres_des_plaines_herbeuses_result.to_json, mode: "w")
end

larves
monstres_des_cavernes
monstres_des_plaines_herbeuses