.class public interface abstract Lm0/m;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a(Ljava/lang/Object;Lsb/n;)Ljava/lang/Object;
.end method

.method public abstract e(Lsb/k;)Z
.end method

.method public g(Lm0/m;)Lm0/m;
    .locals 1

    sget-object v0, Lm0/j;->a:Lm0/j;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lm0/f;

    invoke-direct {v0, p0, p1}, Lm0/f;-><init>(Lm0/m;Lm0/m;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method
