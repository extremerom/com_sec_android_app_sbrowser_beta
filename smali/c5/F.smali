.class public final Lc5/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR5/c;


# instance fields
.field public final a:Lc5/h;

.field public final b:I

.field public final c:Lc5/b;

.field public final d:J

.field public final e:J


# direct methods
.method public constructor <init>(Lc5/h;ILc5/b;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc5/F;->a:Lc5/h;

    iput p2, p0, Lc5/F;->b:I

    iput-object p3, p0, Lc5/F;->c:Lc5/b;

    iput-wide p4, p0, Lc5/F;->d:J

    iput-wide p6, p0, Lc5/F;->e:J

    return-void
.end method

.method public static a(Lc5/y;Lcom/google/android/gms/common/internal/f;I)Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;
    .locals 5

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/f;->getTelemetryConfiguration()Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    iget-boolean v1, p1, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->b:Z

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->d:[I

    if-nez v2, :cond_2

    iget-object v2, p1, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->f:[I

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_3

    aget v4, v2, v1

    if-ne v4, p2, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_6

    aget v4, v2, v1

    if-ne v4, p2, :cond_5

    :cond_3
    :goto_2
    iget p0, p0, Lc5/y;->y:I

    iget p2, p1, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->e:I

    if-ge p0, p2, :cond_4

    return-object p1

    :cond_4
    return-object v0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    :goto_3
    return-object v0
.end method


# virtual methods
.method public final onComplete(LR5/h;)V
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lc5/F;->a:Lc5/h;

    invoke-virtual {v1}, Lc5/h;->b()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/internal/p;->b()Lcom/google/android/gms/common/internal/p;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/common/internal/p;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

    if-eqz v1, :cond_2

    iget-boolean v2, v1, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->b:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    iget-object v2, v0, Lc5/F;->a:Lc5/h;

    iget-object v3, v0, Lc5/F;->c:Lc5/b;

    iget-object v2, v2, Lc5/h;->w:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc5/y;

    if-eqz v2, :cond_e

    iget-object v3, v2, Lc5/y;->b:Lb5/e;

    instance-of v4, v3, Lcom/google/android/gms/common/internal/f;

    if-nez v4, :cond_3

    goto/16 :goto_8

    :cond_3
    check-cast v3, Lcom/google/android/gms/common/internal/f;

    iget-wide v4, v0, Lc5/F;->d:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const/4 v5, 0x1

    const/4 v8, 0x0

    if-lez v4, :cond_4

    move v4, v5

    goto :goto_1

    :cond_4
    move v4, v8

    :goto_1
    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/f;->getGCoreServiceId()I

    move-result v19

    const/16 v9, 0x64

    if-eqz v1, :cond_8

    iget-boolean v10, v1, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->c:Z

    and-int/2addr v4, v10

    iget v10, v1, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->d:I

    iget v11, v1, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->e:I

    iget v1, v1, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->a:I

    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/f;->hasConnectionInfo()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/f;->isConnecting()Z

    move-result v12

    if-nez v12, :cond_7

    iget v4, v0, Lc5/F;->b:I

    invoke-static {v2, v3, v4}, Lc5/F;->a(Lc5/y;Lcom/google/android/gms/common/internal/f;I)Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;

    move-result-object v2

    if-nez v2, :cond_5

    return-void

    :cond_5
    iget-boolean v3, v2, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->c:Z

    if-eqz v3, :cond_6

    iget-wide v3, v0, Lc5/F;->d:J

    cmp-long v3, v3, v6

    if-lez v3, :cond_6

    goto :goto_2

    :cond_6
    move v5, v8

    :goto_2
    iget v11, v2, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->e:I

    move v4, v5

    :cond_7
    move v2, v10

    move v3, v11

    goto :goto_3

    :cond_8
    const/16 v10, 0x1388

    move v1, v8

    move v3, v9

    move v2, v10

    :goto_3
    iget-object v5, v0, Lc5/F;->a:Lc5/h;

    invoke-virtual/range {p1 .. p1}, LR5/h;->l()Z

    move-result v10

    const/4 v11, -0x1

    if-eqz v10, :cond_9

    move v12, v8

    goto :goto_6

    :cond_9
    move-object/from16 v8, p1

    check-cast v8, LR5/p;

    iget-boolean v8, v8, LR5/p;->d:Z

    if-eqz v8, :cond_a

    move v8, v9

    :goto_4
    move v12, v11

    goto :goto_6

    :cond_a
    invoke-virtual/range {p1 .. p1}, LR5/h;->h()Ljava/lang/Exception;

    move-result-object v8

    instance-of v9, v8, Lb5/h;

    if-eqz v9, :cond_c

    check-cast v8, Lb5/h;

    iget-object v8, v8, Lb5/h;->a:Lcom/google/android/gms/common/api/Status;

    iget v9, v8, Lcom/google/android/gms/common/api/Status;->b:I

    iget-object v8, v8, Lcom/google/android/gms/common/api/Status;->e:Lcom/google/android/gms/common/ConnectionResult;

    if-nez v8, :cond_b

    move v8, v11

    goto :goto_5

    :cond_b
    iget v8, v8, Lcom/google/android/gms/common/ConnectionResult;->b:I

    :goto_5
    move v12, v8

    move v8, v9

    goto :goto_6

    :cond_c
    const/16 v8, 0x65

    goto :goto_4

    :goto_6
    if-eqz v4, :cond_d

    iget-wide v6, v0, Lc5/F;->d:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    move-wide v15, v6

    iget-wide v6, v0, Lc5/F;->e:J

    sub-long/2addr v13, v6

    long-to-int v4, v13

    move/from16 v20, v4

    move-wide v13, v15

    move-wide v15, v9

    goto :goto_7

    :cond_d
    move-wide v13, v6

    move-wide v15, v13

    move/from16 v20, v11

    :goto_7
    new-instance v4, Lcom/google/android/gms/common/internal/MethodInvocation;

    iget v10, v0, Lc5/F;->b:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v9, v4

    move v11, v8

    invoke-direct/range {v9 .. v20}, Lcom/google/android/gms/common/internal/MethodInvocation;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;II)V

    int-to-long v14, v2

    iget-object v0, v5, Lc5/h;->A:LC5/a;

    new-instance v2, Lc5/G;

    move-object v11, v2

    move-object v12, v4

    move v13, v1

    move/from16 v16, v3

    invoke-direct/range {v11 .. v16}, Lc5/G;-><init>(Lcom/google/android/gms/common/internal/MethodInvocation;IJI)V

    const/16 v1, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_e
    :goto_8
    return-void
.end method
