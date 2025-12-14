.class public abstract Lkc/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LP7/c;

.field public static final b:LP7/c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, LP7/c;

    const-string v1, "ResolutionAnchorProvider"

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, LP7/c;-><init>(ILjava/lang/Object;)V

    sput-object v0, Lkc/p;->a:LP7/c;

    new-instance v0, LP7/c;

    const-string v1, "StdlibClassFinder"

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, LP7/c;-><init>(ILjava/lang/Object;)V

    sput-object v0, Lkc/p;->b:LP7/c;

    return-void
.end method

.method public static synthetic a(I)V
    .locals 11

    const/16 v0, 0x19

    const/16 v1, 0x17

    const/16 v2, 0xc

    if-eq p0, v2, :cond_0

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    const-string v3, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v3, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v4, 0x2

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v5, 0x3

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "kotlin/reflect/jvm/internal/impl/resolve/DescriptorFactory"

    const/4 v7, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v8, "propertyDescriptor"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_1
    const-string v8, "owner"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_2
    const-string v8, "descriptor"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_3
    const-string v8, "enumClass"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_4
    const-string v8, "source"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_5
    const-string v8, "containingClass"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_6
    aput-object v6, v5, v7

    goto :goto_2

    :pswitch_7
    const-string v8, "visibility"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_8
    const-string v8, "sourceElement"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_9
    const-string v8, "parameterAnnotations"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_a
    const-string v8, "annotations"

    aput-object v8, v5, v7

    :goto_2
    const-string v7, "createSetter"

    const-string v8, "createEnumValuesMethod"

    const-string v9, "createEnumValueOfMethod"

    const/4 v10, 0x1

    if-eq p0, v2, :cond_4

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_2

    aput-object v6, v5, v10

    goto :goto_3

    :cond_2
    aput-object v9, v5, v10

    goto :goto_3

    :cond_3
    aput-object v8, v5, v10

    goto :goto_3

    :cond_4
    aput-object v7, v5, v10

    :goto_3
    packed-switch p0, :pswitch_data_1

    const-string v6, "createDefaultSetter"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_b
    const-string v6, "createContextReceiverParameterForClass"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_c
    const-string v6, "createContextReceiverParameterForCallable"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_d
    const-string v6, "createExtensionReceiverParameterForCallable"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_e
    const-string v6, "isEnumSpecialMethod"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_f
    const-string v6, "isEnumValueOfMethod"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_10
    const-string v6, "isEnumValuesMethod"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_11
    const-string v6, "createEnumEntriesProperty"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_12
    aput-object v9, v5, v4

    goto :goto_4

    :pswitch_13
    aput-object v8, v5, v4

    goto :goto_4

    :pswitch_14
    const-string v6, "createPrimaryConstructorForObject"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_15
    const-string v6, "createGetter"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_16
    const-string v6, "createDefaultGetter"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_17
    aput-object v7, v5, v4

    :goto_4
    :pswitch_18
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eq p0, v2, :cond_5

    if-eq p0, v1, :cond_5

    if-eq p0, v0, :cond_5

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_a
        :pswitch_8
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_a
        :pswitch_1
        :pswitch_a
        :pswitch_1
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_18
        :pswitch_16
        :pswitch_16
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_14
        :pswitch_14
        :pswitch_13
        :pswitch_18
        :pswitch_12
        :pswitch_18
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method public static final c(LJb/f;Ljava/util/LinkedHashSet;Lrc/o;Z)V
    .locals 5

    sget-object v0, Lrc/f;->o:Lrc/f;

    const/4 v1, 0x2

    invoke-static {p2, v0, v1}, LG5/G;->g(Lrc/q;Lrc/f;I)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LJb/l;

    instance-of v2, v1, LJb/f;

    if-eqz v2, :cond_0

    check-cast v1, LJb/f;

    invoke-interface {v1}, LJb/z;->g0()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v1}, LJb/l;->getName()Lhc/f;

    move-result-object v1

    const-string v2, "getName(...)"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, LRb/c;->WHEN_GET_ALL_DESCRIPTORS:LRb/c;

    invoke-interface {p2, v1, v2}, Lrc/q;->c(Lhc/f;LRb/a;)LJb/i;

    move-result-object v1

    instance-of v2, v1, LJb/f;

    if-eqz v2, :cond_1

    check-cast v1, LJb/f;

    goto :goto_1

    :cond_1
    instance-of v2, v1, LJb/V;

    if-eqz v2, :cond_2

    check-cast v1, LJb/V;

    check-cast v1, Lwc/t;

    invoke-virtual {v1}, Lwc/t;->U0()LJb/f;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v3

    :cond_3
    :goto_1
    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    if-eqz p0, :cond_7

    sget v2, Lkc/e;->a:I

    invoke-interface {v1}, LJb/i;->w()Lyc/L;

    move-result-object v2

    invoke-interface {v2}, Lyc/L;->d()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyc/w;

    invoke-interface {p0}, LJb/f;->a()LJb/f;

    move-result-object v4

    invoke-static {v3, v4}, Lkc/e;->p(Lyc/w;LJb/f;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p1, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_6
    if-eqz p3, :cond_0

    invoke-interface {v1}, LJb/f;->Q()Lrc/o;

    move-result-object v1

    const-string v2, "getUnsubstitutedInnerClassesScope(...)"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, v1, p3}, Lkc/p;->c(LJb/f;Ljava/util/LinkedHashSet;Lrc/o;Z)V

    goto :goto_0

    :cond_7
    const/16 p0, 0x1b

    invoke-static {p0}, Lkc/e;->a(I)V

    throw v3

    :cond_8
    return-void
