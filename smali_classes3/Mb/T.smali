.class public LMb/T;
.super LMb/U;
.source "SourceFile"

# interfaces
.implements LJb/N;
.implements LJb/Z;


# instance fields
.field public final g:I

.field public final h:Z

.field public final i:Z

.field public final j:Z

.field public final k:Lyc/w;

.field public final l:LMb/T;


# direct methods
.method public constructor <init>(LJb/b;LMb/T;ILKb/h;Lhc/f;Lyc/w;ZZZLyc/w;LJb/S;)V
    .locals 7

    move-object v6, p0

    const-string v0, "containingDeclaration"

    move-object v1, p1

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotations"

    move-object v2, p4

    invoke-static {p4, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    move-object v3, p5

    invoke-static {p5, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outType"

    move-object v4, p6

    invoke-static {p6, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    move-object/from16 v5, p11

    invoke-static {v5, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, LMb/U;-><init>(LJb/l;LKb/h;Lhc/f;Lyc/w;LJb/S;)V

    move v0, p3

    iput v0, v6, LMb/T;->g:I

    move v0, p7

    iput-boolean v0, v6, LMb/T;->h:Z

    move v0, p8

    iput-boolean v0, v6, LMb/T;->i:Z

    move/from16 v0, p9

    iput-boolean v0, v6, LMb/T;->j:Z

    move-object/from16 v0, p10

    iput-object v0, v6, LMb/T;->k:Lyc/w;

    if-nez p2, :cond_0

    move-object v0, v6

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iput-object v0, v6, LMb/T;->l:LMb/T;

    return-void
.end method


# virtual methods
.method public final M()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final bridge synthetic T0()LJb/m;
    .locals 0

    invoke-virtual {p0}, LMb/T;->X0()LMb/T;

    move-result-object p0

    return-object p0
.end method

.method public U0(LHb/g;Lhc/f;I)LMb/T;
    .locals 13

    move-object v0, p0

    new-instance v12, LMb/T;

    invoke-virtual {p0}, LF3/f;->u()LKb/h;

    move-result-object v4

    const-string v1, "<get-annotations>(...)"

    invoke-static {v4, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LMb/U;->getType()Lyc/w;

    move-result-object v6

    const-string v1, "getType(...)"

    invoke-static {v6, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LMb/T;->V0()Z

    move-result v7

    sget-object v11, LJb/S;->L:LJb/T;

    iget-boolean v9, v0, LMb/T;->j:Z

    iget-object v10, v0, LMb/T;->k:Lyc/w;

    const/4 v2, 0x0

    iget-boolean v8, v0, LMb/T;->i:Z

    move-object v0, v12

    move-object v1, p1

    move/from16 v3, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v11}, LMb/T;-><init>(LJb/b;LMb/T;ILKb/h;Lhc/f;Lyc/w;ZZZLyc/w;LJb/S;)V

    return-object v12
.end method

.method public final V0()Z
    .locals 1

    iget-boolean v0, p0, LMb/T;->h:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LMb/T;->W0()LJb/b;

    move-result-object p0

    check-cast p0, LJb/d;

    invoke-interface {p0}, LJb/d;->d()LJb/c;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, LJb/c;->FAKE_OVERRIDE:LJb/c;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final W0()LJb/b;
    .locals 1

    invoke-super {p0}, LMb/o;->k()LJb/l;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.CallableDescriptor"

    invoke-static {p0, v0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, LJb/b;

    return-object p0
.end method

.method public final X0()LMb/T;
    .locals 1

    iget-object v0, p0, LMb/T;->l:LMb/T;

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LMb/T;->X0()LMb/T;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic a()LJb/b;
    .locals 0

    invoke-virtual {p0}, LMb/T;->X0()LMb/T;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic a()LJb/l;
    .locals 0

    invoke-virtual {p0}, LMb/T;->X0()LMb/T;

    move-result-object p0

    return-object p0
.end method

.method public final a0(LJb/n;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0, p2}, LJb/n;->g(LMb/T;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final f(Lyc/Y;)LJb/m;
    .locals 1

    const-string v0, "substitutor"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lyc/Y;->a:Lyc/U;

    invoke-virtual {p1}, Lyc/U;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final getVisibility()LJb/p;
    .locals 1

    sget-object p0, LJb/q;->f:LJb/p;

    const-string v0, "LOCAL"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final bridge synthetic k()LJb/l;
    .locals 0

    invoke-virtual {p0}, LMb/T;->W0()LJb/b;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic k0()Lmc/g;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final l()Ljava/util/Collection;
    .locals 4

    invoke-virtual {p0}, LMb/T;->W0()LJb/b;

    move-result-object v0

    invoke-interface {v0}, LJb/b;->l()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "getOverriddenDescriptors(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LJb/b;

    invoke-interface {v2}, LJb/b;->H()Ljava/util/List;

    move-result-object v2

    iget v3, p0, LMb/T;->g:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LMb/T;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method
