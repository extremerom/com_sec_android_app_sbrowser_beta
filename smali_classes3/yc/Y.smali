.class public final Lyc/Y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lyc/Y;


# instance fields
.field public final a:Lyc/U;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lyc/U;->a:Lyc/S;

    new-instance v1, Lyc/Y;

    invoke-direct {v1, v0}, Lyc/Y;-><init>(Lyc/U;)V

    sput-object v1, Lyc/Y;->b:Lyc/Y;

    return-void
.end method

.method public constructor <init>(Lyc/U;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyc/Y;->a:Lyc/U;

    return-void
.end method

.method public static synthetic a(I)V
    .locals 13

    const/16 v0, 0x25

    const/16 v1, 0x22

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq p0, v3, :cond_0

    if-eq p0, v4, :cond_0

    if-eq p0, v2, :cond_0

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    const-string v5, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    :pswitch_0
    const-string v5, "@NotNull method %s.%s must not return null"

    :goto_0
    if-eq p0, v3, :cond_1

    if-eq p0, v4, :cond_1

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    packed-switch p0, :pswitch_data_4

    packed-switch p0, :pswitch_data_5

    packed-switch p0, :pswitch_data_6

    packed-switch p0, :pswitch_data_7

    const/4 v6, 0x3

    goto :goto_1

    :cond_1
    :pswitch_1
    move v6, v4

    :goto_1
    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "kotlin/reflect/jvm/internal/impl/types/TypeSubstitutor"

    const/4 v8, 0x0

    packed-switch p0, :pswitch_data_8

    :pswitch_2
    const-string v9, "substitution"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_3
    const-string v9, "projectionKind"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_4
    const-string v9, "typeParameterVariance"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_5
    const-string v9, "annotations"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_6
    const-string v9, "substituted"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_7
    const-string v9, "originalType"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_8
    const-string v9, "originalProjection"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_9
    const-string v9, "typeProjection"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_a
    const-string v9, "howThisTypeIsUsed"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_b
    const-string v9, "type"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_c
    const-string v9, "context"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_d
    const-string v9, "substitutionContext"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_e
    const-string v9, "second"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_f
    const-string v9, "first"

    aput-object v9, v6, v8

    goto :goto_2

    :pswitch_10
    aput-object v7, v6, v8

    :goto_2
    const-string v8, "safeSubstitute"

    const-string v9, "unsafeSubstitute"

    const-string v10, "projectedTypeForConflictedTypeWithUnsafeVariance"

    const-string v11, "filterOutUnsafeVariance"

    const-string v12, "combine"

    if-eq p0, v3, :cond_6

    if-eq p0, v4, :cond_5

    if-eq p0, v2, :cond_4

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_2

    packed-switch p0, :pswitch_data_9

    packed-switch p0, :pswitch_data_a

    packed-switch p0, :pswitch_data_b

    packed-switch p0, :pswitch_data_c

    aput-object v7, v6, v3

    goto :goto_3

    :pswitch_11
    aput-object v10, v6, v3

    goto :goto_3

    :pswitch_12
    aput-object v9, v6, v3

    goto :goto_3

    :pswitch_13
    aput-object v8, v6, v3

    goto :goto_3

    :cond_2
    :pswitch_14
    aput-object v12, v6, v3

    goto :goto_3

    :cond_3
    aput-object v11, v6, v3

    goto :goto_3

    :cond_4
    const-string v7, "getSubstitution"

    aput-object v7, v6, v3

    goto :goto_3

    :cond_5
    const-string v7, "replaceWithContravariantApproximatingSubstitution"

    aput-object v7, v6, v3

    goto :goto_3

    :cond_6
    const-string v7, "replaceWithNonApproximatingSubstitution"

    aput-object v7, v6, v3

    :goto_3
    packed-switch p0, :pswitch_data_d

    :pswitch_15
    const-string v7, "create"

    aput-object v7, v6, v4

    goto :goto_4

    :pswitch_16
    aput-object v12, v6, v4

    goto :goto_4

    :pswitch_17
    aput-object v11, v6, v4

    goto :goto_4

    :pswitch_18
    aput-object v10, v6, v4

    goto :goto_4

    :pswitch_19
    aput-object v9, v6, v4

    goto :goto_4

    :pswitch_1a
    const-string v7, "substituteWithoutApproximation"

    aput-object v7, v6, v4

    goto :goto_4

    :pswitch_1b
    const-string v7, "substitute"

    aput-object v7, v6, v4

    goto :goto_4

    :pswitch_1c
    aput-object v8, v6, v4

    goto :goto_4

    :pswitch_1d
    const-string v7, "<init>"

    aput-object v7, v6, v4

    goto :goto_4

    :pswitch_1e
    const-string v7, "createChainedSubstitutor"

    aput-object v7, v6, v4

    :goto_4
    :pswitch_1f
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    if-eq p0, v3, :cond_7

    if-eq p0, v4, :cond_7

    if-eq p0, v2, :cond_7

    if-eq p0, v1, :cond_7

    if-eq p0, v0, :cond_7

    packed-switch p0, :pswitch_data_e

    packed-switch p0, :pswitch_data_f

    packed-switch p0, :pswitch_data_10

    packed-switch p0, :pswitch_data_11

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    :pswitch_20
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x28
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xb
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x13
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1d
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x28
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_2
        :pswitch_10
        :pswitch_b
        :pswitch_a
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_5
        :pswitch_10
        :pswitch_4
        :pswitch_9
        :pswitch_10
        :pswitch_4
        :pswitch_3
        :pswitch_10
        :pswitch_10
        :pswitch_10
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0xb
        :pswitch_13
        :pswitch_13
        :pswitch_13
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x13
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x1d
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0x28
        :pswitch_14
        :pswitch_14
        :pswitch_14
    .end packed-switch

    :pswitch_data_d
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1f
        :pswitch_1e
        :pswitch_1e
        :pswitch_15
        :pswitch_15
        :pswitch_1d
        :pswitch_1f
        :pswitch_1c
        :pswitch_1c
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_17
        :pswitch_1f
        :pswitch_16
        :pswitch_16
        :pswitch_1f
        :pswitch_16
        :pswitch_16
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
    .end packed-switch

    :pswitch_data_e
    .packed-switch 0xb
        :pswitch_20
        :pswitch_20
        :pswitch_20
    .end packed-switch

    :pswitch_data_f
    .packed-switch 0x13
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
    .end packed-switch

    :pswitch_data_10
    .packed-switch 0x1d
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
    .end packed-switch

    :pswitch_data_11
    .packed-switch 0x28
        :pswitch_20
        :pswitch_20
        :pswitch_20
    .end packed-switch
.end method

.method public static b(Lyc/e0;Lyc/e0;)Lyc/e0;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    if-eqz p1, :cond_6

    sget-object v1, Lyc/e0;->INVARIANT:Lyc/e0;

    if-ne p0, v1, :cond_1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/16 p0, 0x28

    invoke-static {p0}, Lyc/Y;->a(I)V

    throw v0

    :cond_1
    if-ne p1, v1, :cond_3

    if-eqz p0, :cond_2

    return-object p0

    :cond_2
    const/16 p0, 0x29

    invoke-static {p0}, Lyc/Y;->a(I)V

    throw v0

    :cond_3
    if-ne p0, p1, :cond_5

    if-eqz p1, :cond_4

    return-object p1

    :cond_4
    const/16 p0, 0x2a

    invoke-static {p0}, Lyc/Y;->a(I)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Variance conflict: type parameter variance \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\' and projection kind \'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\' cannot be combined"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_6
    const/16 p0, 0x27

    invoke-static {p0}, Lyc/Y;->a(I)V

    throw v0

    :cond_7
    const/16 p0, 0x26

    invoke-static {p0}, Lyc/Y;->a(I)V

    throw v0
.end method

.method public static c(Lyc/e0;Lyc/e0;)Lyc/X;
    .locals 2

    sget-object v0, Lyc/e0;->IN_VARIANCE:Lyc/e0;

    if-ne p0, v0, :cond_0

    sget-object v1, Lyc/e0;->OUT_VARIANCE:Lyc/e0;

    if-ne p1, v1, :cond_0

    sget-object p0, Lyc/X;->OUT_IN_IN_POSITION:Lyc/X;

    return-object p0

    :cond_0
    sget-object v1, Lyc/e0;->OUT_VARIANCE:Lyc/e0;

    if-ne p0, v1, :cond_1

    if-ne p1, v0, :cond_1

    sget-object p0, Lyc/X;->IN_IN_OUT_POSITION:Lyc/X;

    return-object p0

    :cond_1
    sget-object p0, Lyc/X;->NO_CONFLICT:Lyc/X;

    return-object p0
.end method

.method public static d(Lyc/w;)Lyc/Y;
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lyc/w;->F0()Lyc/L;

    move-result-object v0

    invoke-virtual {p0}, Lyc/w;->D0()Ljava/util/List;

    move-result-object p0

    sget-object v1, Lyc/N;->b:Lyc/e;

    invoke-virtual {v1, v0, p0}, Lyc/e;->g(Lyc/L;Ljava/util/List;)Lyc/U;

    move-result-object p0

    new-instance v0, Lyc/Y;

    invoke-direct {v0, p0}, Lyc/Y;-><init>(Lyc/U;)V

    return-object v0

    :cond_0
    const/4 p0, 0x6

    invoke-static {p0}, Lyc/Y;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static e(Lyc/U;Lyc/U;)Lyc/Y;
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lyc/U;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lyc/U;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lyc/q;

    invoke-direct {v0, p0, p1}, Lyc/q;-><init>(Lyc/U;Lyc/U;)V

    move-object p0, v0

    :goto_0
    new-instance p1, Lyc/Y;

    invoke-direct {p1, p0}, Lyc/Y;-><init>(Lyc/U;)V

    return-object p1

    :cond_2
    const/4 p0, 0x4

    invoke-static {p0}, Lyc/Y;->a(I)V

    throw v0

    :cond_3
    const/4 p0, 0x3

    invoke-static {p0}, Lyc/Y;->a(I)V

    throw v0
.end method

.method public static h(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, LHc/l;->h(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[Exception while computing toString(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0
.end method


# virtual methods
.method public final f()Lyc/U;
    .locals 0

    iget-object p0, p0, Lyc/Y;->a:Lyc/U;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x8

    invoke-static {p0}, Lyc/Y;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final g(Lyc/w;Lyc/e0;)Lyc/w;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    iget-object v1, p0, Lyc/Y;->a:Lyc/U;

    invoke-virtual {v1}, Lyc/U;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    :cond_0
    :try_start_0
    new-instance v1, Lyc/F;

    invoke-direct {v1, p1, p2}, Lyc/F;-><init>(Lyc/w;Lyc/e0;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v1, v0, p1}, Lyc/Y;->j(Lyc/Q;LJb/W;I)Lyc/Q;

    move-result-object p0

    invoke-virtual {p0}, Lyc/Q;->b()Lyc/w;

    move-result-object p0
    :try_end_0
    .catch Lyc/W; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    const/16 p0, 0xc

    invoke-static {p0}, Lyc/Y;->a(I)V

    throw v0

    :catch_0
    move-exception p0

    sget-object p1, LAc/k;->UNABLE_TO_SUBSTITUTE_TYPE:LAc/k;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, LAc/l;->c(LAc/k;[Ljava/lang/String;)LAc/i;

    move-result-object p0

    return-object p0

    :cond_2
    const/16 p0, 0xa

    invoke-static {p0}, Lyc/Y;->a(I)V

    throw v0

    :cond_3
    const/16 p0, 0x9

    invoke-static {p0}, Lyc/Y;->a(I)V

    throw v0
.end method

.method public final i(Lyc/w;Lyc/e0;)Lyc/w;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    if-eqz p2, :cond_9

    new-instance v1, Lyc/F;

    invoke-virtual {p0}, Lyc/Y;->f()Lyc/U;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lyc/U;->f(Lyc/w;Lyc/e0;)Lyc/w;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Lyc/F;-><init>(Lyc/w;Lyc/e0;)V

    iget-object p1, p0, Lyc/Y;->a:Lyc/U;

    invoke-virtual {p1}, Lyc/U;->e()Z

    move-result p2

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0, v1, v0, v2}, Lyc/Y;->j(Lyc/Q;LJb/W;I)Lyc/Q;

    move-result-object v1
    :try_end_0
    .catch Lyc/W; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v0

    :goto_0
    invoke-virtual {p1}, Lyc/U;->a()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lyc/U;->b()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lyc/U;->b()Z

    move-result p0

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lyc/Q;->c()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Lyc/Q;->b()Lyc/w;

    move-result-object p1

    const-string p2, "getType(...)"

    invoke-static {p1, p2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, LDc/b;->a:LDc/b;

    invoke-static {p1, p2, v0}, Lyc/b0;->c(Lyc/w;Lsb/k;LHc/i;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lyc/Q;->a()Lyc/e0;

    move-result-object p2

    const-string v3, "getProjectionKind(...)"

    invoke-static {p2, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lyc/e0;->OUT_VARIANCE:Lyc/e0;

    if-ne p2, v3, :cond_5

    invoke-static {p1}, LG5/L;->c(Lyc/w;)LDc/a;

    move-result-object p0

    new-instance v1, Lyc/F;

    iget-object p0, p0, LDc/a;->b:Ljava/lang/Object;

    check-cast p0, Lyc/w;

    invoke-direct {v1, p0, p2}, Lyc/F;-><init>(Lyc/w;Lyc/e0;)V

    goto :goto_2

    :cond_5
    if-eqz p0, :cond_6

    invoke-static {p1}, LG5/L;->c(Lyc/w;)LDc/a;

    move-result-object p0

    iget-object p0, p0, LDc/a;->a:Ljava/lang/Object;

    check-cast p0, Lyc/w;

    new-instance v1, Lyc/F;

    invoke-direct {v1, p0, p2}, Lyc/F;-><init>(Lyc/w;Lyc/e0;)V

    goto :goto_2

    :cond_6
    new-instance p0, LDc/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lyc/Y;

    invoke-direct {p1, p0}, Lyc/Y;-><init>(Lyc/U;)V

    invoke-virtual {p0}, Lyc/U;->e()Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_2

    :cond_7
    :try_start_1
    invoke-virtual {p1, v1, v0, v2}, Lyc/Y;->j(Lyc/Q;LJb/W;I)Lyc/Q;

    move-result-object v1
    :try_end_1
    .catch Lyc/W; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    :goto_1
    move-object v1, v0

    :goto_2
    if-nez v1, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {v1}, Lyc/Q;->b()Lyc/w;

    move-result-object v0

    :goto_3
    return-object v0

    :cond_9
    const/16 p0, 0xf

    invoke-static {p0}, Lyc/Y;->a(I)V

    throw v0

    :cond_a
    const/16 p0, 0xe

    invoke-static {p0}, Lyc/Y;->a(I)V

    throw v0
.end method

.method public final j(Lyc/Q;LJb/W;I)Lyc/Q;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_2a

    iget-object v7, v0, Lyc/Y;->a:Lyc/U;

    const/16 v8, 0x64

    if-gt v2, v8, :cond_29

    invoke-virtual/range {p1 .. p1}, Lyc/Q;->c()Z

    move-result v8

    if-eqz v8, :cond_0

    return-object p1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lyc/Q;->b()Lyc/w;

    move-result-object v8

    instance-of v9, v8, Lyc/c0;

    if-eqz v9, :cond_2

    check-cast v8, Lyc/c0;

    invoke-interface {v8}, Lyc/c0;->z0()Lyc/d0;

    move-result-object v3

    invoke-interface {v8}, Lyc/c0;->f0()Lyc/w;

    move-result-object v4

    new-instance v6, Lyc/F;

    invoke-virtual/range {p1 .. p1}, Lyc/Q;->a()Lyc/e0;

    move-result-object v7

    invoke-direct {v6, v3, v7}, Lyc/F;-><init>(Lyc/w;Lyc/e0;)V

    add-int/2addr v2, v5

    invoke-virtual {v0, v6, v1, v2}, Lyc/Y;->j(Lyc/Q;LJb/W;I)Lyc/Q;

    move-result-object v1

    invoke-virtual {v1}, Lyc/Q;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lyc/Q;->a()Lyc/e0;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lyc/Y;->i(Lyc/w;Lyc/e0;)Lyc/w;

    move-result-object v0

    invoke-virtual {v1}, Lyc/Q;->b()Lyc/w;

    move-result-object v2

    invoke-virtual {v2}, Lyc/w;->I0()Lyc/d0;

    move-result-object v2

    invoke-static {v2, v0}, Lyc/c;->G(Lyc/d0;Lyc/w;)Lyc/d0;

    move-result-object v0

    new-instance v2, Lyc/F;

    invoke-virtual {v1}, Lyc/Q;->a()Lyc/e0;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lyc/F;-><init>(Lyc/w;Lyc/e0;)V

    return-object v2

    :cond_2
    const-string v9, "<this>"

    invoke-static {v8, v9}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lyc/w;->I0()Lyc/d0;

    invoke-virtual {v8}, Lyc/w;->I0()Lyc/d0;

    move-result-object v9

    instance-of v9, v9, LXb/j;

    if-eqz v9, :cond_3

    return-object p1

    :cond_3
    invoke-virtual {v7, v8}, Lyc/U;->d(Lyc/w;)Lyc/Q;

    move-result-object v9

    if-eqz v9, :cond_8

    invoke-virtual {v8}, Lyc/w;->u()LKb/h;

    move-result-object v10

    sget-object v11, LGb/p;->y:Lhc/c;

    invoke-interface {v10, v11}, LKb/h;->m0(Lhc/c;)Z

    move-result v10

    if-nez v10, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v9}, Lyc/Q;->b()Lyc/w;

    move-result-object v10

    invoke-virtual {v10}, Lyc/w;->F0()Lyc/L;

    move-result-object v10

    instance-of v11, v10, Lzc/i;

    if-nez v11, :cond_5

    goto :goto_0

    :cond_5
    check-cast v10, Lzc/i;

    iget-object v10, v10, Lzc/i;->a:Lyc/Q;

    invoke-virtual {v10}, Lyc/Q;->a()Lyc/e0;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lyc/Q;->a()Lyc/e0;

    move-result-object v12

    invoke-static {v12, v11}, Lyc/Y;->c(Lyc/e0;Lyc/e0;)Lyc/X;

    move-result-object v12

    sget-object v13, Lyc/X;->OUT_IN_IN_POSITION:Lyc/X;

    if-ne v12, v13, :cond_6

    new-instance v9, Lyc/F;

    invoke-virtual {v10}, Lyc/Q;->b()Lyc/w;

    move-result-object v10

    invoke-direct {v9, v10}, Lyc/F;-><init>(Lyc/w;)V

    goto :goto_0

    :cond_6
    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    invoke-interface/range {p2 .. p2}, LJb/W;->A()Lyc/e0;

    move-result-object v12

    invoke-static {v12, v11}, Lyc/Y;->c(Lyc/e0;Lyc/e0;)Lyc/X;

    move-result-object v11

    if-ne v11, v13, :cond_9

    new-instance v9, Lyc/F;

    invoke-virtual {v10}, Lyc/Q;->b()Lyc/w;

    move-result-object v10

    invoke-direct {v9, v10}, Lyc/F;-><init>(Lyc/w;)V

    goto :goto_0

    :cond_8
    move-object v9, v6

    :cond_9
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lyc/Q;->a()Lyc/e0;

    move-result-object v10

    if-nez v9, :cond_d

    invoke-static {v8}, Lyc/c;->l(Lyc/w;)Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-virtual {v8}, Lyc/w;->I0()Lyc/d0;

    move-result-object v11

    instance-of v12, v11, Lyc/l;

    if-eqz v12, :cond_a

    check-cast v11, Lyc/l;

    goto :goto_1

    :cond_a
    move-object v11, v6

    :goto_1
    if-eqz v11, :cond_b

    invoke-interface {v11}, Lyc/l;->w0()Z

    move-result v11

    goto :goto_2

    :cond_b
    move v11, v3

    :goto_2
    if-nez v11, :cond_d

    invoke-virtual {v8}, Lyc/w;->I0()Lyc/d0;

    move-result-object v3

    check-cast v3, Lyc/r;

    new-instance v4, Lyc/F;

    iget-object v6, v3, Lyc/r;->b:Lyc/A;

    invoke-direct {v4, v6, v10}, Lyc/F;-><init>(Lyc/w;Lyc/e0;)V

    add-int/2addr v2, v5

    invoke-virtual {v0, v4, v1, v2}, Lyc/Y;->j(Lyc/Q;LJb/W;I)Lyc/Q;

    move-result-object v4

    new-instance v5, Lyc/F;

    iget-object v3, v3, Lyc/r;->c:Lyc/A;

    invoke-direct {v5, v3, v10}, Lyc/F;-><init>(Lyc/w;Lyc/e0;)V

    invoke-virtual {v0, v5, v1, v2}, Lyc/Y;->j(Lyc/Q;LJb/W;I)Lyc/Q;

    move-result-object v0

    invoke-virtual {v4}, Lyc/Q;->a()Lyc/e0;

    move-result-object v1

    invoke-virtual {v4}, Lyc/Q;->b()Lyc/w;

    move-result-object v2

    if-ne v2, v6, :cond_c

    invoke-virtual {v0}, Lyc/Q;->b()Lyc/w;

    move-result-object v2

    if-ne v2, v3, :cond_c

    return-object p1

    :cond_c
    invoke-virtual {v4}, Lyc/Q;->b()Lyc/w;

    move-result-object v2

    invoke-static {v2}, Lyc/c;->b(Lyc/w;)Lyc/A;

    move-result-object v2

    invoke-virtual {v0}, Lyc/Q;->b()Lyc/w;

    move-result-object v0

    invoke-static {v0}, Lyc/c;->b(Lyc/w;)Lyc/A;

    move-result-object v0

    invoke-static {v2, v0}, Lyc/c;->f(Lyc/A;Lyc/A;)Lyc/d0;

    move-result-object v0

    new-instance v2, Lyc/F;

    invoke-direct {v2, v0, v1}, Lyc/F;-><init>(Lyc/w;Lyc/e0;)V

    return-object v2

    :cond_d
    invoke-static {v8}, LGb/i;->F(Lyc/w;)Z

    move-result v1

    if-nez v1, :cond_28

    invoke-static {v8}, Lyc/c;->k(Lyc/w;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto/16 :goto_11

    :cond_e
    if-eqz v9, :cond_1a

    invoke-virtual {v9}, Lyc/Q;->a()Lyc/e0;

    move-result-object v0

    invoke-static {v10, v0}, Lyc/Y;->c(Lyc/e0;Lyc/e0;)Lyc/X;

    move-result-object v0

    invoke-virtual {v8}, Lyc/w;->F0()Lyc/L;

    move-result-object v1

    instance-of v1, v1, Llc/b;

    if-nez v1, :cond_11

    sget-object v1, Lyc/V;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v5, :cond_10

    if-eq v1, v4, :cond_f

    goto :goto_3

    :cond_f
    new-instance v0, Lyc/F;

    sget-object v1, Lyc/e0;->OUT_VARIANCE:Lyc/e0;

    invoke-virtual {v8}, Lyc/w;->F0()Lyc/L;

    move-result-object v2

    invoke-interface {v2}, Lyc/L;->j()LGb/i;

    move-result-object v2

    invoke-virtual {v2}, LGb/i;->p()Lyc/A;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lyc/F;-><init>(Lyc/w;Lyc/e0;)V

    return-object v0

    :cond_10
    new-instance v0, Lyc/W;

    const-string v1, "Out-projection in in-position"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    :goto_3
    invoke-virtual {v8}, Lyc/w;->I0()Lyc/d0;

    move-result-object v1

    instance-of v2, v1, Lyc/l;

    if-eqz v2, :cond_12

    check-cast v1, Lyc/l;

    goto :goto_4

    :cond_12
    move-object v1, v6

    :goto_4
    if-eqz v1, :cond_13

    invoke-interface {v1}, Lyc/l;->w0()Z

    move-result v2

    if-eqz v2, :cond_13

    goto :goto_5

    :cond_13
    move-object v1, v6

    :goto_5
    invoke-virtual {v9}, Lyc/Q;->c()Z

    move-result v2

    if-eqz v2, :cond_14

    return-object v9

    :cond_14
    if-eqz v1, :cond_15

    invoke-virtual {v9}, Lyc/Q;->b()Lyc/w;

    move-result-object v2

    invoke-interface {v1, v2}, Lyc/l;->y(Lyc/w;)Lyc/d0;

    move-result-object v1

    goto :goto_6

    :cond_15
    invoke-virtual {v9}, Lyc/Q;->b()Lyc/w;

    move-result-object v1

    invoke-virtual {v8}, Lyc/w;->G0()Z

    move-result v2

    invoke-static {v1, v2}, Lyc/b0;->h(Lyc/w;Z)Lyc/w;

    move-result-object v1

    :goto_6
    invoke-virtual {v8}, Lyc/w;->u()LKb/h;

    move-result-object v2

    invoke-interface {v2}, LKb/h;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_18

    invoke-virtual {v8}, Lyc/w;->u()LKb/h;

    move-result-object v2

    invoke-virtual {v7, v2}, Lyc/U;->c(LKb/h;)LKb/h;

    move-result-object v2

    if-eqz v2, :cond_17

    sget-object v6, LGb/p;->y:Lhc/c;

    invoke-interface {v2, v6}, LKb/h;->m0(Lhc/c;)Z

    move-result v6

    if-nez v6, :cond_16

    goto :goto_7

    :cond_16
    new-instance v6, LKb/l;

    new-instance v7, Lyc/f;

    invoke-direct {v7, v4}, Lyc/f;-><init>(I)V

    invoke-direct {v6, v2, v7}, LKb/l;-><init>(LKb/h;Lyc/f;)V

    move-object v2, v6

    :goto_7
    new-instance v6, LKb/i;

    invoke-virtual {v1}, Lyc/w;->u()LKb/h;

    move-result-object v7

    new-array v4, v4, [LKb/h;

    aput-object v7, v4, v3

    aput-object v2, v4, v5

    invoke-direct {v6, v4}, LKb/i;-><init>([LKb/h;)V

    invoke-static {v1, v6}, LG5/B;->k(Lyc/w;LKb/h;)Lyc/w;

    move-result-object v1

    goto :goto_8

    :cond_17
    const/16 v0, 0x21

    invoke-static {v0}, Lyc/Y;->a(I)V

    throw v6

    :cond_18
    :goto_8
    sget-object v2, Lyc/X;->NO_CONFLICT:Lyc/X;

    if-ne v0, v2, :cond_19

    invoke-virtual {v9}, Lyc/Q;->a()Lyc/e0;

    move-result-object v0

    invoke-static {v10, v0}, Lyc/Y;->b(Lyc/e0;Lyc/e0;)Lyc/e0;

    move-result-object v10

    :cond_19
    new-instance v0, Lyc/F;

    invoke-direct {v0, v1, v10}, Lyc/F;-><init>(Lyc/w;Lyc/e0;)V

    return-object v0

    :cond_1a
    invoke-virtual/range {p1 .. p1}, Lyc/Q;->b()Lyc/w;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lyc/Q;->a()Lyc/e0;

    move-result-object v8

    invoke-virtual {v1}, Lyc/w;->F0()Lyc/L;

    move-result-object v9

    invoke-interface {v9}, Lyc/L;->c()LJb/i;

    move-result-object v9

    instance-of v9, v9, LJb/W;

    if-eqz v9, :cond_1b

    move-object/from16 v1, p1

    goto/16 :goto_10

    :cond_1b
    invoke-virtual {v1}, Lyc/w;->I0()Lyc/d0;

    move-result-object v9

    instance-of v10, v9, Lyc/a;

    if-eqz v10, :cond_1c

    check-cast v9, Lyc/a;

    goto :goto_9

    :cond_1c
    move-object v9, v6

    :goto_9
    if-eqz v9, :cond_1d

    iget-object v9, v9, Lyc/a;->c:Lyc/A;

    goto :goto_a

    :cond_1d
    move-object v9, v6

    :goto_a
    if-eqz v9, :cond_20

    instance-of v6, v7, Lyc/u;

    if-eqz v6, :cond_1f

    invoke-virtual {v7}, Lyc/U;->b()Z

    move-result v6

    if-nez v6, :cond_1e

    goto :goto_b

    :cond_1e
    new-instance v6, Lyc/Y;

    new-instance v10, Lyc/u;

    move-object v11, v7

    check-cast v11, Lyc/u;

    iget-object v12, v11, Lyc/u;->c:[Lyc/Q;

    iget-object v11, v11, Lyc/u;->b:[LJb/W;

    invoke-direct {v10, v11, v12, v3}, Lyc/u;-><init>([LJb/W;[Lyc/Q;Z)V

    invoke-direct {v6, v10}, Lyc/Y;-><init>(Lyc/U;)V

    goto :goto_c

    :cond_1f
    :goto_b
    move-object v6, v0

    :goto_c
    sget-object v10, Lyc/e0;->INVARIANT:Lyc/e0;

    invoke-virtual {v6, v9, v10}, Lyc/Y;->i(Lyc/w;Lyc/e0;)Lyc/w;

    move-result-object v6

    :cond_20
    invoke-virtual {v1}, Lyc/w;->F0()Lyc/L;

    move-result-object v9

    invoke-interface {v9}, Lyc/L;->a()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v1}, Lyc/w;->D0()Ljava/util/List;

    move-result-object v10

    new-instance v11, Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    move v12, v3

    :goto_d
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v13

    if-ge v3, v13, :cond_25

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, LJb/W;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lyc/Q;

    add-int/lit8 v15, v2, 0x1

    invoke-virtual {v0, v14, v13, v15}, Lyc/Y;->j(Lyc/Q;LJb/W;I)Lyc/Q;

    move-result-object v15

    sget-object v16, Lyc/V;->a:[I

    invoke-interface {v13}, LJb/W;->A()Lyc/e0;

    move-result-object v4

    invoke-virtual {v15}, Lyc/Q;->a()Lyc/e0;

    move-result-object v5

    invoke-static {v4, v5}, Lyc/Y;->c(Lyc/e0;Lyc/e0;)Lyc/X;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v16, v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_22

    const/4 v5, 0x2

    if-eq v4, v5, :cond_22

    const/4 v5, 0x3

    if-eq v4, v5, :cond_21

    goto :goto_e

    :cond_21
    invoke-interface {v13}, LJb/W;->A()Lyc/e0;

    move-result-object v4

    sget-object v5, Lyc/e0;->INVARIANT:Lyc/e0;

    if-eq v4, v5, :cond_23

    invoke-virtual {v15}, Lyc/Q;->c()Z

    move-result v4

    if-nez v4, :cond_23

    new-instance v4, Lyc/F;

    invoke-virtual {v15}, Lyc/Q;->b()Lyc/w;

    move-result-object v13

    invoke-direct {v4, v13, v5}, Lyc/F;-><init>(Lyc/w;Lyc/e0;)V

    move-object v15, v4

    goto :goto_e

    :cond_22
    invoke-static {v13}, Lyc/b0;->j(LJb/W;)Lyc/F;

    move-result-object v15

    :cond_23
    :goto_e
    if-eq v15, v14, :cond_24

    const/4 v12, 0x1

    :cond_24
    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    add-int/2addr v3, v4

    move v5, v4

    const/4 v4, 0x2

    goto :goto_d

    :cond_25
    if-nez v12, :cond_26

    goto :goto_f

    :cond_26
    move-object v10, v11

    :goto_f
    invoke-virtual {v1}, Lyc/w;->u()LKb/h;

    move-result-object v0

    invoke-virtual {v7, v0}, Lyc/U;->c(LKb/h;)LKb/h;

    move-result-object v0

    const-string v2, "newArguments"

    invoke-static {v10, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "newAnnotations"

    invoke-static {v0, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-static {v1, v10, v0, v2}, Lyc/c;->q(Lyc/w;Ljava/util/List;LKb/h;I)Lyc/w;

    move-result-object v0

    instance-of v1, v0, Lyc/A;

    if-eqz v1, :cond_27

    instance-of v1, v6, Lyc/A;

    if-eqz v1, :cond_27

    check-cast v0, Lyc/A;

    check-cast v6, Lyc/A;

    invoke-static {v0, v6}, Lyc/c;->F(Lyc/A;Lyc/A;)Lyc/A;

    move-result-object v0

    :cond_27
    new-instance v1, Lyc/F;

    invoke-direct {v1, v0, v8}, Lyc/F;-><init>(Lyc/w;Lyc/e0;)V

    :goto_10
    return-object v1

    :cond_28
    :goto_11
    return-object p1

    :cond_29
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Recursion too deep. Most likely infinite loop while substituting "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lyc/Y;->h(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; substitution: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lyc/Y;->h(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    const/16 v0, 0x12

    invoke-static {v0}, Lyc/Y;->a(I)V

    throw v6
.end method
