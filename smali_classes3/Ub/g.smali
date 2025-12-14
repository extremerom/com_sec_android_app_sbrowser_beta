.class public final LUb/g;
.super LMb/M;
.source "SourceFile"

# interfaces
.implements LUb/a;


# static fields
.field public static final G:LUb/e;

.field public static final H:LUb/e;


# instance fields
.field public E:LUb/f;

.field public final F:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LUb/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LUb/g;->G:LUb/e;

    new-instance v0, LUb/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LUb/g;->H:LUb/e;

    return-void
.end method

.method public constructor <init>(LJb/l;LMb/M;LKb/h;Lhc/f;LJb/c;LJb/S;Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p3, :cond_2

    if-eqz p4, :cond_1

    if-eqz p5, :cond_0

    invoke-direct/range {p0 .. p6}, LMb/M;-><init>(LJb/l;LMb/M;LKb/h;Lhc/f;LJb/c;LJb/S;)V

    iput-object v0, p0, LUb/g;->E:LUb/f;

    iput-boolean p7, p0, LUb/g;->F:Z

    return-void

    :cond_0
    const/4 p0, 0x3

    invoke-static {p0}, LUb/g;->D0(I)V

    throw v0

    :cond_1
    const/4 p0, 0x2

    invoke-static {p0}, LUb/g;->D0(I)V

    throw v0

    :cond_2
    const/4 p0, 0x1

    invoke-static {p0}, LUb/g;->D0(I)V

    throw v0

    :cond_3
    const/4 p0, 0x0

    invoke-static {p0}, LUb/g;->D0(I)V

    throw v0
.end method

.method public static synthetic D0(I)V
    .locals 11

    const/16 v0, 0x15

    const/16 v1, 0x12

    const/16 v2, 0xd

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

    const-string v6, "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor"

    const/4 v7, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v8, "containingDeclaration"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_1
    const-string v8, "enhancedReturnType"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_2
    const-string v8, "enhancedValueParameterTypes"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_3
    const-string v8, "newOwner"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_4
    aput-object v6, v5, v7

    goto :goto_2

    :pswitch_5
    const-string v8, "visibility"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_6
    const-string v8, "unsubstitutedValueParameters"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_7
    const-string v8, "typeParameters"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_8
    const-string v8, "contextReceiverParameters"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_9
    const-string v8, "source"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_a
    const-string v8, "kind"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_b
    const-string v8, "name"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_c
    const-string v8, "annotations"

    aput-object v8, v5, v7

    :goto_2
    const-string v7, "initialize"

    const-string v8, "createSubstitutedCopy"

    const-string v9, "enhance"

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

    const-string v6, "<init>"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_d
    aput-object v9, v5, v4

    goto :goto_4

    :pswitch_e
    aput-object v8, v5, v4

    goto :goto_4

    :pswitch_f
    aput-object v7, v5, v4

    goto :goto_4

    :pswitch_10
    const-string v6, "createJavaMethod"

    aput-object v6, v5, v4

    :goto_4
    :pswitch_11
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

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_a
        :pswitch_c
        :pswitch_9
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_11
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_11
        :pswitch_d
        :pswitch_d
        :pswitch_11
    .end packed-switch
.end method

.method public static j1(LJb/l;LVb/c;Lhc/f;LOb/f;Z)LUb/g;
    .locals 9

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-eqz p2, :cond_0

    new-instance v0, LUb/g;

    const/4 v3, 0x0

    sget-object v6, LJb/c;->DECLARATION:LJb/c;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v1 .. v8}, LUb/g;-><init>(LJb/l;LMb/M;LKb/h;Lhc/f;LJb/c;LJb/S;Z)V

    return-object v0

    :cond_0
    const/4 p0, 0x7

    invoke-static {p0}, LUb/g;->D0(I)V

    throw v0

    :cond_1
    const/4 p0, 0x5

    invoke-static {p0}, LUb/g;->D0(I)V

    throw v0
.end method


# virtual methods
.method public final W0(LJb/c;LJb/l;LJb/v;LJb/S;LKb/h;Lhc/f;)LMb/v;
    .locals 9

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    if-eqz p1, :cond_2

    if-eqz p5, :cond_1

    new-instance v0, LUb/g;

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
    iget-boolean v8, p0, LUb/g;->F:Z

    move-object v1, v0

    move-object v2, p2

    move-object v4, p5

    move-object v6, p1

    move-object v7, p4

    invoke-direct/range {v1 .. v8}, LUb/g;-><init>(LJb/l;LMb/M;LKb/h;Lhc/f;LJb/c;LJb/S;Z)V

    iget-object p0, p0, LUb/g;->E:LUb/f;

    iget-boolean p1, p0, LUb/f;->isStable:Z

    iget-boolean p0, p0, LUb/f;->isSynthesized:Z

    invoke-virtual {v0, p1, p0}, LUb/g;->k1(ZZ)V

    return-object v0

    :cond_1
    const/16 p0, 0x10

    invoke-static {p0}, LUb/g;->D0(I)V

    throw v0

    :cond_2
    const/16 p0, 0xf

    invoke-static {p0}, LUb/g;->D0(I)V

    throw v0

    :cond_3
    const/16 p0, 0xe

    invoke-static {p0}, LUb/g;->D0(I)V

    throw v0
.end method

.method public final e0()Z
    .locals 0

    iget-object p0, p0, LUb/g;->E:LUb/f;

    iget-boolean p0, p0, LUb/f;->isSynthesized:Z

    return p0
.end method

