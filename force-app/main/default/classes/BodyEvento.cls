public virtual class BodyEvento {
    public String body{get; set;}
    
    public BodyEvento() {
        montarBody();
    }
    
    public virtual void montarBody() {
        body = 'Body Padrão';
    }

}