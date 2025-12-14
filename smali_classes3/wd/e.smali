.class public final Lwd/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/x;


# virtual methods
.method public final R(Lwd/g;J)V
    .locals 0

    const-string p0, "source"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Lwd/g;->K(J)V

    return-void
.end method

.method public final close()V
    .locals 0

    return-void
.end method

.method public final flush()V
    .locals 0

    return-void
.end method

.method public final timeout()Lwd/B;
    .locals 0

    sget-object p0, Lwd/B;->d:Lwd/A;

    return-object p0
.end method
