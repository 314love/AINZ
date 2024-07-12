package com.czxy.domain;

/**
 * @Author 
 * @Date 2022/1/21
 */

import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 有效防治方法
 * CREATE TABLE effective(
 * id VARCHAR(20) PRIMARY KEY,
 * agricultural VARCHAR(20),
 * life VARCHAR(20),
 * physical VARCHAR(20),
 * chemical VARCHAR(20),
 * did VARCHAR(20)
 * );
 */
@Table(name = "effective")
public class Effective {
    @Id
    private String id;
    private String agricultural;
    private String life;
    private String physical;
    private String chemical;
    private String did;

    public Effective() {
    }

    public Effective(String id, String agricultural, String life, String physical, String chemical, String did) {
        this.id = id;
        this.agricultural = agricultural;
        this.life = life;
        this.physical = physical;
        this.chemical = chemical;
        this.did = did;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getAgricultural() {
        return agricultural;
    }

    public void setAgricultural(String agricultural) {
        this.agricultural = agricultural;
    }

    public String getLife() {
        return life;
    }

    public void setLife(String life) {
        this.life = life;
    }

    public String getPhysical() {
        return physical;
    }

    public void setPhysical(String physical) {
        this.physical = physical;
    }

    public String getChemical() {
        return chemical;
    }

    public void setChemical(String chemical) {
        this.chemical = chemical;
    }

    public String getDid() {
        return did;
    }

    public void setDid(String did) {
        this.did = did;
    }

    @Override
    public String toString() {
        return "Effective{" +
                "id='" + id + '\'' +
                ", agricultural='" + agricultural + '\'' +
                ", life='" + life + '\'' +
                ", physical='" + physical + '\'' +
                ", chemical='" + chemical + '\'' +
                ", did='" + did + '\'' +
                '}';
    }
}
