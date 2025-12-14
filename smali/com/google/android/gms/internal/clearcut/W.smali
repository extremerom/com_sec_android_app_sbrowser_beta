.class public final Lcom/google/android/gms/internal/clearcut/W;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:Ljava/lang/Object;

.field public final a:Lcom/google/android/gms/internal/clearcut/X;

.field public final b:[Ljava/lang/Object;

.field public final c:Ljava/lang/Class;

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:[I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:Ljava/lang/reflect/Field;

.field public y:Ljava/lang/Object;

.field public z:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/W;->p:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/W;->q:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/W;->r:I

    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/W;->c:Ljava/lang/Class;

    new-instance p1, Lcom/google/android/gms/internal/clearcut/X;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/clearcut/X;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/W;->a:Lcom/google/android/gms/internal/clearcut/X;

    iput-object p3, p0, Lcom/google/android/gms/internal/clearcut/W;->b:[Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/X;->a()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/clearcut/W;->d:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/X;->a()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/clearcut/W;->e:I

    const/4 p3, 0x0

    if-nez p2, :cond_0

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/W;->f:I

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/W;->g:I

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/W;->h:I

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/W;->i:I

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/W;->k:I

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/W;->j:I

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/W;->l:I

    iput-object p3, p0, Lcom/google/android/gms/internal/clearcut/W;->m:[I

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/X;->a()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/clearcut/W;->f:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/X;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/X;->a()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/clearcut/W;->g:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/X;->a()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/clearcut/W;->h:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/X;->a()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/clearcut/W;->k:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/X;->a()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/clearcut/W;->j:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/X;->a()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/clearcut/W;->i:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/X;->a()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/clearcut/W;->l:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/X;->a()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-array p3, p1, [I

    :goto_0
    iput-object p3, p0, Lcom/google/android/gms/internal/clearcut/W;->m:[I

    shl-int/lit8 p1, p2, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/clearcut/W;->n:I

    return-void
.end method

.method public static b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Field "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-static {v3, p0, v0}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final a()Z
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x1

    iget-object v2, v0, Lcom/google/android/gms/internal/clearcut/W;->a:Lcom/google/android/gms/internal/clearcut/X;

    iget v3, v2, Lcom/google/android/gms/internal/clearcut/X;->a:I

    iget-object v4, v2, Lcom/google/android/gms/internal/clearcut/X;->b:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_10

    invoke-virtual {v2}, Lcom/google/android/gms/internal/clearcut/X;->a()I

    move-result v3

    iput v3, v0, Lcom/google/android/gms/internal/clearcut/W;->s:I

    invoke-virtual {v2}, Lcom/google/android/gms/internal/clearcut/X;->a()I

    move-result v3

    iput v3, v0, Lcom/google/android/gms/internal/clearcut/W;->t:I

    and-int/lit16 v3, v3, 0xff

    iput v3, v0, Lcom/google/android/gms/internal/clearcut/W;->u:I

    iget v4, v0, Lcom/google/android/gms/internal/clearcut/W;->s:I

    iget v5, v0, Lcom/google/android/gms/internal/clearcut/W;->p:I

    if-ge v4, v5, :cond_0

    iput v4, v0, Lcom/google/android/gms/internal/clearcut/W;->p:I

    :cond_0
    iget v5, v0, Lcom/google/android/gms/internal/clearcut/W;->q:I

    if-le v4, v5, :cond_1

    iput v4, v0, Lcom/google/android/gms/internal/clearcut/W;->q:I

    :cond_1
    sget-object v4, Lcom/google/android/gms/internal/clearcut/q;->zziw:Lcom/google/android/gms/internal/clearcut/q;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/clearcut/q;->a()I

    move-result v5

    if-ne v3, v5, :cond_2

    goto :goto_0

    :cond_2
    iget v3, v0, Lcom/google/android/gms/internal/clearcut/W;->u:I

    sget-object v5, Lcom/google/android/gms/internal/clearcut/q;->zzhq:Lcom/google/android/gms/internal/clearcut/q;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/clearcut/q;->a()I

    move-result v5

    if-lt v3, v5, :cond_3

    sget-object v3, Lcom/google/android/gms/internal/clearcut/q;->zziv:Lcom/google/android/gms/internal/clearcut/q;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/clearcut/q;->a()I

    :cond_3
    :goto_0
    iget v3, v0, Lcom/google/android/gms/internal/clearcut/W;->r:I

    add-int/2addr v3, v1

    iput v3, v0, Lcom/google/android/gms/internal/clearcut/W;->r:I

    iget v5, v0, Lcom/google/android/gms/internal/clearcut/W;->p:I

    iget v6, v0, Lcom/google/android/gms/internal/clearcut/W;->s:I

    sget-object v7, Lcom/google/android/gms/internal/clearcut/Z;->a:Ljava/lang/Class;

    const/16 v7, 0x28

    if-ge v6, v7, :cond_4

    goto :goto_1

    :cond_4
    int-to-long v7, v6

    int-to-long v9, v5

    sub-long/2addr v7, v9

    int-to-long v9, v3

    const-wide/16 v11, 0x2

    mul-long/2addr v11, v9

    const-wide/16 v13, 0x3

    add-long/2addr v11, v13

    add-long/2addr v9, v13

    const-wide/16 v15, 0xa

    add-long/2addr v7, v15

    mul-long/2addr v9, v13

    add-long/2addr v9, v11

    cmp-long v3, v7, v9

    :goto_1
    iget v3, v0, Lcom/google/android/gms/internal/clearcut/W;->t:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_5

    iget v3, v0, Lcom/google/android/gms/internal/clearcut/W;->o:I

    add-int/lit8 v5, v3, 0x1

    iput v5, v0, Lcom/google/android/gms/internal/clearcut/W;->o:I

    iget-object v5, v0, Lcom/google/android/gms/internal/clearcut/W;->m:[I

    aput v6, v5, v3

    :cond_5
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/google/android/gms/internal/clearcut/W;->y:Ljava/lang/Object;

    iput-object v3, v0, Lcom/google/android/gms/internal/clearcut/W;->z:Ljava/lang/Object;

    iput-object v3, v0, Lcom/google/android/gms/internal/clearcut/W;->A:Ljava/lang/Object;

    iget v3, v0, Lcom/google/android/gms/internal/clearcut/W;->u:I

    invoke-virtual {v4}, Lcom/google/android/gms/internal/clearcut/q;->a()I

    move-result v5

    iget v6, v0, Lcom/google/android/gms/internal/clearcut/W;->d:I

    if-le v3, v5, :cond_8

    invoke-virtual {v2}, Lcom/google/android/gms/internal/clearcut/X;->a()I

    move-result v2

    iput v2, v0, Lcom/google/android/gms/internal/clearcut/W;->v:I

    iget v2, v0, Lcom/google/android/gms/internal/clearcut/W;->u:I

    sget-object v3, Lcom/google/android/gms/internal/clearcut/q;->zzhh:Lcom/google/android/gms/internal/clearcut/q;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/clearcut/q;->a()I

    move-result v3

    add-int/lit8 v3, v3, 0x33

    if-eq v2, v3, :cond_7

    iget v2, v0, Lcom/google/android/gms/internal/clearcut/W;->u:I

    sget-object v3, Lcom/google/android/gms/internal/clearcut/q;->zzhp:Lcom/google/android/gms/internal/clearcut/q;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/clearcut/q;->a()I

    move-result v3

    add-int/lit8 v3, v3, 0x33

    if-ne v2, v3, :cond_6

    goto :goto_3

    :cond_6
    iget v2, v0, Lcom/google/android/gms/internal/clearcut/W;->u:I

    sget-object v3, Lcom/google/android/gms/internal/clearcut/q;->zzhk:Lcom/google/android/gms/internal/clearcut/q;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/clearcut/q;->a()I

    move-result v3

    add-int/lit8 v3, v3, 0x33

    if-ne v2, v3, :cond_f

    and-int/lit8 v2, v6, 0x1

    if-ne v2, v1, :cond_f

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/clearcut/W;->c()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/clearcut/W;->z:Ljava/lang/Object;

    goto/16 :goto_7

    :cond_7
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/clearcut/W;->c()Ljava/lang/Object;

    move-result-object v2

    :goto_4
    iput-object v2, v0, Lcom/google/android/gms/internal/clearcut/W;->y:Ljava/lang/Object;

    goto/16 :goto_7

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/clearcut/W;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/internal/clearcut/W;->c:Ljava/lang/Class;

    invoke-static {v5, v3}, Lcom/google/android/gms/internal/clearcut/W;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/gms/internal/clearcut/W;->x:Ljava/lang/reflect/Field;

    and-int/lit8 v3, v6, 0x1

    if-ne v3, v1, :cond_9

    iget v3, v0, Lcom/google/android/gms/internal/clearcut/W;->u:I

    sget-object v5, Lcom/google/android/gms/internal/clearcut/q;->zzhp:Lcom/google/android/gms/internal/clearcut/q;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/clearcut/q;->a()I

    move-result v5

    if-gt v3, v5, :cond_9

    invoke-virtual {v2}, Lcom/google/android/gms/internal/clearcut/X;->a()I

    move-result v2

    iput v2, v0, Lcom/google/android/gms/internal/clearcut/W;->w:I

    :cond_9
    iget v2, v0, Lcom/google/android/gms/internal/clearcut/W;->u:I

    sget-object v3, Lcom/google/android/gms/internal/clearcut/q;->zzhh:Lcom/google/android/gms/internal/clearcut/q;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/clearcut/q;->a()I

    move-result v3

    if-eq v2, v3, :cond_e

    iget v2, v0, Lcom/google/android/gms/internal/clearcut/W;->u:I

    sget-object v3, Lcom/google/android/gms/internal/clearcut/q;->zzhp:Lcom/google/android/gms/internal/clearcut/q;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/clearcut/q;->a()I

    move-result v3

    if-ne v2, v3, :cond_a

    goto :goto_6

    :cond_a
    iget v2, v0, Lcom/google/android/gms/internal/clearcut/W;->u:I

    sget-object v3, Lcom/google/android/gms/internal/clearcut/q;->zzhz:Lcom/google/android/gms/internal/clearcut/q;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/clearcut/q;->a()I

    move-result v3

    if-eq v2, v3, :cond_7

    iget v2, v0, Lcom/google/android/gms/internal/clearcut/W;->u:I

    sget-object v3, Lcom/google/android/gms/internal/clearcut/q;->zziv:Lcom/google/android/gms/internal/clearcut/q;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/clearcut/q;->a()I

    move-result v3

    if-ne v2, v3, :cond_b

    goto :goto_3

    :cond_b
    iget v2, v0, Lcom/google/android/gms/internal/clearcut/W;->u:I

    sget-object v3, Lcom/google/android/gms/internal/clearcut/q;->zzhk:Lcom/google/android/gms/internal/clearcut/q;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/clearcut/q;->a()I

    move-result v3

    if-eq v2, v3, :cond_d

    iget v2, v0, Lcom/google/android/gms/internal/clearcut/W;->u:I

    sget-object v3, Lcom/google/android/gms/internal/clearcut/q;->zzic:Lcom/google/android/gms/internal/clearcut/q;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/clearcut/q;->a()I

    move-result v3

    if-eq v2, v3, :cond_d

    iget v2, v0, Lcom/google/android/gms/internal/clearcut/W;->u:I

    sget-object v3, Lcom/google/android/gms/internal/clearcut/q;->zziq:Lcom/google/android/gms/internal/clearcut/q;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/clearcut/q;->a()I

    move-result v3

    if-ne v2, v3, :cond_c

    goto :goto_5

    :cond_c
    iget v2, v0, Lcom/google/android/gms/internal/clearcut/W;->u:I

    invoke-virtual {v4}, Lcom/google/android/gms/internal/clearcut/q;->a()I

    move-result v3

    if-ne v2, v3, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/clearcut/W;->c()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/clearcut/W;->A:Ljava/lang/Object;

    iget v2, v0, Lcom/google/android/gms/internal/clearcut/W;->t:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_f

    goto/16 :goto_2

    :cond_d
    :goto_5
    and-int/lit8 v2, v6, 0x1

    if-ne v2, v1, :cond_f

    goto/16 :goto_2

    :cond_e
    :goto_6
    iget-object v2, v0, Lcom/google/android/gms/internal/clearcut/W;->x:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    goto/16 :goto_4

    :cond_f
    :goto_7
    return v1

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/W;->n:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/clearcut/W;->n:I

    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/W;->b:[Ljava/lang/Object;

    aget-object p0, p0, v0

    return-object p0
.end method
