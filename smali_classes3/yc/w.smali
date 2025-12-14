.class public abstract Lyc/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LKb/a;
.implements LBc/d;


# instance fields
.field public a:I


# virtual methods
.method public abstract D0()Ljava/util/List;
.end method

.method public abstract E0()Lyc/H;
.end method

.method public abstract F0()Lyc/L;
.end method

.method public abstract G()Lrc/o;
.end method

.method public abstract G0()Z
.end method

.method public abstract H0(Lzc/f;)Lyc/w;
.end method

.method public abstract I0()Lyc/d0;
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lyc/w;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lyc/w;->G0()Z

    move-result v1

    check-cast p1, Lyc/w;

    invoke-virtual {p1}, Lyc/w;->G0()Z

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lyc/w;->I0()Lyc/d0;

    move-result-object p0

    invoke-virtual {p1}, Lyc/w;->I0()Lyc/d0;

    move-result-object p1

    sget-object v1, Lzc/m;->a:Lzc/m;

    invoke-static {v1, p0, p1}, Lyc/c;->z(Lzc/b;LBc/d;LBc/d;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lyc/w;->a:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Lyc/c;->k(Lyc/w;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lyc/w;->F0()Lyc/L;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lyc/w;->D0()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p0}, Lyc/w;->G0()Z

    move-result v0

    add-int/2addr v0, v1

    :goto_0
    iput v0, p0, Lyc/w;->a:I

    return v0
.end method

.method public final u()LKb/h;
    .locals 0

    invoke-virtual {p0}, Lyc/w;->E0()Lyc/H;

    move-result-object p0

    invoke-static {p0}, Lyc/j;->a(Lyc/H;)LKb/h;

    move-result-object p0

    return-object p0
.end method
