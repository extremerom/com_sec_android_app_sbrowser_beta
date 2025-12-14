.class public interface abstract Lx1/r;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a(Ljava/lang/Object;Lsb/n;)Ljava/lang/Object;
.end method

.method public abstract b(Lsb/k;)Z
.end method

.method public abstract c()Z
.end method

.method public d(Lx1/r;)Lx1/r;
    .locals 1

    const-string v0, "other"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lx1/p;->a:Lx1/p;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lx1/i;

    invoke-direct {v0, p0, p1}, Lx1/i;-><init>(Lx1/r;Lx1/r;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method
