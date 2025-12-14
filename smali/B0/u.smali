.class public final LB0/u;
.super LB0/w;
.source "SourceFile"


# virtual methods
.method public final a(LB0/I;Ljava/util/List;J)Lz0/y;
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Undefined measure and it is required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
