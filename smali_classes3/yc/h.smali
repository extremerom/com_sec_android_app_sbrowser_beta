.class public abstract Lyc/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyc/L;


# instance fields
.field public a:I

.field public final b:Lxc/d;


# direct methods
.method public constructor <init>(Lxc/o;)V
    .locals 3

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LDb/E;

    const/16 v1, 0x1c

    invoke-direct {v0, v1, p0}, LDb/E;-><init>(ILjava/lang/Object;)V

    new-instance v1, LMb/a;

    const/16 v2, 0x15

    invoke-direct {v1, v2, p0}, LMb/a;-><init>(ILjava/lang/Object;)V

    check-cast p1, Lxc/l;

    new-instance v2, Lxc/d;

    invoke-direct {v2, p1, v0, v1}, Lxc/d;-><init>(Lxc/l;LDb/E;LMb/a;)V

    iput-object v2, p0, Lyc/h;->b:Lxc/d;

    return-void
.end method


# virtual methods
.method public final bridge synthetic d()Ljava/util/Collection;
    .locals 0

    invoke-virtual {p0}, Lyc/h;->i()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lyc/L;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lyc/h;->hashCode()I

    move-result v2

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Lyc/L;

    invoke-interface {p1}, Lyc/L;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0}, Lyc/L;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v0, v2, :cond_3

    return v1

    :cond_3
    invoke-interface {p0}, Lyc/L;->c()LJb/i;

    move-result-object v0

    invoke-interface {p1}, Lyc/L;->c()LJb/i;

    move-result-object p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    invoke-static {v0}, LAc/l;->f(LJb/l;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v0}, Lkc/e;->o(LJb/l;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p1}, LAc/l;->f(LJb/l;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p1}, Lkc/e;->o(LJb/l;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0, p1}, Lyc/h;->k(LJb/i;)Z

    move-result p0

    return p0

    :cond_5
    return v1
.end method

.method public abstract f()Ljava/util/Collection;
.end method

.method public abstract g()Lyc/w;
.end method

.method public abstract h()LJb/T;
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lyc/h;->a:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Lyc/L;->c()LJb/i;

    move-result-object v0

    invoke-static {v0}, LAc/l;->f(LJb/l;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lkc/e;->o(LJb/l;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lkc/e;->g(LJb/l;)Lhc/d;

    move-result-object v0

    iget-object v0, v0, Lhc/d;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    iput v0, p0, Lyc/h;->a:I

    return v0
.end method

.method public final i()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lyc/h;->b:Lxc/d;

    invoke-virtual {p0}, Lxc/d;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyc/g;

    iget-object p0, p0, Lyc/g;->b:Ljava/util/List;

    return-object p0
.end method

.method public abstract k(LJb/i;)Z
.end method

.method public l(Ljava/util/List;)Ljava/util/List;
    .locals 0

    return-object p1
.end method
