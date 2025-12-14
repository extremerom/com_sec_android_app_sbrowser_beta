.class public final LMb/z;
.super LMb/A;
.source "SourceFile"


# instance fields
.field public final a:LMb/A;

.field public final b:Lyc/Y;

.field public c:Lyc/Y;

.field public d:Ljava/util/ArrayList;

.field public e:Ljava/util/ArrayList;

.field public f:Lyc/k;


# direct methods
.method public constructor <init>(LMb/A;Lyc/Y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LMb/z;->a:LMb/A;

    iput-object p2, p0, LMb/z;->b:Lyc/Y;

    return-void
.end method

.method public static synthetic w0(I)V
    .locals 15

    const/16 v0, 0x17

    const/16 v1, 0xd

    const/16 v2, 0xa

    const/16 v3, 0x8

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eq p0, v7, :cond_0

    if-eq p0, v6, :cond_0

    if-eq p0, v5, :cond_0

    if-eq p0, v4, :cond_0

    if-eq p0, v3, :cond_0

    if-eq p0, v2, :cond_0

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    const-string v8, "@NotNull method %s.%s must not return null"

    goto :goto_0

    :cond_0
    const-string v8, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    :goto_0
    if-eq p0, v7, :cond_1

    if-eq p0, v6, :cond_1

    if-eq p0, v5, :cond_1

    if-eq p0, v4, :cond_1

    if-eq p0, v3, :cond_1

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    move v9, v7

    goto :goto_1

    :cond_1
    move v9, v6

    :goto_1
    new-array v9, v9, [Ljava/lang/Object;

    const-string v10, "kotlin/reflect/jvm/internal/impl/descriptors/impl/LazySubstitutingClassDescriptor"

    const/4 v11, 0x0

    if-eq p0, v7, :cond_5

    if-eq p0, v6, :cond_4

    if-eq p0, v5, :cond_3

    if-eq p0, v4, :cond_4

    if-eq p0, v3, :cond_5

    if-eq p0, v2, :cond_3

    if-eq p0, v1, :cond_4

    if-eq p0, v0, :cond_2

    aput-object v10, v9, v11

    goto :goto_2

    :cond_2
    const-string v12, "substitutor"

    aput-object v12, v9, v11

    goto :goto_2

    :cond_3
    const-string v12, "typeSubstitution"

    aput-object v12, v9, v11

    goto :goto_2

    :cond_4
    const-string v12, "kotlinTypeRefiner"

    aput-object v12, v9, v11

    goto :goto_2

    :cond_5
    const-string v12, "typeArguments"

    aput-object v12, v9, v11

    :goto_2
    const-string v11, "getMemberScope"

    const-string v12, "getUnsubstitutedMemberScope"

    const-string v13, "substitute"

    const/4 v14, 0x1

    packed-switch p0, :pswitch_data_0

    const-string v10, "getTypeConstructor"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_0
    const-string v10, "getSealedSubclasses"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_1
    const-string v10, "getDeclaredTypeParameters"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_2
    const-string v10, "getSource"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_3
    const-string v10, "getUnsubstitutedInnerClassesScope"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_4
    const-string v10, "getVisibility"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_5
    const-string v10, "getModality"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_6
    const-string v10, "getKind"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_7
    aput-object v13, v9, v14

    goto :goto_3

    :pswitch_8
    const-string v10, "getContainingDeclaration"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_9
    const-string v10, "getOriginal"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_a
    const-string v10, "getName"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_b
    const-string v10, "getAnnotations"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_c
    const-string v10, "getConstructors"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_d
    const-string v10, "getContextReceivers"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_e
    const-string v10, "getDefaultType"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_f
    const-string v10, "getStaticScope"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_10
    aput-object v12, v9, v14

    goto :goto_3

    :pswitch_11
    aput-object v11, v9, v14

    goto :goto_3

    :pswitch_12
    aput-object v10, v9, v14

    :goto_3
    if-eq p0, v7, :cond_8

    if-eq p0, v6, :cond_8

    if-eq p0, v5, :cond_8

    if-eq p0, v4, :cond_8

    if-eq p0, v3, :cond_8

    if-eq p0, v2, :cond_8

    if-eq p0, v1, :cond_7

    if-eq p0, v0, :cond_6

    goto :goto_4

    :cond_6
    aput-object v13, v9, v7

    goto :goto_4

    :cond_7
    aput-object v12, v9, v7

    goto :goto_4

    :cond_8
    aput-object v11, v9, v7

    :goto_4
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    if-eq p0, v7, :cond_9

    if-eq p0, v6, :cond_9

    if-eq p0, v5, :cond_9

    if-eq p0, v4, :cond_9

    if-eq p0, v3, :cond_9

    if-eq p0, v2, :cond_9

    if-eq p0, v1, :cond_9

    if-eq p0, v0, :cond_9

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_12
        :pswitch_11
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_12
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_12
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final B0()Z
    .locals 0

    iget-object p0, p0, LMb/z;->a:LMb/A;

    invoke-interface {p0}, LJb/f;->B0()Z

    move-result p0

    return p0
.end method

.method public final C0()LMb/w;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final E()LMb/j;
    .locals 0

    iget-object p0, p0, LMb/z;->a:LMb/A;

    invoke-interface {p0}, LJb/f;->E()LMb/j;

    move-result-object p0

    return-object p0
.end method

.method public final Q()Lrc/o;
    .locals 0

    iget-object p0, p0, LMb/z;->a:LMb/A;

    invoke-interface {p0}, LJb/f;->Q()Lrc/o;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x1c

    invoke-static {p0}, LMb/z;->w0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final R()LJb/X;
    .locals 7

    iget-object v0, p0, LMb/z;->a:LMb/A;

    invoke-interface {v0}, LJb/f;->R()LJb/X;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v1, v0, LJb/w;

    iget-object v2, p0, LMb/z;->b:Lyc/Y;

    if-eqz v1, :cond_3

    new-instance v1, LJb/w;

    check-cast v0, LJb/w;

    iget-object v3, v0, LJb/w;->b:LBc/e;

    check-cast v3, Lyc/A;

    if-eqz v3, :cond_2

    iget-object v2, v2, Lyc/Y;->a:Lyc/U;

    invoke-virtual {v2}, Lyc/U;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, LMb/z;->z0()Lyc/Y;

    move-result-object p0

    sget-object v2, Lyc/e0;->INVARIANT:Lyc/e0;

    invoke-virtual {p0, v3, v2}, Lyc/Y;->i(Lyc/w;Lyc/e0;)Lyc/w;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lyc/A;

    :cond_2
    :goto_0
    iget-object p0, v0, LJb/w;->a:Lhc/f;

    invoke-direct {v1, p0, v3}, LJb/w;-><init>(Lhc/f;LBc/e;)V

    goto :goto_3

    :cond_3
    instance-of v1, v0, LJb/D;

    if-eqz v1, :cond_7

    check-cast v0, LJb/D;

    iget-object v0, v0, LJb/D;->a:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldb/j;

    iget-object v4, v3, Ldb/j;->a:Ljava/lang/Object;

    check-cast v4, Lhc/f;

    iget-object v3, v3, Ldb/j;->b:Ljava/lang/Object;

    check-cast v3, LBc/e;

    check-cast v3, Lyc/A;

    if-eqz v3, :cond_5

    iget-object v5, v2, Lyc/Y;->a:Lyc/U;

    invoke-virtual {v5}, Lyc/U;->e()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, LMb/z;->z0()Lyc/Y;

    move-result-object v5

    sget-object v6, Lyc/e0;->INVARIANT:Lyc/e0;

    invoke-virtual {v5, v3, v6}, Lyc/Y;->i(Lyc/w;Lyc/e0;)Lyc/w;

    move-result-object v3

    check-cast v3, Lyc/A;

    :cond_5
    :goto_2
    new-instance v5, Ldb/j;

    invoke-direct {v5, v4, v3}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    new-instance p0, LJb/D;

    invoke-direct {p0, v1}, LJb/D;-><init>(Ljava/util/ArrayList;)V

    move-object v1, p0

    :goto_3
    return-object v1

    :cond_7
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public final S()Lrc/o;
    .locals 1

    iget-object v0, p0, LMb/z;->a:LMb/A;

    invoke-static {v0}, Lkc/e;->d(LJb/l;)LJb/C;

    move-result-object v0

    invoke-static {v0}, Loc/d;->i(LJb/C;)V

    sget-object v0, Lzc/f;->a:Lzc/f;

    invoke-virtual {p0, v0}, LMb/z;->f0(Lzc/f;)Lrc/o;

    move-result-object p0

    return-object p0
.end method

.method public final U()Z
    .locals 0

    iget-object p0, p0, LMb/z;->a:LMb/A;

    invoke-interface {p0}, LJb/z;->U()Z

    move-result p0

    return p0
.end method

.method public final V()Ljava/util/List;
    .locals 0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x11

    invoke-static {p0}, LMb/z;->w0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final W()Z
    .locals 0

    iget-object p0, p0, LMb/z;->a:LMb/A;

    invoke-interface {p0}, LJb/z;->W()Z

    move-result p0

    return p0
.end method

.method public final X()Z
    .locals 0

    iget-object p0, p0, LMb/z;->a:LMb/A;

    invoke-interface {p0}, LJb/f;->X()Z

    move-result p0

    return p0
.end method

.method public final a()LJb/f;
    .locals 0

    iget-object p0, p0, LMb/z;->a:LMb/A;

    invoke-interface {p0}, LJb/f;->a()LJb/f;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x15

    invoke-static {p0}, LMb/z;->w0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final a0(LJb/n;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0, p2}, LJb/n;->P(LMb/A;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final c0()Z
    .locals 0

    iget-object p0, p0, LMb/z;->a:LMb/A;

    invoke-interface {p0}, LJb/f;->c0()Z

    move-result p0

    return p0
.end method

.method public final d()LJb/g;
    .locals 0

    iget-object p0, p0, LMb/z;->a:LMb/A;

    invoke-interface {p0}, LJb/f;->d()LJb/g;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x19

    invoke-static {p0}, LMb/z;->w0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final e()LJb/S;
    .locals 0

    sget-object p0, LJb/S;->L:LJb/T;

    return-object p0
.end method

.method public final f(Lyc/Y;)LJb/m;
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p1, Lyc/Y;->a:Lyc/U;

    invoke-virtual {v0}, Lyc/U;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LMb/z;

    invoke-virtual {p1}, Lyc/Y;->f()Lyc/U;

    move-result-object p1

    invoke-virtual {p0}, LMb/z;->z0()Lyc/Y;

    move-result-object v1

    invoke-virtual {v1}, Lyc/Y;->f()Lyc/U;

    move-result-object v1

    invoke-static {p1, v1}, Lyc/Y;->e(Lyc/U;Lyc/U;)Lyc/Y;

    move-result-object p1

    invoke-direct {v0, p0, p1}, LMb/z;-><init>(LMb/A;Lyc/Y;)V

    move-object p0, v0

    :goto_0
    return-object p0

    :cond_1
    const/16 p0, 0x17

    invoke-static {p0}, LMb/z;->w0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final f0(Lzc/f;)Lrc/o;
    .locals 1

    iget-object v0, p0, LMb/z;->a:LMb/A;

    invoke-virtual {v0, p1}, LMb/A;->f0(Lzc/f;)Lrc/o;

    move-result-object p1

    iget-object v0, p0, LMb/z;->b:Lyc/Y;

    iget-object v0, v0, Lyc/Y;->a:Lyc/U;

    invoke-virtual {v0}, Lyc/U;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/16 p0, 0xe

    invoke-static {p0}, LMb/z;->w0(I)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    new-instance v0, Lrc/t;

    invoke-virtual {p0}, LMb/z;->z0()Lyc/Y;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lrc/t;-><init>(Lrc/o;Lyc/Y;)V

    return-object v0
.end method

.method public final g()Z
    .locals 0

    iget-object p0, p0, LMb/z;->a:LMb/A;

    invoke-interface {p0}, LJb/f;->g()Z

    move-result p0

    return p0
.end method

.method public final g0()Z
    .locals 0

    iget-object p0, p0, LMb/z;->a:LMb/A;

    invoke-interface {p0}, LJb/z;->g0()Z

    move-result p0

    return p0
.end method

.method public final getName()Lhc/f;
    .locals 0

    iget-object p0, p0, LMb/z;->a:LMb/A;

    invoke-interface {p0}, LJb/l;->getName()Lhc/f;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x14

    invoke-static {p0}, LMb/z;->w0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getVisibility()LJb/p;
    .locals 0

    iget-object p0, p0, LMb/z;->a:LMb/A;

    invoke-interface {p0}, LJb/f;->getVisibility()LJb/p;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x1b

    invoke-static {p0}, LMb/z;->w0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final h()Ljava/util/Collection;
    .locals 5

    iget-object v0, p0, LMb/z;->a:LMb/A;

    invoke-interface {v0}, LJb/f;->h()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LMb/j;

    move-object v3, v2

    check-cast v3, LMb/v;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lyc/Y;->b:Lyc/Y;

    invoke-virtual {v3, v4}, LMb/v;->a1(Lyc/Y;)LMb/u;

    move-result-object v4

    invoke-virtual {v2}, LMb/j;->h1()LMb/j;

    move-result-object v2

    iput-object v2, v4, LMb/u;->e:LJb/v;

    invoke-virtual {v3}, LMb/v;->r()LJb/B;

    move-result-object v2

    invoke-virtual {v4, v2}, LMb/u;->m(LJb/B;)LJb/u;

    invoke-virtual {v3}, LMb/v;->getVisibility()LJb/p;

    move-result-object v2

    invoke-virtual {v4, v2}, LMb/u;->D(LJb/p;)LJb/u;

    invoke-virtual {v3}, LMb/v;->d()LJb/c;

    move-result-object v2

    invoke-virtual {v4, v2}, LMb/u;->r(LJb/c;)LJb/u;

    const/4 v2, 0x0

    iput-boolean v2, v4, LMb/u;->m:Z

    iget-object v2, v4, LMb/u;->x:LMb/v;

    invoke-virtual {v2, v4}, LMb/v;->X0(LMb/u;)LMb/v;

    move-result-object v2

    check-cast v2, LMb/j;

    invoke-virtual {p0}, LMb/z;->z0()Lyc/Y;

    move-result-object v3

    invoke-virtual {v2, v3}, LMb/j;->k1(Lyc/Y;)LMb/j;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final i()Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, LMb/z;->a:LMb/A;

    invoke-interface {p0}, LJb/f;->i()Ljava/util/Collection;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x1f

    invoke-static {p0}, LMb/z;->w0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final j0()Lrc/o;
    .locals 0

    iget-object p0, p0, LMb/z;->a:LMb/A;

    invoke-interface {p0}, LJb/f;->j0()Lrc/o;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0xf

    invoke-static {p0}, LMb/z;->w0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final k()LJb/l;
    .locals 0

    iget-object p0, p0, LMb/z;->a:LMb/A;

    invoke-interface {p0}, LJb/l;->k()LJb/l;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x16

    invoke-static {p0}, LMb/z;->w0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final n()Lyc/A;
    .locals 4

    invoke-virtual {p0}, LMb/z;->w()Lyc/L;

    move-result-object v0

    invoke-interface {v0}, Lyc/L;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lyc/b0;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, LMb/z;->u()LKb/h;

    move-result-object v1

    invoke-interface {v1}, LKb/h;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v1, Lyc/H;->b:LA7/h;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lyc/H;->c:Lyc/H;

    goto :goto_0

    :cond_0
    sget-object v2, Lyc/H;->b:LA7/h;

    new-instance v3, Lyc/i;

    invoke-direct {v3, v1}, Lyc/i;-><init>(LKb/h;)V

    invoke-static {v3}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, LA7/h;->c(Ljava/util/List;)Lyc/H;

    move-result-object v1

    :goto_0
    invoke-virtual {p0}, LMb/z;->w()Lyc/L;

    move-result-object v2

    invoke-virtual {p0}, LMb/z;->S()Lrc/o;

    move-result-object p0

    const/4 v3, 0x0

    invoke-static {v0, p0, v1, v2, v3}, Lyc/c;->v(Ljava/util/List;Lrc/o;Lyc/H;Lyc/L;Z)Lyc/A;

    move-result-object p0

    return-object p0
.end method

.method public final o0(Lyc/U;)Lrc/o;
    .locals 1

    invoke-static {p0}, Lkc/e;->d(LJb/l;)LJb/C;

    move-result-object v0

    invoke-static {v0}, Loc/d;->i(LJb/C;)V

    sget-object v0, Lzc/f;->a:Lzc/f;

    invoke-virtual {p0, p1, v0}, LMb/z;->y(Lyc/U;Lzc/f;)Lrc/o;

    move-result-object p0

    return-object p0
.end method

.method public final q()Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, LMb/z;->z0()Lyc/Y;

    iget-object p0, p0, LMb/z;->e:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x1e

    invoke-static {p0}, LMb/z;->w0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final r()LJb/B;
    .locals 0

    iget-object p0, p0, LMb/z;->a:LMb/A;

    invoke-interface {p0}, LJb/f;->r()LJb/B;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x1a

    invoke-static {p0}, LMb/z;->w0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final s()Z
    .locals 0

    iget-object p0, p0, LMb/z;->a:LMb/A;

    invoke-interface {p0}, LJb/f;->s()Z

    move-result p0

    return p0
.end method

.method public final u()LKb/h;
    .locals 0

    iget-object p0, p0, LMb/z;->a:LMb/A;

    invoke-interface {p0}, LKb/a;->u()LKb/h;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x13

    invoke-static {p0}, LMb/z;->w0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final w()Lyc/L;
    .locals 6

    iget-object v0, p0, LMb/z;->a:LMb/A;

    invoke-interface {v0}, LJb/i;->w()Lyc/L;

    move-result-object v0

    iget-object v1, p0, LMb/z;->b:Lyc/Y;

    iget-object v1, v1, Lyc/Y;->a:Lyc/U;

    invoke-virtual {v1}, Lyc/U;->e()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 p0, 0x0

    invoke-static {p0}, LMb/z;->w0(I)V

    throw v2

    :cond_1
    iget-object v1, p0, LMb/z;->f:Lyc/k;

    if-nez v1, :cond_3

    invoke-virtual {p0}, LMb/z;->z0()Lyc/Y;

    move-result-object v1

    invoke-interface {v0}, Lyc/L;->d()Ljava/util/Collection;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyc/w;

    sget-object v5, Lyc/e0;->INVARIANT:Lyc/e0;

    invoke-virtual {v1, v4, v5}, Lyc/Y;->i(Lyc/w;Lyc/e0;)Lyc/w;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v0, Lyc/k;

    iget-object v1, p0, LMb/z;->d:Ljava/util/ArrayList;

    sget-object v4, Lxc/l;->e:Lxc/b;

    invoke-direct {v0, p0, v1, v3, v4}, Lyc/k;-><init>(LMb/A;Ljava/util/List;Ljava/util/Collection;Lxc/o;)V

    iput-object v0, p0, LMb/z;->f:Lyc/k;

    :cond_3
    iget-object p0, p0, LMb/z;->f:Lyc/k;

    if-eqz p0, :cond_4

    return-object p0

    :cond_4
    const/4 p0, 0x1

    invoke-static {p0}, LMb/z;->w0(I)V

    throw v2
.end method

.method public final y(Lyc/U;Lzc/f;)Lrc/o;
    .locals 1

    iget-object v0, p0, LMb/z;->a:LMb/A;

    invoke-virtual {v0, p1, p2}, LMb/A;->y(Lyc/U;Lzc/f;)Lrc/o;

    move-result-object p1

    iget-object p2, p0, LMb/z;->b:Lyc/Y;

    iget-object p2, p2, Lyc/Y;->a:Lyc/U;

    invoke-virtual {p2}, Lyc/U;->e()Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/4 p0, 0x7

    invoke-static {p0}, LMb/z;->w0(I)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    new-instance p2, Lrc/t;

    invoke-virtual {p0}, LMb/z;->z0()Lyc/Y;

    move-result-object p0

    invoke-direct {p2, p1, p0}, Lrc/t;-><init>(Lrc/o;Lyc/Y;)V

    return-object p2
.end method

.method public final z()Z
    .locals 0

    iget-object p0, p0, LMb/z;->a:LMb/A;

    invoke-interface {p0}, LJb/j;->z()Z

    move-result p0

    return p0
.end method

.method public final z0()Lyc/Y;
    .locals 4

    iget-object v0, p0, LMb/z;->c:Lyc/Y;

    if-nez v0, :cond_3

    iget-object v0, p0, LMb/z;->b:Lyc/Y;

    iget-object v1, v0, Lyc/Y;->a:Lyc/U;

    invoke-virtual {v1}, Lyc/U;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, LMb/z;->c:Lyc/Y;

    goto :goto_1

    :cond_0
    iget-object v1, p0, LMb/z;->a:LMb/A;

    invoke-interface {v1}, LJb/i;->w()Lyc/L;

    move-result-object v1

    invoke-interface {v1}, Lyc/L;->a()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, LMb/z;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lyc/Y;->f()Lyc/U;

    move-result-object v0

    iget-object v2, p0, LMb/z;->d:Ljava/util/ArrayList;

    invoke-static {v1, v0, p0, v2}, Lyc/c;->A(Ljava/util/List;Lyc/U;LJb/l;Ljava/util/ArrayList;)Lyc/Y;

    move-result-object v0

    iput-object v0, p0, LMb/z;->c:Lyc/Y;

    iget-object v0, p0, LMb/z;->d:Ljava/util/ArrayList;

    const-string v1, "<this>"

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, LJb/W;

    invoke-interface {v3}, LJb/W;->P()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iput-object v1, p0, LMb/z;->e:Ljava/util/ArrayList;

    :cond_3
    :goto_1
    iget-object p0, p0, LMb/z;->c:Lyc/Y;

    return-object p0
.end method