.end method

.method public static e(LJb/b;Lyc/w;Lhc/f;LKb/h;I)LMb/w;
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LMb/w;

    new-instance v1, Lsc/a;

    invoke-direct {v1, p0, p1, p2}, Lsc/a;-><init>(LJb/b;Lyc/w;Lhc/f;)V

    sget-object p1, Lhc/g;->a:LKc/j;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lhc/g;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x5f

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object p1

    invoke-direct {v0, p0, v1, p3, p1}, LMb/w;-><init>(LJb/l;LF3/f;LKb/h;Lhc/f;)V

    :goto_0
    return-object v0

    :cond_1
    const/16 p0, 0x21

    invoke-static {p0}, Lkc/p;->a(I)V

    throw v0
.end method

.method public static f(LJb/P;LKb/h;)LMb/K;
    .locals 2

    invoke-interface {p0}, LJb/m;->e()LJb/S;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, p1, v1, v0}, Lkc/p;->l(LJb/P;LKb/h;ZLJb/S;)LMb/K;

    move-result-object p0

    return-object p0
.end method

.method public static g(LJb/P;LKb/h;)LMb/L;
    .locals 6

    sget-object v2, LKb/g;->a:LKb/f;

    invoke-interface {p0}, LJb/m;->e()LJb/S;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {p0}, LJb/z;->getVisibility()LJb/p;

    move-result-object v4

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lkc/p;->m(LJb/P;LKb/h;LKb/h;ZLJb/p;LJb/S;)LMb/L;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x6

    invoke-static {p0}, Lkc/p;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static h(LMb/c;)LMb/J;
    .locals 24

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-static/range {p0 .. p0}, Lkc/e;->d(LJb/l;)LJb/C;

    move-result-object v1

    const-string v2, "<this>"

    invoke-static {v1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lkc/p;->b:LP7/c;

    invoke-interface {v1, v2}, LJb/C;->T(LP7/c;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkc/q;

    sget-object v2, Lhc/i;->w:Lhc/b;

    invoke-static {v1, v2}, LJb/y;->d(LJb/C;Lhc/b;)LJb/f;

    move-result-object v8

    if-nez v8, :cond_0

    return-object v0

    :cond_0
    sget-object v11, LKb/g;->a:LKb/f;

    sget-object v12, LJb/B;->FINAL:LJb/B;

    sget-object v13, LJb/q;->e:LJb/p;

    sget-object v5, LGb/q;->b:Lhc/f;

    sget-object v17, LJb/c;->SYNTHESIZED:LJb/c;

    invoke-interface/range {p0 .. p0}, LJb/m;->e()LJb/S;

    move-result-object v7

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object v2, v12

    move-object v3, v13

    move-object/from16 v6, v17

    invoke-static/range {v1 .. v7}, LMb/J;->V0(LJb/f;LJb/B;LJb/p;ZLhc/f;LJb/c;LJb/S;)LMb/J;

    move-result-object v1

    new-instance v2, LMb/K;

    invoke-interface/range {p0 .. p0}, LJb/m;->e()LJb/S;

    move-result-object v19

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x0

    move-object v9, v2

    move-object v10, v1

    invoke-direct/range {v9 .. v19}, LMb/K;-><init>(LJb/P;LKb/h;LJb/B;LJb/p;ZZZLJb/c;LMb/K;LJb/S;)V

    invoke-virtual {v1, v2, v0, v0, v0}, LMb/J;->Y0(LMb/K;LMb/L;LMb/t;LMb/t;)V

    sget-object v0, Lyc/H;->b:LA7/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lyc/H;->c:Lyc/H;

    invoke-interface {v8}, LJb/i;->w()Lyc/L;

    move-result-object v3

    new-instance v4, Lyc/F;

    invoke-virtual/range {p0 .. p0}, LMb/c;->n()Lyc/A;

    move-result-object v5

    invoke-direct {v4, v5}, Lyc/F;-><init>(Lyc/w;)V

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v5, "attributes"

    invoke-static {v0, v5}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "constructor"

    invoke-static {v3, v5}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "arguments"

    invoke-static {v4, v5}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-static {v4, v0, v3, v5}, Lyc/c;->u(Ljava/util/List;Lyc/H;Lyc/L;Z)Lyc/A;

    move-result-object v19

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v20

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v23

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v23}, LMb/J;->b1(Lyc/w;Ljava/util/List;LMb/w;LMb/w;Ljava/util/List;)V

    invoke-virtual {v1}, LMb/J;->p()Lyc/w;

    move-result-object v0

    invoke-virtual {v2, v0}, LMb/K;->X0(Lyc/w;)V

    return-object v1

    :cond_1
    const/16 v1, 0x1a

    invoke-static {v1}, Lkc/p;->a(I)V

    throw v0
.end method

.method public static i(LMb/c;)LMb/M;
    .locals 14

    if-eqz p0, :cond_0

    sget-object v4, LKb/g;->a:LKb/f;

    sget-object v0, LGb/q;->c:Lhc/f;

    sget-object v1, LJb/c;->SYNTHESIZED:LJb/c;

    invoke-interface {p0}, LJb/m;->e()LJb/S;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, LMb/M;->f1(LJb/f;Lhc/f;LJb/c;LJb/S;)LMb/M;

    move-result-object v12

    new-instance v13, LMb/T;

    const-string v0, "value"

    invoke-static {v0}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v5

    invoke-static {p0}, Loc/d;->e(LJb/l;)LGb/i;

    move-result-object v0

    invoke-virtual {v0}, LGb/i;->v()Lyc/A;

    move-result-object v6

    invoke-interface {p0}, LJb/m;->e()LJb/S;

    move-result-object v11

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object v0, v13

    move-object v1, v12

    invoke-direct/range {v0 .. v11}, LMb/T;-><init>(LJb/b;LMb/T;ILKb/h;Lhc/f;Lyc/w;ZZZLyc/w;LJb/S;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    invoke-static {v13}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {p0}, LMb/c;->n()Lyc/A;

    move-result-object v11

    sget-object p0, LJb/B;->FINAL:LJb/B;

    sget-object v13, LJb/q;->e:LJb/p;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v12

    move-object v12, p0

    invoke-virtual/range {v5 .. v13}, LMb/M;->h1(LMb/w;LMb/w;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lyc/w;LJb/B;LJb/p;)LMb/M;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 p0, 0x18

    invoke-static {p0}, Lkc/p;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static j(LMb/c;)LMb/M;
    .locals 12

    if-eqz p0, :cond_0

    sget-object v0, LGb/q;->a:Lhc/f;

    sget-object v1, LJb/c;->SYNTHESIZED:LJb/c;

    invoke-interface {p0}, LJb/m;->e()LJb/S;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, LMb/M;->f1(LJb/f;Lhc/f;LJb/c;LJb/S;)LMb/M;

    move-result-object v3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    invoke-static {p0}, Loc/d;->e(LJb/l;)LGb/i;

    move-result-object v0

    sget-object v1, Lyc/e0;->INVARIANT:Lyc/e0;

    invoke-virtual {p0}, LMb/c;->n()Lyc/A;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, LGb/i;->i(Lyc/e0;Lyc/d0;)Lyc/A;

    move-result-object v9

    sget-object v10, LJb/B;->FINAL:LJb/B;

    sget-object v11, LJb/q;->e:LJb/p;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v3 .. v11}, LMb/M;->h1(LMb/w;LMb/w;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lyc/w;LJb/B;LJb/p;)LMb/M;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 p0, 0x16

    invoke-static {p0}, Lkc/p;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static k(LJb/b;Lyc/w;LKb/h;)LMb/w;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, LMb/w;

    new-instance v1, Lsc/b;

    invoke-direct {v1, p0, p1}, Lsc/b;-><init>(LJb/b;Lyc/w;)V

    invoke-direct {v0, p0, v1, p2}, LMb/w;-><init>(LJb/l;LF3/f;LKb/h;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static l(LJb/P;LKb/h;ZLJb/S;)LMb/K;
    .locals 12

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    new-instance v0, LMb/K;

    invoke-interface {p0}, LJb/z;->r()LJb/B;

    move-result-object v4

    invoke-interface {p0}, LJb/z;->getVisibility()LJb/p;

    move-result-object v5

    sget-object v9, LJb/c;->DECLARATION:LJb/c;

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v6, p2

    move-object v11, p3

    invoke-direct/range {v1 .. v11}, LMb/K;-><init>(LJb/P;LKb/h;LJb/B;LJb/p;ZZZLJb/c;LMb/K;LJb/S;)V

    return-object v0

    :cond_0
    const/16 p0, 0x13

    invoke-static {p0}, Lkc/p;->a(I)V

    throw v0

    :cond_1
    const/16 p0, 0x12

    invoke-static {p0}, Lkc/p;->a(I)V

    throw v0
.end method

.method public static m(LJb/P;LKb/h;LKb/h;ZLJb/p;LJb/S;)LMb/L;
    .locals 13

    move-object v0, p2

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    if-eqz v0, :cond_2

    if-eqz p4, :cond_1

    if-eqz p5, :cond_0

    new-instance v1, LMb/L;

    invoke-interface {p0}, LJb/z;->r()LJb/B;

    move-result-object v5

    sget-object v10, LJb/c;->DECLARATION:LJb/c;

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v6, p4

    move/from16 v7, p3

    move-object/from16 v12, p5

    invoke-direct/range {v2 .. v12}, LMb/L;-><init>(LJb/P;LKb/h;LJb/B;LJb/p;ZZZLJb/c;LMb/L;LJb/S;)V

    invoke-interface {p0}, LJb/Y;->getType()Lyc/w;

    move-result-object v2

    invoke-static {v1, v2, p2}, LMb/L;->W0(LMb/L;Lyc/w;LKb/h;)LMb/T;

    move-result-object v0

    iput-object v0, v1, LMb/L;->n:LMb/T;

    return-object v1

    :cond_0
    const/16 v0, 0xb

    invoke-static {v0}, Lkc/p;->a(I)V

    throw v1

    :cond_1
    const/16 v0, 0xa

    invoke-static {v0}, Lkc/p;->a(I)V

    throw v1

    :cond_2
    const/16 v0, 0x9

    invoke-static {v0}, Lkc/p;->a(I)V

    throw v1

    :cond_3
    const/16 v0, 0x8

    invoke-static {v0}, Lkc/p;->a(I)V

    throw v1
.end method

.method public static n(LJb/v;)Z
    .locals 2

    invoke-interface {p0}, LJb/d;->d()LJb/c;

    move-result-object v0

    sget-object v1, LJb/c;->SYNTHESIZED:LJb/c;

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, LJb/l;->k()LJb/l;

    move-result-object p0

    sget v0, Lkc/e;->a:I

    sget-object v0, LJb/g;->ENUM_CLASS:LJb/g;

    invoke-static {p0, v0}, Lkc/e;->n(LJb/l;LJb/g;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final o(Ljava/util/Collection;Lsb/k;)Ljava/util/Collection;
    .locals 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0, p0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    new-instance p0, LHc/i;

    invoke-direct {p0}, Lfb/h;-><init>()V

    :goto_0
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v0}, Lfb/n;->C(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    new-instance v3, LHc/i;

    invoke-direct {v3}, Lfb/h;-><init>()V

    new-instance v4, LMb/a;

    const/16 v5, 0xf

    invoke-direct {v4, v5, v3}, LMb/a;-><init>(ILjava/lang/Object;)V

    invoke-static {v2, v0, p1, v4}, Lkc/o;->g(Ljava/lang/Object;Ljava/util/LinkedList;Lsb/k;Lsb/k;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v1, :cond_1

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v2}, Lfb/n;->T(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "single(...)"

    invoke-static {v2, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, LHc/i;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v2, p1}, Lkc/o;->s(Ljava/util/Collection;Lsb/k;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LJb/b;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-interface {p1, v6}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LJb/b;

    invoke-static {v5, v7}, Lkc/o;->k(LJb/b;LJb/b;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v3, v6}, LHc/i;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0, v3}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    :cond_4
    invoke-virtual {p0, v4}, LHc/i;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-object p0
.end method


# virtual methods
.method public abstract b(LJb/d;)V
.end method

.method public abstract d(LJb/d;LJb/d;)V
.end method

.method public p(LJb/d;Ljava/util/Collection;)V
    .locals 0

    const-string p0, "member"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, LJb/d;->v0(Ljava/util/Collection;)V

    return-void
.end method
