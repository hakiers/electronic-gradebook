package com.egradebook.frontend.utils;

public class Triple<A, B, C> {
    public final A first;
    public final B second;
    public final C third;

    public Triple()
    {
        this.first=null;
        this.second=null;
        this.third=null;
    }
    public Triple(A first, B second, C third) {
        this.first = first;
        this.second = second;
        this.third = third;
    }

    public A getFirst() { return first; }
    public B getSecond() { return second; }
    public C getThird() { return third; }

    @Override
    public String toString() {
        return  first + ", " + second + ", " + third;
    }

    @Override
    public boolean equals(Object o) {
        if (!(o instanceof Triple)) return false;
        Triple<?, ?, ?> other = (Triple<?, ?, ?>) o;
        return java.util.Objects.equals(first, other.first)
                && java.util.Objects.equals(second, other.second)
                && java.util.Objects.equals(third, other.third);
    }

    @Override
    public int hashCode() {
        return java.util.Objects.hash(first, second, third);
    }
}

