package com.dev.wdpvendas;


public enum StatusPedido {
    PENDENTE("pendente"),
    CONCLUIDO("concluido"),
    CANCELADO("cancelado");

    private String status;

    StatusPedido(String status){
        this.status = status;
    }

    public String getStatus(){
        return status;
    }


}
