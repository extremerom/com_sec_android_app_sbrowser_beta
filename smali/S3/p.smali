.class public final LS3/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final i:Z


# instance fields
.field public final a:LS3/z;

.field public final b:Lz7/d;

.field public final c:LU3/d;

.field public final d:LD4/d;

.field public final e:LS3/F;

.field public final f:LS3/o;

.field public final g:LG5/g4;

.field public final h:Lo3/n;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "Engine"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, LS3/p;->i:Z

    return-void
.end method

.method public constructor <init>(LU3/d;LI3/c;LV3/e;LV3/e;LV3/e;LV3/e;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LS3/p;->c:LU3/d;

    new-instance v0, LS3/o;

    invoke-direct {v0, p2}, LS3/o;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, LS3/p;->f:LS3/o;

    new-instance p2, Lo3/n;

    const/4 v1, 0x4

    invoke-direct {p2, v1}, Lo3/n;-><init>(I)V

    iput-object p2, p0, LS3/p;->h:Lo3/n;

    monitor-enter p0

    :try_start_0
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iput-object p0, p2, Lo3/n;->d:Ljava/lang/Object;

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    new-instance p2, Lz7/d;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LS3/p;->b:Lz7/d;

    new-instance p2, LS3/z;

    const/4 v1, 0x0

    invoke-direct {p2, v1}, LS3/z;-><init>(I)V

    iput-object p2, p0, LS3/p;->a:LS3/z;

    new-instance p2, LD4/d;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p0

    move-object v8, p0

    invoke-direct/range {v2 .. v8}, LD4/d;-><init>(LV3/e;LV3/e;LV3/e;LV3/e;LS3/p;LS3/p;)V

    iput-object p2, p0, LS3/p;->d:LD4/d;

    new-instance p2, LG5/g4;

    invoke-direct {p2, v0}, LG5/g4;-><init>(LS3/o;)V

    iput-object p2, p0, LS3/p;->g:LG5/g4;

    new-instance p2, LS3/F;

    invoke-direct {p2}, LS3/F;-><init>()V

    iput-object p2, p0, LS3/p;->e:LS3/F;

    iput-object p0, p1, LU3/d;->d:LS3/p;

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p1

    :goto_0
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public static c(Ljava/lang/String;JLS3/u;)V
    .locals 1

    const-string v0, " in "

    invoke-static {p0, v0}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1, p2}, Ll4/h;->a(J)D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, "ms, key: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Engine"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static f(LS3/C;)V
    .locals 1

    instance-of v0, p0, LS3/v;

    if-eqz v0, :cond_0

    check-cast p0, LS3/v;

    invoke-virtual {p0}, LS3/v;->d()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot release anything but an EngineResource"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/e;Ljava/lang/Object;LQ3/g;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/f;LS3/n;Ll4/c;ZZLQ3/k;ZZLh4/j;Ljava/util/concurrent/Executor;)Lo3/t;
    .locals 22

    move-object/from16 v15, p0

    sget-boolean v0, LS3/p;->i:Z

    if-eqz v0, :cond_0

    sget v0, Ll4/h;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    :goto_0
    move-wide v13, v0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object v0, v15, LS3/p;->b:Lz7/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, LS3/u;

    move-object v1, v0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p10

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p13

    invoke-direct/range {v1 .. v9}, LS3/u;-><init>(Ljava/lang/Object;LQ3/g;IILl4/c;Ljava/lang/Class;Ljava/lang/Class;LQ3/k;)V

    monitor-enter p0

    move/from16 v12, p14

    :try_start_0
    invoke-virtual {v15, v0, v12, v13, v14}, LS3/p;->b(LS3/u;ZJ)LS3/v;

    move-result-object v1

    if-nez v1, :cond_1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move-wide/from16 v20, v13

    move/from16 v13, p12

    move-object/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, v0

    invoke-virtual/range {v1 .. v21}, LS3/p;->g(Lcom/bumptech/glide/e;Ljava/lang/Object;LQ3/g;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/f;LS3/n;Ll4/c;ZZLQ3/k;ZZLh4/j;Ljava/util/concurrent/Executor;LS3/u;J)Lo3/t;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, LQ3/a;->MEMORY_CACHE:LQ3/a;

    const/4 v2, 0x0

    move-object/from16 v3, p16

    invoke-virtual {v3, v1, v0, v2}, Lh4/j;->k(LS3/C;LQ3/a;Z)V

    const/4 v0, 0x0

    return-object v0

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final b(LS3/u;ZJ)LS3/v;
    .locals 7

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    iget-object p2, p0, LS3/p;->h:Lo3/n;

    monitor-enter p2

    :try_start_0
    iget-object v1, p2, Lo3/n;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LS3/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    monitor-exit p2

    move-object v2, v0

    goto :goto_1

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LS3/v;

    if-nez v2, :cond_2

    invoke-virtual {p2, v1}, Lo3/n;->q(LS3/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_2
    :goto_0
    monitor-exit p2

    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, LS3/v;->b()V

    :cond_3
    if-eqz v2, :cond_5

    sget-boolean p0, LS3/p;->i:Z

    if-eqz p0, :cond_4

    const-string p0, "Loaded resource from active resources"

    invoke-static {p0, p3, p4, p1}, LS3/p;->c(Ljava/lang/String;JLS3/u;)V

    :cond_4
    return-object v2

    :cond_5
    iget-object v1, p0, LS3/p;->c:LU3/d;

    monitor-enter v1

    :try_start_2
    iget-object p2, v1, Lcom/samsung/android/motionphoto/utils/ex/h;->c:Ljava/lang/Object;

    check-cast p2, Ljava/util/LinkedHashMap;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ll4/i;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p2, :cond_6

    monitor-exit v1

    move-object p2, v0

    goto :goto_2

    :cond_6
    :try_start_3
    iget-wide v2, v1, Lcom/samsung/android/motionphoto/utils/ex/h;->b:J

    iget v4, p2, Ll4/i;->b:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/samsung/android/motionphoto/utils/ex/h;->b:J

    iget-object p2, p2, Ll4/i;->a:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v1

    :goto_2
    move-object v2, p2

    check-cast v2, LS3/C;

    if-nez v2, :cond_7

    move-object v2, v0

    goto :goto_3

    :cond_7
    instance-of p2, v2, LS3/v;

    if-eqz p2, :cond_8

    check-cast v2, LS3/v;

    goto :goto_3

    :cond_8
    new-instance p2, LS3/v;

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v1, p2

    move-object v5, p1

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, LS3/v;-><init>(LS3/C;ZZLS3/u;LS3/p;)V

    move-object v2, p2

    :goto_3
    if-eqz v2, :cond_9

    invoke-virtual {v2}, LS3/v;->b()V

    iget-object p0, p0, LS3/p;->h:Lo3/n;

    invoke-virtual {p0, p1, v2}, Lo3/n;->m(LS3/u;LS3/v;)V

    :cond_9
    if-eqz v2, :cond_b

    sget-boolean p0, LS3/p;->i:Z

    if-eqz p0, :cond_a

    const-string p0, "Loaded resource from cache"

    invoke-static {p0, p3, p4, p1}, LS3/p;->c(Ljava/lang/String;JLS3/u;)V

    :cond_a
    return-object v2

    :cond_b
    return-object v0

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :goto_4
    :try_start_5
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method

.method public final declared-synchronized d(LS3/t;LS3/u;LS3/v;)V
    .locals 1

    monitor-enter p0

    if-eqz p3, :cond_0

    :try_start_0
    iget-boolean v0, p3, LS3/v;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LS3/p;->h:Lo3/n;

    invoke-virtual {v0, p2, p3}, Lo3/n;->m(LS3/u;LS3/v;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p3, p0, LS3/p;->a:LS3/z;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, p3, LS3/z;->a:Ljava/util/HashMap;

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final e(LS3/u;LS3/v;)V
    .locals 3

    iget-object v0, p0, LS3/p;->h:Lo3/n;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lo3/n;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LS3/a;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    iput-object v2, v1, LS3/a;->c:LS3/C;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    iget-boolean v0, p2, LS3/v;->a:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, LS3/p;->c:LU3/d;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/motionphoto/utils/ex/h;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LS3/C;

    goto :goto_0

    :cond_1
    iget-object p0, p0, LS3/p;->e:LS3/F;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, LS3/F;->f(LS3/C;Z)V

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final g(Lcom/bumptech/glide/e;Ljava/lang/Object;LQ3/g;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/f;LS3/n;Ll4/c;ZZLQ3/k;ZZLh4/j;Ljava/util/concurrent/Executor;LS3/u;J)Lo3/t;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p13

    move-object/from16 v9, p16

    move-object/from16 v10, p17

    move-object/from16 v11, p18

    move-wide/from16 v12, p19

    iget-object v14, v0, LS3/p;->a:LS3/z;

    iget-object v14, v14, LS3/z;->a:Ljava/util/HashMap;

    invoke-virtual {v14, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, LS3/t;

    if-eqz v14, :cond_1

    invoke-virtual {v14, v9, v10}, LS3/t;->a(Lh4/j;Ljava/util/concurrent/Executor;)V

    sget-boolean v1, LS3/p;->i:Z

    if-eqz v1, :cond_0

    const-string v1, "Added to existing load"

    invoke-static {v1, v12, v13, v11}, LS3/p;->c(Ljava/lang/String;JLS3/u;)V

    :cond_0
    new-instance v1, Lo3/t;

    invoke-direct {v1, v0, v9, v14}, Lo3/t;-><init>(LS3/p;Lh4/j;LS3/t;)V

    return-object v1

    :cond_1
    iget-object v14, v0, LS3/p;->d:LD4/d;

    iget-object v14, v14, LD4/d;->g:Ljava/lang/Object;

    check-cast v14, LZ3/x;

    invoke-virtual {v14}, LZ3/x;->d()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, LS3/t;

    monitor-enter v14

    :try_start_0
    iput-object v11, v14, LS3/t;->k:LS3/u;

    move/from16 v15, p14

    iput-boolean v15, v14, LS3/t;->l:Z

    move/from16 v15, p15

    iput-boolean v15, v14, LS3/t;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v14

    iget-object v15, v0, LS3/p;->g:LG5/g4;

    iget-object v12, v15, LG5/g4;->d:Ljava/lang/Object;

    check-cast v12, LZ3/x;

    invoke-virtual {v12}, LZ3/x;->d()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LS3/l;

    iget v13, v15, LG5/g4;->b:I

    add-int/lit8 v9, v13, 0x1

    iput v9, v15, LG5/g4;->b:I

    iget-object v9, v12, LS3/l;->a:LS3/g;

    iput-object v1, v9, LS3/g;->c:Lcom/bumptech/glide/e;

    iput-object v2, v9, LS3/g;->d:Ljava/lang/Object;

    iput-object v3, v9, LS3/g;->n:LQ3/g;

    iput v4, v9, LS3/g;->e:I

    iput v5, v9, LS3/g;->f:I

    iput-object v7, v9, LS3/g;->p:LS3/n;

    move-object/from16 v15, p6

    iput-object v15, v9, LS3/g;->g:Ljava/lang/Class;

    iget-object v15, v12, LS3/l;->d:LS3/o;

    iput-object v15, v9, LS3/g;->h:LS3/o;

    move-object/from16 v15, p7

    iput-object v15, v9, LS3/g;->k:Ljava/lang/Class;

    iput-object v6, v9, LS3/g;->o:Lcom/bumptech/glide/f;

    iput-object v8, v9, LS3/g;->i:LQ3/k;

    move-object/from16 v15, p10

    iput-object v15, v9, LS3/g;->j:Ll4/c;

    move/from16 v15, p11

    iput-boolean v15, v9, LS3/g;->q:Z

    move/from16 v15, p12

    iput-boolean v15, v9, LS3/g;->r:Z

    iput-object v1, v12, LS3/l;->h:Lcom/bumptech/glide/e;

    iput-object v3, v12, LS3/l;->i:LQ3/g;

    iput-object v6, v12, LS3/l;->j:Lcom/bumptech/glide/f;

    iput-object v11, v12, LS3/l;->k:LS3/u;

    iput v4, v12, LS3/l;->l:I

    iput v5, v12, LS3/l;->m:I

    iput-object v7, v12, LS3/l;->n:LS3/n;

    iput-object v8, v12, LS3/l;->o:LQ3/k;

    iput-object v14, v12, LS3/l;->p:LS3/t;

    iput v13, v12, LS3/l;->q:I

    sget-object v1, LS3/j;->INITIALIZE:LS3/j;

    iput-object v1, v12, LS3/l;->s:LS3/j;

    iput-object v2, v12, LS3/l;->u:Ljava/lang/Object;

    iget-object v1, v0, LS3/p;->a:LS3/z;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, LS3/z;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v11, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p16

    invoke-virtual {v14, v1, v10}, LS3/t;->a(Lh4/j;Ljava/util/concurrent/Executor;)V

    monitor-enter v14

    :try_start_1
    iput-object v12, v14, LS3/t;->t:LS3/l;

    sget-object v2, LS3/k;->INITIALIZE:LS3/k;

    invoke-virtual {v12, v2}, LS3/l;->k(LS3/k;)LS3/k;

    move-result-object v2

    sget-object v3, LS3/k;->RESOURCE_CACHE:LS3/k;

    if-eq v2, v3, :cond_4

    sget-object v3, LS3/k;->DATA_CACHE:LS3/k;

    if-ne v2, v3, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean v2, v14, LS3/t;->m:Z

    if-eqz v2, :cond_3

    iget-object v2, v14, LS3/t;->i:LV3/e;

    goto :goto_1

    :cond_3
    iget-object v2, v14, LS3/t;->h:LV3/e;

    goto :goto_1

    :cond_4
    :goto_0
    iget-object v2, v14, LS3/t;->g:LV3/e;

    :goto_1
    invoke-virtual {v2, v12}, LV3/e;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v14

    sget-boolean v2, LS3/p;->i:Z

    if-eqz v2, :cond_5

    const-string v2, "Started new load"

    move-wide/from16 v3, p19

    invoke-static {v2, v3, v4, v11}, LS3/p;->c(Ljava/lang/String;JLS3/u;)V

    :cond_5
    new-instance v2, Lo3/t;

    invoke-direct {v2, v0, v1, v14}, Lo3/t;-><init>(LS3/p;Lh4/j;LS3/t;)V

    return-object v2

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
