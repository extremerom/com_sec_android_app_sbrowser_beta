.class public final Lwc/q;
.super Lwc/p;
.source "SourceFile"


# instance fields
.field public final g:LJb/H;

.field public final h:Ljava/lang/String;

.field public final i:Lhc/c;


# direct methods
.method public constructor <init>(LJb/H;Lcc/E;Lec/g;Lec/a;Lac/h;Luc/k;Ljava/lang/String;Lsb/a;)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v14, p1

    move-object/from16 v0, p2

    move-object/from16 v15, p7

    const-string v1, "packageDescriptor"

    invoke-static {v14, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "proto"

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "nameResolver"

    move-object/from16 v2, p3

    invoke-static {v2, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "metadataVersion"

    move-object/from16 v3, p4

    invoke-static {v3, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "components"

    move-object/from16 v4, p6

    invoke-static {v4, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "debugName"

    invoke-static {v15, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, LX4/i;

    iget-object v1, v0, Lcc/E;->g:Lcc/Z;

    const-string v5, "getTypeTable(...)"

    invoke-static {v1, v5}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v10, v1}, LX4/i;-><init>(Lcc/Z;)V

    sget-object v1, Lec/i;->b:Lec/i;

    iget-object v1, v0, Lcc/E;->h:Lcc/g0;

    const-string v5, "getVersionRequirementTable(...)"

    invoke-static {v1, v5}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, LG5/R2;->c(Lcc/g0;)Lec/i;

    move-result-object v11

    move-object/from16 v7, p6

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    invoke-virtual/range {v7 .. v13}, Luc/k;->a(LJb/H;Lec/g;LX4/i;Lec/i;Lec/a;Lac/h;)Luc/m;

    move-result-object v1

    iget-object v2, v0, Lcc/E;->d:Ljava/util/List;

    const-string v3, "getFunctionList(...)"

    invoke-static {v2, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lcc/E;->e:Ljava/util/List;

    const-string v4, "getPropertyList(...)"

    invoke-static {v3, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v0, Lcc/E;->f:Ljava/util/List;

    const-string v0, "getTypeAliasList(...)"

    invoke-static {v4, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v5, p8

    invoke-direct/range {v0 .. v5}, Lwc/p;-><init>(Luc/m;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lsb/a;)V

    iput-object v14, v6, Lwc/q;->g:LJb/H;

    iput-object v15, v6, Lwc/q;->h:Ljava/lang/String;

    move-object v0, v14

    check-cast v0, LMb/D;

    iget-object v0, v0, LMb/D;->f:Lhc/c;

    iput-object v0, v6, Lwc/q;->i:Lhc/c;

    return-void
.end method


# virtual methods
.method public final a(Lrc/f;Lsb/k;)Ljava/util/Collection;
    .locals 3

    const-string v0, "kindFilter"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameFilter"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LRb/c;->WHEN_GET_ALL_DESCRIPTORS:LRb/c;

    invoke-virtual {p0, p1, p2, v0}, Lwc/p;->i(Lrc/f;Lsb/k;LRb/c;)Ljava/util/Collection;

    move-result-object p1

    iget-object p2, p0, Lwc/p;->b:Luc/m;

    iget-object p2, p2, Luc/m;->a:Ljava/lang/Object;

    check-cast p2, Luc/k;

    iget-object p2, p2, Luc/k;->k:Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LLb/c;

    iget-object v2, p0, Lwc/q;->i:Lhc/c;

    invoke-interface {v1, v2}, LLb/c;->b(Lhc/c;)Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1, v0}, Lfb/t;->q(Ljava/lang/Iterable;Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    invoke-static {v0, p1}, Lfb/n;->R(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final c(Lhc/f;LRb/a;)LJb/i;
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lwc/p;->b:Luc/m;

    iget-object v0, v0, Luc/m;->a:Ljava/lang/Object;

    check-cast v0, Luc/k;

    iget-object v0, v0, Luc/k;->i:LRb/b;

    iget-object v1, p0, Lwc/q;->g:LJb/H;

    invoke-static {v0, p2, v1, p1}, LG5/B;->j(LRb/b;LRb/a;LJb/H;Lhc/f;)V

    invoke-super {p0, p1, p2}, Lwc/p;->c(Lhc/f;LRb/a;)LJb/i;

    move-result-object p0

    return-object p0
.end method

.method public final h(Ljava/util/ArrayList;Lsb/k;)V
    .locals 0

    const-string p0, "nameFilter"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final l(Lhc/f;)Lhc/b;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lhc/b;

    iget-object p0, p0, Lwc/q;->i:Lhc/c;

    invoke-direct {v0, p0, p1}, Lhc/b;-><init>(Lhc/c;Lhc/f;)V

    return-object v0
.end method

.method public final n()Ljava/util/Set;
    .locals 0

    sget-object p0, Lfb/x;->a:Lfb/x;

    return-object p0
.end method

.method public final o()Ljava/util/Set;
    .locals 0

    sget-object p0, Lfb/x;->a:Lfb/x;

    return-object p0
.end method

.method public final p()Ljava/util/Set;
    .locals 0

    sget-object p0, Lfb/x;->a:Lfb/x;

    return-object p0
.end method

.method public final q(Lhc/f;)Z
    .locals 3

    const-string v0, "name"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lwc/p;->q(Lhc/f;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lwc/p;->b:Luc/m;

    iget-object v0, v0, Luc/m;->a:Ljava/lang/Object;

    check-cast v0, Luc/k;

    iget-object v0, v0, Luc/k;->k:Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LLb/c;

    iget-object v2, p0, Lwc/q;->i:Lhc/c;

    invoke-interface {v1, v2, p1}, LLb/c;->a(Lhc/c;Lhc/f;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p0, 0x1

    :goto_2
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lwc/q;->h:Ljava/lang/String;

    return-object p0
.end method
