.class public final Lz1/f1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:I

.field public final c:Z

.field public final d:Lz1/E0;

.field public final e:I

.field public final f:Z

.field public final g:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final h:Lz1/z0;

.field public final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final j:J

.field public final k:I

.field public final l:I

.field public final m:Z

.field public final n:Ljava/lang/Integer;

.field public final o:Landroid/content/ComponentName;

.field public final p:Z

.field public final q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IZLz1/E0;IZLjava/util/concurrent/atomic/AtomicInteger;Lz1/z0;Ljava/util/concurrent/atomic/AtomicBoolean;JIIZLjava/lang/Integer;Landroid/content/ComponentName;ZZ)V
    .locals 5

    move-object v0, p0

    move-object v1, p7

    move-object v2, p8

    move-object v3, p9

    const-string v4, "lastViewId"

    invoke-static {p7, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "parentContext"

    invoke-static {p8, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "isBackgroundSpecified"

    invoke-static {p9, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v4, p1

    iput-object v4, v0, Lz1/f1;->a:Landroid/content/Context;

    move v4, p2

    iput v4, v0, Lz1/f1;->b:I

    move v4, p3

    iput-boolean v4, v0, Lz1/f1;->c:Z

    move-object v4, p4

    iput-object v4, v0, Lz1/f1;->d:Lz1/E0;

    move v4, p5

    iput v4, v0, Lz1/f1;->e:I

    move v4, p6

    iput-boolean v4, v0, Lz1/f1;->f:Z

    iput-object v1, v0, Lz1/f1;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object v2, v0, Lz1/f1;->h:Lz1/z0;

    iput-object v3, v0, Lz1/f1;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-wide v1, p10

    iput-wide v1, v0, Lz1/f1;->j:J

    move/from16 v1, p12

    iput v1, v0, Lz1/f1;->k:I

    move/from16 v1, p13

    iput v1, v0, Lz1/f1;->l:I

    move/from16 v1, p14

    iput-boolean v1, v0, Lz1/f1;->m:Z

    move-object/from16 v1, p15

    iput-object v1, v0, Lz1/f1;->n:Ljava/lang/Integer;

    move-object/from16 v1, p16

    iput-object v1, v0, Lz1/f1;->o:Landroid/content/ComponentName;

    move/from16 v1, p17

    iput-boolean v1, v0, Lz1/f1;->p:Z

    move/from16 v1, p18

    iput-boolean v1, v0, Lz1/f1;->q:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZLz1/E0;JLandroid/content/ComponentName;ZI)V
    .locals 19

    new-instance v7, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x1

    invoke-direct {v7, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v8, Lz1/z0;

    const/4 v0, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v8, v2, v2, v1, v0}, Lz1/z0;-><init>(IILjava/util/Map;I)V

    new-instance v9, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v9, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    const/high16 v0, 0x10000

    and-int v0, p9, v0

    if-eqz v0, :cond_0

    move/from16 v18, v2

    goto :goto_0

    :cond_0
    move/from16 v18, p8

    :goto_0
    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v10, p5

    move-object/from16 v16, p7

    invoke-direct/range {v0 .. v18}, Lz1/f1;-><init>(Landroid/content/Context;IZLz1/E0;IZLjava/util/concurrent/atomic/AtomicInteger;Lz1/z0;Ljava/util/concurrent/atomic/AtomicBoolean;JIIZLjava/lang/Integer;Landroid/content/ComponentName;ZZ)V

    return-void
.end method

.method public static a(Lz1/f1;IZLjava/util/concurrent/atomic/AtomicInteger;Lz1/z0;Ljava/util/concurrent/atomic/AtomicBoolean;JIZLjava/lang/Integer;ZI)Lz1/f1;
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p12

    iget-object v2, v0, Lz1/f1;->a:Landroid/content/Context;

    iget v3, v0, Lz1/f1;->b:I

    iget-boolean v4, v0, Lz1/f1;->c:Z

    iget-object v5, v0, Lz1/f1;->d:Lz1/E0;

    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_0

    iget v6, v0, Lz1/f1;->e:I

    goto :goto_0

    :cond_0
    move/from16 v6, p1

    :goto_0
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_1

    iget-boolean v7, v0, Lz1/f1;->f:Z

    goto :goto_1

    :cond_1
    move/from16 v7, p2

    :goto_1
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_2

    iget-object v8, v0, Lz1/f1;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    goto :goto_2

    :cond_2
    move-object/from16 v8, p3

    :goto_2
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_3

    iget-object v9, v0, Lz1/f1;->h:Lz1/z0;

    goto :goto_3

    :cond_3
    move-object/from16 v9, p4

    :goto_3
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_4

    iget-object v10, v0, Lz1/f1;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    goto :goto_4

    :cond_4
    move-object/from16 v10, p5

    :goto_4
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_5

    iget-wide v11, v0, Lz1/f1;->j:J

    goto :goto_5

    :cond_5
    move-wide/from16 v11, p6

    :goto_5
    and-int/lit16 v13, v1, 0x400

    if-eqz v13, :cond_6

    iget v13, v0, Lz1/f1;->k:I

    goto :goto_6

    :cond_6
    move/from16 v13, p8

    :goto_6
    iget v14, v0, Lz1/f1;->l:I

    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_7

    iget-boolean v15, v0, Lz1/f1;->m:Z

    goto :goto_7

    :cond_7
    move/from16 v15, p9

    :goto_7
    move/from16 p1, v15

    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_8

    iget-object v15, v0, Lz1/f1;->n:Ljava/lang/Integer;

    move-object/from16 p2, v15

    goto :goto_8

    :cond_8
    move-object/from16 p2, p10

    :goto_8
    iget-object v15, v0, Lz1/f1;->o:Landroid/content/ComponentName;

    const v16, 0x8000

    and-int v1, v1, v16

    if-eqz v1, :cond_9

    iget-boolean v1, v0, Lz1/f1;->p:Z

    move/from16 v17, v1

    goto :goto_9

    :cond_9
    move/from16 v17, p11

    :goto_9
    iget-boolean v1, v0, Lz1/f1;->q:Z

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "context"

    invoke-static {v2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lastViewId"

    invoke-static {v8, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parentContext"

    invoke-static {v9, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isBackgroundSpecified"

    invoke-static {v10, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v19, Lz1/f1;

    move-object/from16 v0, v19

    move/from16 v18, v1

    move-object v1, v2

    move v2, v3

    move v3, v4

    move-object v4, v5

    move v5, v6

    move v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-wide v10, v11

    move v12, v13

    move v13, v14

    move/from16 v14, p1

    move-object/from16 v16, v15

    move-object/from16 v15, p2

    invoke-direct/range {v0 .. v18}, Lz1/f1;-><init>(Landroid/content/Context;IZLz1/E0;IZLjava/util/concurrent/atomic/AtomicInteger;Lz1/z0;Ljava/util/concurrent/atomic/AtomicBoolean;JIIZLjava/lang/Integer;Landroid/content/ComponentName;ZZ)V

    return-object v19
.end method


# virtual methods
.method public final b(Lz1/z0;I)Lz1/f1;
    .locals 13

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const v12, 0x1ff6f

    move-object v0, p0

    move v1, p2

    move-object v4, p1

    invoke-static/range {v0 .. v12}, Lz1/f1;->a(Lz1/f1;IZLjava/util/concurrent/atomic/AtomicInteger;Lz1/z0;Ljava/util/concurrent/atomic/AtomicBoolean;JIZLjava/lang/Integer;ZI)Lz1/f1;

    move-result-object p0

    return-object p0
.end method

.method public final c(Lz1/P0;J)Lz1/f1;
    .locals 15

    move-object/from16 v0, p1

    iget-object v0, v0, Lz1/P0;->b:Lz1/z0;

    const/4 v1, 0x0

    move-object v2, p0

    invoke-virtual {p0, v0, v1}, Lz1/f1;->b(Lz1/z0;I)Lz1/f1;

    move-result-object v2

    new-instance v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v7, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x1

    invoke-direct {v5, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const v14, 0x1fcbf

    move-wide/from16 v8, p2

    invoke-static/range {v2 .. v14}, Lz1/f1;->a(Lz1/f1;IZLjava/util/concurrent/atomic/AtomicInteger;Lz1/z0;Ljava/util/concurrent/atomic/AtomicBoolean;JIZLjava/lang/Integer;ZI)Lz1/f1;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lz1/f1;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lz1/f1;

    iget-object v1, p1, Lz1/f1;->a:Landroid/content/Context;

    iget-object v3, p0, Lz1/f1;->a:Landroid/content/Context;

    invoke-static {v3, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lz1/f1;->b:I

    iget v3, p1, Lz1/f1;->b:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lz1/f1;->c:Z

    iget-boolean v3, p1, Lz1/f1;->c:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lz1/f1;->d:Lz1/E0;

    iget-object v3, p1, Lz1/f1;->d:Lz1/E0;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lz1/f1;->e:I

    iget v3, p1, Lz1/f1;->e:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lz1/f1;->f:Z

    iget-boolean v3, p1, Lz1/f1;->f:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lz1/f1;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v3, p1, Lz1/f1;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lz1/f1;->h:Lz1/z0;

    iget-object v3, p1, Lz1/f1;->h:Lz1/z0;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lz1/f1;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v3, p1, Lz1/f1;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    sget v1, LH0/g;->d:I

    iget-wide v3, p0, Lz1/f1;->j:J

    iget-wide v5, p1, Lz1/f1;->j:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_12

    iget v1, p0, Lz1/f1;->k:I

    iget v3, p1, Lz1/f1;->k:I

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget v1, p0, Lz1/f1;->l:I

    iget v3, p1, Lz1/f1;->l:I

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-boolean v1, p0, Lz1/f1;->m:Z

    iget-boolean v3, p1, Lz1/f1;->m:Z

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lz1/f1;->n:Ljava/lang/Integer;

    iget-object v3, p1, Lz1/f1;->n:Ljava/lang/Integer;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lz1/f1;->o:Landroid/content/ComponentName;

    iget-object v3, p1, Lz1/f1;->o:Landroid/content/ComponentName;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-boolean v1, p0, Lz1/f1;->p:Z

    iget-boolean v3, p1, Lz1/f1;->p:Z

    if-eq v1, v3, :cond_10

    return v2

    :cond_10
    iget-boolean p0, p0, Lz1/f1;->q:Z

    iget-boolean p1, p1, Lz1/f1;->q:Z

    if-eq p0, p1, :cond_11

    return v2

    :cond_11
    return v0

    :cond_12
    return v2
.end method

.method public final hashCode()I
    .locals 6

    iget-object v0, p0, Lz1/f1;->a:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lz1/f1;->b:I

    invoke-static {v2, v0, v1}, LB/e;->c(III)I

    move-result v0

    iget-boolean v2, p0, Lz1/f1;->c:Z

    invoke-static {v0, v1, v2}, LB/e;->e(IIZ)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lz1/f1;->d:Lz1/E0;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget v3, p0, Lz1/f1;->e:I

    invoke-static {v3, v0, v1}, LB/e;->c(III)I

    move-result v0

    iget-boolean v3, p0, Lz1/f1;->f:Z

    invoke-static {v0, v1, v3}, LB/e;->e(IIZ)I

    move-result v0

    iget-object v3, p0, Lz1/f1;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lz1/f1;->h:Lz1/z0;

    invoke-virtual {v0}, Lz1/z0;->hashCode()I

    move-result v0

    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lz1/f1;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    sget v0, LH0/g;->d:I

    iget-wide v4, p0, Lz1/f1;->j:J

    invoke-static {v4, v5, v3, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->f(JII)I

    move-result v0

    iget v3, p0, Lz1/f1;->k:I

    invoke-static {v3, v0, v1}, LB/e;->c(III)I

    move-result v0

    iget v3, p0, Lz1/f1;->l:I

    invoke-static {v3, v0, v1}, LB/e;->c(III)I

    move-result v0

    iget-boolean v3, p0, Lz1/f1;->m:Z

    invoke-static {v0, v1, v3}, LB/e;->e(IIZ)I

    move-result v0

    iget-object v3, p0, Lz1/f1;->n:Ljava/lang/Integer;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lz1/f1;->o:Landroid/content/ComponentName;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Landroid/content/ComponentName;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lz1/f1;->p:Z

    invoke-static {v0, v1, v2}, LB/e;->e(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lz1/f1;->q:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-wide v0, p0, Lz1/f1;->j:J

    invoke-static {v0, v1}, LH0/g;->c(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TranslationContext(context="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lz1/f1;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", appWidgetId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lz1/f1;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isRtl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lz1/f1;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", layoutConfiguration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lz1/f1;->d:Lz1/E0;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", itemPosition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lz1/f1;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isLazyCollectionDescendant="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lz1/f1;->f:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", lastViewId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lz1/f1;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", parentContext="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lz1/f1;->h:Lz1/z0;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isBackgroundSpecified="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lz1/f1;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", layoutSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", layoutCollectionViewId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lz1/f1;->k:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", layoutCollectionItemId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lz1/f1;->l:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", canUseSelectableGroup="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lz1/f1;->m:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", actionTargetId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lz1/f1;->n:Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", actionBroadcastReceiver="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lz1/f1;->o:Landroid/content/ComponentName;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isListView="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lz1/f1;->p:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", skipInteraction="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lz1/f1;->q:Z

    const-string v0, ")"

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->k(Ljava/lang/String;Ljava/lang/StringBuilder;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
