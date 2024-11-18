public class Evento {
    String nomeEvento {get; set;}
    String caseId {get; set;}
	BodyEvento body {get; set;}
    HeaderEvento header {get; set;}
        
    public Evento(String nomeEvento, String caseId) {
        this.nomeEvento = nomeEvento;
		this.caseId = caseId;
    }
    
    public void processar() {
        buscarDados();
        montarRequestBody();
        montarRequestHeader();
    }
    
    public void buscarDados() {
        System.debug('Buscando dados ref ao case ' + caseId);
    }
        
	public void montarRequestBody() {
        this.body = Factory.createBody(nomeEvento, caseId);
		System.debug('Body ' + caseId);
	}
    
    public void montarRequestHeader() {
        this.header = new HeaderEvento();
    }
    
}