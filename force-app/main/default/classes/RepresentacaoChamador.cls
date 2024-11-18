public class RepresentacaoChamador {
    public static void executar(String nomeEvento, String caseId) {
        Evento evt = new Evento(nomeEvento, caseId); 
        evt.processar();
        System.debug('Estado final do evento: ' + JSON.serialize(evt));
    }
}