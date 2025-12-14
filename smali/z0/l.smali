.class public final Lz0/l;
.super Lm0/l;
.source "SourceFile"

# interfaces
.implements LB0/o;


# instance fields
.field public k:Ltb/m;


# virtual methods
.method public final d(LB0/I;Lz0/w;J)Lz0/y;
    .locals 1

    iget-object p0, p0, Lz0/l;->k:Ltb/m;

    new-instance v0, LH0/a;

    invoke-direct {v0, p3, p4}, LH0/a;-><init>(J)V

    invoke-interface {p0, p1, p2, v0}, Lsb/o;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lz0/y;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LayoutModifierImpl(measureBlock="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lz0/l;->k:Ltb/m;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
