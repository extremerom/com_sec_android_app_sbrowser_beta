.class public abstract Lyc/Q;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a()Lyc/e0;
.end method

.method public abstract b()Lyc/w;
.end method

.method public abstract c()Z
.end method

.method public abstract d(Lzc/f;)Lyc/Q;
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lyc/Q;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lyc/Q;

    invoke-virtual {p0}, Lyc/Q;->c()Z

    move-result v1

    invoke-virtual {p1}, Lyc/Q;->c()Z

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lyc/Q;->a()Lyc/e0;

    move-result-object v1

    invoke-virtual {p1}, Lyc/Q;->a()Lyc/e0;

    move-result-object v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lyc/Q;->b()Lyc/w;

    move-result-object p0

    invoke-virtual {p1}, Lyc/Q;->b()Lyc/w;

    move-result-object p1

    invoke-virtual {p0, p1}, Lyc/w;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 2

    invoke-virtual {p0}, Lyc/Q;->a()Lyc/e0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lyc/Q;->b()Lyc/w;

    move-result-object v1

    invoke-static {v1}, Lyc/b0;->l(Lyc/w;)Z

    move-result v1

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, 0x13

    goto :goto_1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lyc/Q;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 p0, 0x11

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lyc/Q;->b()Lyc/w;

    move-result-object p0

    invoke-virtual {p0}, Lyc/w;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    :goto_1
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lyc/Q;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "*"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lyc/Q;->a()Lyc/e0;

    move-result-object v0

    sget-object v1, Lyc/e0;->INVARIANT:Lyc/e0;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lyc/Q;->b()Lyc/w;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lyc/Q;->a()Lyc/e0;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lyc/Q;->b()Lyc/w;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
