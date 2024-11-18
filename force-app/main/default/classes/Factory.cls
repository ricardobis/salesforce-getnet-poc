public class Factory {
    public static BodyEvento createBody(String nomeEvento, String caseId) {
		System.debug('Criando body para o evento ' + nomeEvento);
        
        BodyEvento ret;
		//vários IFs / switch
        switch on nomeEvento {
            when 'EventoPadrao' {
         		ret = new BodyEvento();       
            }
            when 'EventoCustomizado' {
                ret = new BodyEventoCustomizado();
            }
        }
        
        System.debug('Body do evento criado: ' + ret.body);
        return ret;
    }
}