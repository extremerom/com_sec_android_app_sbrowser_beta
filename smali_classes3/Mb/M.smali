.class public LMb/M;
.super LMb/v;
.source "SourceFile"


# direct methods
.method public constructor <init>(LJb/l;LMb/M;LKb/h;Lhc/f;LJb/c;LJb/S;)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-eqz p3, :cond_3

    if-eqz p4, :cond_2

    if-eqz p5, :cond_1

    if-eqz p6, :cond_0

    move-object v0, p0

    move-object v1, p5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p6

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, LMb/v;-><init>(LJb/c;LJb/l;LJb/v;LJb/S;LKb/h;Lhc/f;)V

    return-void

    :cond_0
    const/4 p0, 0x4

    invoke-static {p0}, LMb/M;->D0(I)V

    throw v0

    :cond_1
    const/4 p0, 0x3

    invoke-static {p0}, LMb/M;->D0(I)V

    throw v0

    :cond_2
    const/4 p0, 0x2

    invoke-static {p0}, LMb/M;->D0(I)V

    throw v0

    :cond_3
    const/4 p0, 0x1

    invoke-static {p0}, LMb/M;->D0(I)V

    throw v0

    :cond_4
    const/4 p0, 0x0

    invoke-static {p0}, LMb/M;->D0(I)V

    throw v0
.end method

.method public static synthetic D0(I)V
    .locals 12

    const/16 v0, 0x1e

    const/16 v1, 0x1d

    const/16 v2, 0x18

    const/16 v3, 0x17

    const/16 v4, 0x12

    const/16 v5, 0xd

    if-eq p0, v5, :cond_0

    if-eq p0, v4, :cond_0

    if-eq p0, v3, :cond_0

    if-eq p0, v2, :cond_0

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    const-string v6, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v6, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v7, 0x2

    if-eq p0, v5, :cond_1

    if-eq p0, v4, :cond_1

    if-eq p0, v3, :cond_1

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v8, 0x3

    goto :goto_1

    :cond_1
    move v8, v7

    :goto_1
    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "kotlin/reflect/jvm/internal/impl/descriptors/impl/SimpleFunctionDescriptorImpl"

    const/4 v10, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v11, "containingDeclaration"

    aput-object v11, v8, v10

    goto :goto_2

    :pswitch_1
    const-string v11, "newOwner"

    aput-object v11, v8, v10

    goto :goto_2

    :pswitch_2
    const-string v11, "contextReceiverParameters"

    aput-object v11, v8, v10

    goto :goto_2

    :pswitch_3
    aput-object v9, v8, v10

    goto :goto_2

    :pswitch_4
    const-string v11, "visibility"

    aput-object v11, v8, v10

    goto :goto_2

    :pswitch_5
    const-string v11, "unsubstitutedValueParameters"

    aput-object v11, v8, v10

    goto :goto_2

    :pswitch_6
    const-string v11, "typeParameters"

    aput-object v11, v8, v10

    goto :goto_2

    :pswitch_7
    const-string v11, "source"

    aput-object v11, v8, v10

    goto :goto_2

    :pswitch_8
    const-string v11, "kind"

    aput-object v11, v8, v10

    goto :goto_2

    :pswitch_9
    const-string v11, "name"

    aput-object v11, v8, v10

    goto :goto_2

    :pswitch_a
    const-string v11, "annotations"

    aput-object v11, v8, v10

    :goto_2
    const-string v10, "initialize"

    const/4 v11, 0x1

    if-eq p0, v5, :cond_5

    if-eq p0, v4, :cond_5

    if-eq p0, v3, :cond_5

    if-eq p0, v2, :cond_4

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_2

    aput-object v9, v8, v11

    goto :goto_3

    :cond_2
    const-string v9, "newCopyBuilder"

    aput-object v9, v8, v11

    goto :goto_3

    :cond_3
    const-string v9, "copy"

    aput-object v9, v8, v11

    goto :goto_3

    :cond_4
    const-string v9, "getOriginal"

    aput-object v9, v8, v11

    goto :goto_3

    :cond_5
    aput-object v10, v8, v11

    :goto_3
    packed-switch p0, :pswitch_data_1

    const-string v9, "<init>"

    aput-object v9, v8, v7

    goto :goto_4

    :pswitch_b
    const-string v9, "createSubstitutedCopy"

    aput-object v9, v8, v7

    goto :goto_4

    :pswitch_c
    aput-object v10, v8, v7

    goto :goto_4

    :pswitch_d
    const-string v9, "create"

    aput-object v9, v8, v7

    :goto_4
    :pswitch_e
    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    if-eq p0, v5, :cond_6

    if-eq p0, v4, :cond_6

    if-eq p0, v3, :cond_6

    if-eq p0, v2, :cond_6

    if-eq p0, v1, :cond_6

    if-eq p0, v0, :cond_6

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_8
        :pswitch_a
        :pswitch_7
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_e
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_e
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_e
        :pswitch_e
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method