.method public final h0(Lyc/w;Ljava/util/ArrayList;Lyc/w;Ldb/j;)LUb/a;
    .locals 2

    invoke-virtual {p0}, LMb/v;->H()Ljava/util/List;

    move-result-object v0

    invoke-static {p2, v0, p0}, LG5/H2;->b(Ljava/util/List;Ljava/util/Collection;LJb/v;)Ljava/util/ArrayList;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    sget-object v1, LKb/g;->a:LKb/f;

    invoke-static {p0, p1, v1}, Lkc/p;->k(LJb/b;Lyc/w;LKb/h;)LMb/w;

    move-result-object p1

    :goto_0
    sget-object v1, Lyc/Y;->b:Lyc/Y;

    invoke-virtual {p0, v1}, LMb/v;->a1(Lyc/Y;)LMb/u;

    move-result-object p0

    iput-object p2, p0, LMb/u;->g:Ljava/util/List;

    iput-object p3, p0, LMb/u;->k:Lyc/w;

    iput-object p1, p0, LMb/u;->i:LMb/w;

    const/4 p1, 0x1

    iput-boolean p1, p0, LMb/u;->p:Z

    iput-boolean p1, p0, LMb/u;->o:Z

    iget-object p1, p0, LMb/u;->x:LMb/v;

    invoke-virtual {p1, p0}, LMb/v;->X0(LMb/u;)LMb/v;

    move-result-object p0

    check-cast p0, LUb/g;

    if-eqz p4, :cond_1

    iget-object p1, p4, Ldb/j;->a:Ljava/lang/Object;

    check-cast p1, LJb/a;

    iget-object p2, p4, Ldb/j;->b:Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, LMb/v;->b1(LJb/a;Ljava/lang/Object;)V

    :cond_1
    if-eqz p0, :cond_2

    return-object p0

    :cond_2
    const/16 p0, 0x15

    invoke-static {p0}, LUb/g;->D0(I)V

    throw v0
.end method

.method public final i1(LMb/w;LMb/w;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lyc/w;LJb/B;LJb/p;Lfb/w;)LMb/M;
    .locals 1

    const/4 v0, 0x0

    if-eqz p3, :cond_a

    if-eqz p4, :cond_9

    if-eqz p5, :cond_8

    if-eqz p8, :cond_7

    invoke-super/range {p0 .. p9}, LMb/M;->i1(LMb/w;LMb/w;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lyc/w;LJb/B;LJb/p;Lfb/w;)LMb/M;

    sget-object p1, LEc/s;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LEc/i;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, p2, LEc/i;->a:Lhc/f;

    if-eqz p3, :cond_0

    invoke-virtual {p0}, LMb/n;->getName()Lhc/f;

    move-result-object p4

    invoke-static {p4, p3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p3, p2, LEc/i;->b:LKc/j;

    if-eqz p3, :cond_1

    invoke-virtual {p0}, LMb/n;->getName()Lhc/f;

    move-result-object p4

    invoke-virtual {p4}, Lhc/f;->c()Ljava/lang/String;

    move-result-object p4

    const-string p5, "asString(...)"

    invoke-static {p4, p5}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, p4}, LKc/j;->b(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    iget-object p3, p2, LEc/i;->c:Ljava/util/Collection;

    if-eqz p3, :cond_2

    invoke-virtual {p0}, LMb/n;->getName()Lhc/f;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p2, LEc/i;->e:[LEc/e;

    array-length p3, p1

    const/4 p4, 0x0

    move p5, p4

    :goto_1
    if-ge p5, p3, :cond_4

    aget-object p6, p1, p5

    invoke-interface {p6, p0}, LEc/e;->b(LUb/g;)Ljava/lang/String;

    move-result-object p6

    if-eqz p6, :cond_3

    new-instance p1, LEc/f;

    invoke-direct {p1, p4}, LEc/g;-><init>(Z)V

    goto :goto_2

    :cond_3
    add-int/lit8 p5, p5, 0x1

    goto :goto_1

    :cond_4
    iget-object p1, p2, LEc/i;->d:Lsb/k;

    invoke-interface {p1, p0}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_5

    new-instance p1, LEc/f;

    invoke-direct {p1, p4}, LEc/g;-><init>(Z)V

    goto :goto_2

    :cond_5
    sget-object p1, LEc/f;->c:LEc/f;

    goto :goto_2

    :cond_6
    sget-object p1, LEc/f;->b:LEc/f;

    :goto_2
    iget-boolean p1, p1, LEc/g;->a:Z

    iput-boolean p1, p0, LMb/v;->n:Z

    return-object p0

    :cond_7
    const/16 p0, 0xc

    invoke-static {p0}, LUb/g;->D0(I)V

    throw v0

    :cond_8
    const/16 p0, 0xb

    invoke-static {p0}, LUb/g;->D0(I)V

    throw v0

    :cond_9
    const/16 p0, 0xa

    invoke-static {p0}, LUb/g;->D0(I)V

    throw v0

    :cond_a
    const/16 p0, 0x9

    invoke-static {p0}, LUb/g;->D0(I)V

    throw v0
.end method

.method public final k1(ZZ)V
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    sget-object p1, LUb/f;->STABLE_SYNTHESIZED:LUb/f;

    goto :goto_0

    :cond_0
    sget-object p1, LUb/f;->STABLE_DECLARED:LUb/f;

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    sget-object p1, LUb/f;->NON_STABLE_SYNTHESIZED:LUb/f;

    goto :goto_0

    :cond_2
    sget-object p1, LUb/f;->NON_STABLE_DECLARED:LUb/f;

    :goto_0
    if-eqz p1, :cond_3

    iput-object p1, p0, LUb/g;->E:LUb/f;

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "@NotNull method kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor$ParameterNamesStatus.get must not return null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
