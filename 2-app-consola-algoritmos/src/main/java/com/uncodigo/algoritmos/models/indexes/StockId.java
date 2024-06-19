package com.uncodigo.algoritmos.models.indexes;

import java.io.Serializable;
import java.util.Objects;

public class StockId implements Serializable {

    private Integer idProducto;
    private Integer idSucursal;

    public StockId() {
    }

    public StockId(Integer idProducto, Integer idSucursal) {
        this.idProducto = idProducto;
        this.idSucursal = idSucursal;
    }

    public Integer getIdProducto() {
        return idProducto;
    }

    public void setIdProducto(Integer idProducto) {
        this.idProducto = idProducto;
    }

    public Integer getIdSucursal() {
        return idSucursal;
    }

    public void setIdSucursal(Integer idSucursal) {
        this.idSucursal = idSucursal;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        StockId stockId = (StockId) o;
        return idProducto.equals(stockId.idProducto) && idSucursal.equals(stockId.idSucursal);
    }

    @Override
    public int hashCode() {
        return Objects.hash(idProducto, idSucursal);
    }
}
