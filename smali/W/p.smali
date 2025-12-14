.class public final LW/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La0/q0;
.implements Ljava/lang/Runnable;
.implements Landroid/view/Choreographer$FrameCallback;


# static fields
.field public static k:J


# instance fields
.field public final a:LG5/J2;

.field public final b:Lz0/L;

.field public final c:LW/h;

.field public final d:Landroid/view/View;

.field public final e:Lc0/d;

.field public f:J

.field public g:J

.field public h:Z

.field public final i:Landroid/view/Choreographer;

.field public j:Z


# direct methods
.method public constructor <init>(LG5/J2;Lz0/L;LW/h;Landroid/view/View;)V
    .locals 1

    const-string v0, "prefetchState"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subcomposeLayoutState"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemContentFactory"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p4, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LW/p;->a:LG5/J2;

    iput-object p2, p0, LW/p;->b:Lz0/L;

    iput-object p3, p0, LW/p;->c:LW/h;

    iput-object p4, p0, LW/p;->d:Landroid/view/View;

    new-instance p1, Lc0/d;

    const/16 p2, 0x10

    new-array p2, p2, [LW/o;

    invoke-direct {p1, p2}, Lc0/d;-><init>([Ljava/lang/Object;)V

    iput-object p1, p0, LW/p;->e:Lc0/d;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, LW/p;->i:Landroid/view/Choreographer;

    sget-wide p0, LW/p;->k:J

    const-wide/16 p2, 0x0

    cmp-long p0, p0, p2

    if-nez p0, :cond_1

    invoke-virtual {p4}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p4}, Landroid/view/View;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/Display;->getRefreshRate()F

    move-result p0

    const/high16 p1, 0x41f00000    # 30.0f

    cmpl-float p1, p0, p1

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x42700000    # 60.0f

    :goto_0
    const p1, 0x3b9aca00

    int-to-float p1, p1

    div-float/2addr p1, p0

    float-to-long p0, p1

    sput-wide p0, LW/p;->k:J

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, LW/p;->a:LG5/J2;

    iget-object v0, v0, LG5/J2;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0, p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, LW/p;->j:Z

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, LW/p;->j:Z

    iget-object v0, p0, LW/p;->a:LG5/J2;

    iget-object v0, v0, LG5/J2;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, LW/p;->d:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, LW/p;->i:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public final doFrame(J)V
    .locals 0

    iget-boolean p1, p0, LW/p;->j:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, LW/p;->d:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final run()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, LW/p;->e:Lc0/d;

    invoke-virtual {v1}, Lc0/d;->l()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_e

    iget-boolean v2, v0, LW/p;->h:Z

    if-eqz v2, :cond_e

    iget-boolean v2, v0, LW/p;->j:Z

    if-eqz v2, :cond_e

    iget-object v2, v0, LW/p;->d:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowVisibility()I

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_d

    :cond_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    sget-wide v6, LW/p;->k:J

    add-long/2addr v4, v6

    move v2, v3

    :goto_0
    invoke-virtual {v1}, Lc0/d;->m()Z

    move-result v6

    if-eqz v6, :cond_c

    if-nez v2, :cond_c

    iget-object v6, v1, Lc0/d;->a:[Ljava/lang/Object;

    aget-object v6, v6, v3

    check-cast v6, LW/o;

    iget-object v7, v0, LW/p;->c:LW/h;

    iget-object v8, v7, LW/h;->b:LS/W;

    invoke-virtual {v8}, LS/W;->invoke()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LW/i;

    iget-boolean v9, v6, LW/o;->d:Z

    if-nez v9, :cond_b

    invoke-interface {v8}, LW/i;->getItemCount()I

    move-result v9

    iget v10, v6, LW/o;->a:I

    if-ltz v10, :cond_b

    if-ge v10, v9, :cond_b

    iget-object v9, v6, LW/o;->c:Lz0/s;

    const-wide/16 v13, 0x0

    const/4 v15, 0x1

    if-nez v9, :cond_5

    const-string v9, "compose:lazylist:prefetch:compose"

    invoke-static {v9}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    iget-wide v11, v0, LW/p;->f:J

    cmp-long v18, v16, v4

    if-gtz v18, :cond_2

    add-long v11, v16, v11

    cmp-long v11, v11, v4

    if-gez v11, :cond_1

    goto :goto_1

    :cond_1
    move v11, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v11, v15

    :goto_2
    if-eqz v11, :cond_4

    invoke-interface {v8, v10}, LW/i;->c(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v10, v8}, LW/h;->a(ILjava/lang/Object;)Lsb/n;

    move-result-object v7

    iget-object v10, v0, LW/p;->b:Lz0/L;

    invoke-virtual {v10}, Lz0/L;->a()Lz0/t;

    move-result-object v10

    invoke-virtual {v10, v8, v7}, Lz0/t;->f(Ljava/lang/Object;Lsb/n;)Lz0/s;

    move-result-object v7

    iput-object v7, v6, LW/o;->c:Lz0/s;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v6, v6, v16

    iget-wide v10, v0, LW/p;->f:J

    cmp-long v8, v10, v13

    if-nez v8, :cond_3

    goto :goto_3

    :cond_3
    const/4 v8, 0x4

    int-to-long v12, v8

    div-long/2addr v10, v12

    const/4 v8, 0x3

    int-to-long v8, v8

    mul-long/2addr v10, v8

    div-long/2addr v6, v12

    add-long/2addr v6, v10

    :goto_3
    iput-wide v6, v0, LW/p;->f:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_4
    move v2, v15

    :goto_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_0

    :goto_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :cond_5
    const-string v7, "compose:lazylist:prefetch:measure"

    invoke-static {v7}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    iget-wide v10, v0, LW/p;->g:J

    cmp-long v12, v7, v4

    if-gtz v12, :cond_7

    add-long/2addr v10, v7

    cmp-long v10, v10, v4

    if-gez v10, :cond_6

    goto :goto_6

    :cond_6
    move v10, v3

    goto :goto_7

    :cond_7
    :goto_6
    move v10, v15

    :goto_7
    if-eqz v10, :cond_a

    iget-object v10, v6, LW/o;->c:Lz0/s;

    invoke-static {v10}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v10, v3

    :goto_8
    if-gez v10, :cond_8

    iget-wide v11, v6, LW/o;->b:J

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    sub-long/2addr v10, v7

    iget-wide v6, v0, LW/p;->g:J

    cmp-long v8, v6, v13

    if-nez v8, :cond_9

    goto :goto_9

    :cond_9
    const/4 v8, 0x4

    int-to-long v12, v8

    div-long/2addr v6, v12

    const/4 v8, 0x3

    int-to-long v8, v8

    mul-long/2addr v6, v8

    div-long/2addr v10, v12

    add-long/2addr v10, v6

    :goto_9
    iput-wide v10, v0, LW/p;->g:J

    invoke-virtual {v1, v3}, Lc0/d;->n(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_a

    :catchall_1
    move-exception v0

    goto :goto_b

    :cond_a
    move v2, v15

    :goto_a
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_0

    :goto_b
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :cond_b
    invoke-virtual {v1, v3}, Lc0/d;->n(I)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_c
    if-eqz v2, :cond_d

    iget-object v1, v0, LW/p;->i:Landroid/view/Choreographer;

    invoke-virtual {v1, v0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_c

    :cond_d
    iput-boolean v3, v0, LW/p;->h:Z

    :goto_c
    return-void

    :cond_e
    :goto_d
    iput-boolean v3, v0, LW/p;->h:Z

    return-void
.end method
