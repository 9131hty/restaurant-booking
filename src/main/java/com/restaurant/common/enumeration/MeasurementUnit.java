package com.restaurant.common.enumeration;

import com.restaurant.common.enumeration.CodeEnum;

public enum MeasurementUnit implements CodeEnum {
    ML, L, G, KG, PORTION, PIECE, SIZE;

    @Override
    public String getCode() {
        return this.name().toLowerCase();
    }

    public String getLabel() {
        switch (this) {
            case ML: return "ml";
            case L: return "l";
            case G: return "g";
            case KG: return "kg";
            case PORTION: return "portion";
            case PIECE: return "piece";
            case SIZE: return "size";
            default: return this.name().toLowerCase();
        }
    }
}
