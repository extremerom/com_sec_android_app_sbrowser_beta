.class public final LMb/N;
.super Lrc/p;
.source "SourceFile"


# instance fields
.field public final b:LJb/C;

.field public final c:Lhc/c;


# direct methods
.method public constructor <init>(LJb/C;Lhc/c;)V
    .locals 1

    const-string v0, "moduleDescriptor"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fqName"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LMb/N;->b:LJb/C;

    iput-object p2, p0, LMb/N;->c:Lhc/c;

    return-void
.end method


# virtual methods
.method public final a(Lrc/f;Lsb/k;)Ljava/util/Collection;
    .locals 7

    const-string v0, "kindFilter"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameFilter"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lrc/f;->h:I

    invoke-virtual {p1, v0}, Lrc/f;->a(I)Z

    move-result v0

    sget-object v1, Lfb/v;->a:Lfb/v;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, LMb/N;->c:Lhc/c;

    iget-object v2, v0, Lhc/c;->a:Lhc/d;

    invoke-virtual {v2}, Lhc/d;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lrc/c;->a:Lrc/c;

    iget-object p1, p1, Lrc/f;->a:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v1

    :cond_1
    iget-object p0, p0, LMb/N;->b:LJb/C;

    invoke-interface {p0, v0, p2}, LJb/C;->t(Lhc/c;Lsb/k;)Ljava/util/Collection;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhc/c;

    iget-object v2, v2, Lhc/c;->a:Lhc/d;

    invoke-virtual {v2}, Lhc/d;->f()Lhc/f;

    move-result-object v2

    invoke-interface {p2, v2}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, v2, Lhc/f;->b:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v2}, Lhc/c;->a(Lhc/f;)Lhc/c;

    move-result-object v2

    invoke-interface {p0, v2}, LJb/C;->q0(Lhc/c;)LJb/M;

    move-result-object v2

    check-cast v2, LMb/y;

    iget-object v3, v2, LMb/y;->g:Lxc/i;

    sget-object v5, LMb/y;->i:[LAb/u;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-static {v3, v5}, LG5/C2;->e(Lxc/m;LAb/u;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    move-object v4, v2

    :goto_1
    invoke-static {v1, v4}, LHc/l;->a(Ljava/util/AbstractCollection;Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    return-object v1
.end method

.method public final e()Ljava/util/Set;
    .locals 0

    sget-object p0, Lfb/x;->a:Lfb/x;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "subpackages of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LMb/N;->c:Lhc/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, LMb/N;->b:LJb/C;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