.method public static f1(LJb/f;Lhc/f;LJb/c;LJb/S;)LMb/M;
    .locals 8

    sget-object v3, LKb/g;->a:LKb/f;

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    new-instance v7, LMb/M;

    const/4 v2, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, LMb/M;-><init>(LJb/l;LMb/M;LKb/h;Lhc/f;LJb/c;LJb/S;)V

    return-object v7

    :cond_0
    const/16 p0, 0x9

    invoke-static {p0}, LMb/M;->D0(I)V

    throw v0

    :cond_1
    const/16 p0, 0x8

    invoke-static {p0}, LMb/M;->D0(I)V

    throw v0

    :cond_2
    const/4 p0, 0x7

    invoke-static {p0}, LMb/M;->D0(I)V

    throw v0

    :cond_3
    const/4 p0, 0x5

    invoke-static {p0}, LMb/M;->D0(I)V

    throw v0
.end method


# virtual methods
.method public final bridge synthetic T0()LJb/m;
    .locals 0

    invoke-virtual {p0}, LMb/M;->g1()LMb/M;

    move-result-object p0

    return-object p0
.end method

.method public W0(LJb/c;LJb/l;LJb/v;LJb/S;LKb/h;Lhc/f;)LMb/v;
    .locals 8

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    if-eqz p1, :cond_2

    if-eqz p5, :cond_1

    new-instance v0, LMb/M;

    move-object v3, p3

    check-cast v3, LMb/M;

    if-eqz p6, :cond_0

    :goto_0
    move-object v5, p6

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, LMb/n;->getName()Lhc/f;

    move-result-object p6

    goto :goto_0

    :goto_1
    move-object v1, v0

    move-object v2, p2

    move-object v4, p5

    move-object v6, p1

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, LMb/M;-><init>(LJb/l;LMb/M;LKb/h;Lhc/f;LJb/c;LJb/S;)V

    return-object v0

    :cond_1
    const/16 p0, 0x1b

    invoke-static {p0}, LMb/M;->D0(I)V

    throw v0

    :cond_2
    const/16 p0, 0x1a

    invoke-static {p0}, LMb/M;->D0(I)V

    throw v0

    :cond_3
    const/16 p0, 0x19

    invoke-static {p0}, LMb/M;->D0(I)V

    throw v0
.end method

.method public final bridge synthetic Z0(LMb/w;LMb/w;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lyc/w;LJb/B;LJb/p;)V
    .locals 0

    invoke-virtual/range {p0 .. p8}, LMb/M;->h1(LMb/w;LMb/w;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lyc/w;LJb/B;LJb/p;)LMb/M;

    return-void
.end method

.method public final bridge synthetic a()LJb/b;
    .locals 0

    invoke-virtual {p0}, LMb/M;->g1()LMb/M;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic a()LJb/d;
    .locals 0

    invoke-virtual {p0}, LMb/M;->g1()LMb/M;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic a()LJb/l;
    .locals 0

    invoke-virtual {p0}, LMb/M;->g1()LMb/M;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic a()LJb/v;
    .locals 0

    invoke-virtual {p0}, LMb/M;->g1()LMb/M;

    move-result-object p0

    return-object p0
.end method

.method public final g1()LMb/M;
    .locals 0

    invoke-super {p0}, LMb/v;->a()LJb/v;

    move-result-object p0

    check-cast p0, LMb/M;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x18

    invoke-static {p0}, LMb/M;->D0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final h1(LMb/w;LMb/w;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lyc/w;LJb/B;LJb/p;)LMb/M;
    .locals 11

    const/4 v0, 0x0

    if-eqz p3, :cond_3

    if-eqz p4, :cond_2

    if-eqz p5, :cond_1

    if-eqz p8, :cond_0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v10}, LMb/M;->i1(LMb/w;LMb/w;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lyc/w;LJb/B;LJb/p;Lfb/w;)LMb/M;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v1, 0x11

    invoke-static {v1}, LMb/M;->D0(I)V

    throw v0

    :cond_1
    const/16 v1, 0x10

    invoke-static {v1}, LMb/M;->D0(I)V

    throw v0

    :cond_2
    const/16 v1, 0xf

    invoke-static {v1}, LMb/M;->D0(I)V

    throw v0

    :cond_3
    const/16 v1, 0xe

    invoke-static {v1}, LMb/M;->D0(I)V

    throw v0
.end method

.method public i1(LMb/w;LMb/w;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lyc/w;LJb/B;LJb/p;Lfb/w;)LMb/M;
    .locals 0

    const/4 p9, 0x0

    if-eqz p3, :cond_3

    if-eqz p4, :cond_2

    if-eqz p5, :cond_1

    if-eqz p8, :cond_0

    invoke-super/range {p0 .. p8}, LMb/v;->Z0(LMb/w;LMb/w;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lyc/w;LJb/B;LJb/p;)V

    return-object p0

    :cond_0
    const/16 p0, 0x16

    invoke-static {p0}, LMb/M;->D0(I)V

    throw p9

    :cond_1
    const/16 p0, 0x15

    invoke-static {p0}, LMb/M;->D0(I)V

    throw p9

    :cond_2
    const/16 p0, 0x14

    invoke-static {p0}, LMb/M;->D0(I)V

    throw p9

    :cond_3
    const/16 p0, 0x13

    invoke-static {p0}, LMb/M;->D0(I)V

    throw p9
.end method

.method public y0()LJb/u;
    .locals 1

    sget-object v0, Lyc/Y;->b:Lyc/Y;

    invoke-virtual {p0, v0}, LMb/v;->a1(Lyc/Y;)LMb/u;

    move-result-object p0

    return-object p0
.end method
