.class public final LX/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LA0/f;
.implements LX/d;
.implements LA0/c;
.implements Lz0/B;


# virtual methods
.method public final getKey()LA0/g;
    .locals 0

    sget-object p0, LX/c;->a:LA0/g;

    return-object p0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public final h(Lz0/j;)V
    .locals 0

    return-void
.end method

.method public final i()V
    .locals 0

    sget-object p0, LX/c;->a:LA0/g;

    iget-object p0, p0, LA0/g;->a:Ltb/m;

    invoke-interface {p0}, Lsb/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LX/d;

    return-void
.end method
