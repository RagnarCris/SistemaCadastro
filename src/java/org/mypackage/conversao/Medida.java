/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.mypackage.conversao;

/**
 *
 * @author crist
 */
public class Medida {
    private String tipoConversao;
    private String unidadeConversao;
    private String unidadeDesejada;

    public String getUnidadeDesejada() {
        return unidadeDesejada;
    }

    public void setUnidadeDesejada(String unidadeDesejada) {
        this.unidadeDesejada = unidadeDesejada;
    }
    private float valorConversao;

    public String getTipoConversao() {
        return tipoConversao;
    }

    public void setTipoConversao(String tipoConversao) {
        this.tipoConversao = tipoConversao;
    }

    public String getUnidadeConversao() {
        return unidadeConversao;
    }

    public void setUnidadeConversao(String unidadeConversao) {
        this.unidadeConversao = unidadeConversao;
    }

    public float getValorConversao() {
        return valorConversao;
    }

    public void setValorConversao(float valorConversao) {
        this.valorConversao = valorConversao;
    }
}
