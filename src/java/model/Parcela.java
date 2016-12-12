package model;
// Generated 11/12/2016 20:59:30 by Hibernate Tools 4.3.1


import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Parcela generated by hbm2java
 */
@Entity
@Table(name="parcela"
    ,schema="public"
)
public class Parcela  implements java.io.Serializable {


     private int idParcela;
     private short numParcela;
     private Date vencimento;
     private float valor;
     private Set<Parcelamento> parcelamentos = new HashSet<Parcelamento>(0);

    public Parcela() {
    }

	
    public Parcela(int idParcela, short numParcela, Date vencimento, float valor) {
        this.idParcela = idParcela;
        this.numParcela = numParcela;
        this.vencimento = vencimento;
        this.valor = valor;
    }
    public Parcela(int idParcela, short numParcela, Date vencimento, float valor, Set<Parcelamento> parcelamentos) {
       this.idParcela = idParcela;
       this.numParcela = numParcela;
       this.vencimento = vencimento;
       this.valor = valor;
       this.parcelamentos = parcelamentos;
    }
   
     @Id 

    
    @Column(name="id_parcela", unique=true, nullable=false)
    public int getIdParcela() {
        return this.idParcela;
    }
    
    public void setIdParcela(int idParcela) {
        this.idParcela = idParcela;
    }

    
    @Column(name="num_parcela", nullable=false)
    public short getNumParcela() {
        return this.numParcela;
    }
    
    public void setNumParcela(short numParcela) {
        this.numParcela = numParcela;
    }

    @Temporal(TemporalType.DATE)
    @Column(name="vencimento", nullable=false, length=13)
    public Date getVencimento() {
        return this.vencimento;
    }
    
    public void setVencimento(Date vencimento) {
        this.vencimento = vencimento;
    }

    
    @Column(name="valor", nullable=false, precision=8, scale=8)
    public float getValor() {
        return this.valor;
    }
    
    public void setValor(float valor) {
        this.valor = valor;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="parcela")
    public Set<Parcelamento> getParcelamentos() {
        return this.parcelamentos;
    }
    
    public void setParcelamentos(Set<Parcelamento> parcelamentos) {
        this.parcelamentos = parcelamentos;
    }




}

