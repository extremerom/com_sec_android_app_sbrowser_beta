.class public final LDc/d;
.super Lyc/N;
.source "SourceFile"


# virtual methods
.method public final g(Lyc/L;)Lyc/Q;
    .locals 1

    const-string p0, "key"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Llc/b;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    check-cast p1, Llc/b;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p1}, Llc/b;->b()Lyc/Q;

    move-result-object p0

    invoke-virtual {p0}, Lyc/Q;->c()Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Lyc/F;

    sget-object v0, Lyc/e0;->OUT_VARIANCE:Lyc/e0;

    invoke-interface {p1}, Llc/b;->b()Lyc/Q;

    move-result-object p1

    invoke-virtual {p1}, Lyc/Q;->b()Lyc/w;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lyc/F;-><init>(Lyc/w;Lyc/e0;)V

    return-object p0

    :cond_2
    invoke-interface {p1}, Llc/b;->b()Lyc/Q;

    move-result-object p0

    return-object p0
.end method
