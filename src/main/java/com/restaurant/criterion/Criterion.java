package com.restaurant.criterion;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public abstract class Criterion<E extends Enum<E>> {
    private E criterion;
    private boolean ascending = true;

    public Criterion(E criterion) {
        this.criterion = criterion;
    }

    public Criterion(E criterion, boolean ascending) {
        this.criterion = criterion;
        this.ascending = ascending;
    }
}
