public class InformationController {
    
    
    @AuraEnabled
    public static PlayerStatus getPokemon(integer id){
        
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://www.balldontlie.io/api/v1/players/'+id);
        request.setMethod('GET');
        
        HttpResponse response = http.send(request);
        PlayerStatus results = new PlayerStatus();
        if(response.getStatusCode()==200){
            results = (PlayerStatus) json.deserialize(response.getBody(), PlayerStatus.class);
          	
          system.debug(results);
        }
   		return results;
    }
}