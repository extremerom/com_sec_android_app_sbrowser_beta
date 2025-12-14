.class public Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS7/b;


# instance fields
.field public final a:LG5/f4;

.field public final b:Lo3/e;

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Ljava/util/concurrent/atomic/AtomicReference;

.field public final e:LJ7/c;

.field public final f:LG5/M2;


# direct methods
.method public constructor <init>(LU7/e;LG5/f4;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;->a:LG5/f4;

    iput-object p3, p0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;->c:Ljava/util/concurrent/Executor;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;->d:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p2, LJ7/c;

    const/4 p3, 0x6

    invoke-direct {p2, p3}, LJ7/c;-><init>(I)V

    iput-object p2, p0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;->e:LJ7/c;

    iget-boolean p1, p1, LU7/e;->g:Z

    if-eqz p1, :cond_0

    sget-object p1, LG5/M2;->zzc:LG5/M2;

    goto :goto_0

    :cond_0
    sget-object p1, LG5/M2;->zzb:LG5/M2;

    :goto_0
    iput-object p1, p0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;->f:LG5/M2;

    invoke-static {}, LQ7/f;->b()LQ7/f;

    move-result-object p1

    const-class p2, Landroid/content/Context;

    invoke-virtual {p1, p2}, LQ7/f;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    new-instance p2, Lo3/e;

    invoke-direct {p2, p1}, Lo3/e;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;->b:Lo3/e;

    return-void
.end method

.method public static final d()LG5/K2;
    .locals 2

    new-instance v0, LG5/J2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, LG5/J2;->a:Ljava/lang/Object;

    new-instance v1, LG5/K2;

    invoke-direct {v1, v0}, LG5/K2;-><init>(LG5/J2;)V

    return-object v1
.end method


# virtual methods
.method public final a(JZLG5/k3;LG5/N2;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v2, v2, p1

    iget-object v5, v0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;->a:LG5/f4;

    sget-object v7, LG5/O2;->zzw:LG5/O2;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-object v4, v5, LG5/f4;->i:Ljava/util/HashMap;

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/4 v10, 0x0

    const-wide/16 v11, 0x1e

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    sub-long v13, v8, v13

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v15

    cmp-long v6, v13, v15

    if-gtz v6, :cond_1

    move-object/from16 v13, p5

    goto/16 :goto_3

    :cond_1
    :goto_0
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lo3/t;

    const/16 v6, 0x9

    invoke-direct {v4, v6}, Lo3/t;-><init>(I)V

    invoke-static {}, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;->d()LG5/K2;

    move-result-object v6

    iput-object v6, v4, Lo3/t;->c:Ljava/lang/Object;

    new-instance v6, Lo3/t;

    const/16 v8, 0x8

    invoke-direct {v6, v8}, Lo3/t;-><init>(I)V

    const-wide v8, 0x7fffffffffffffffL

    and-long/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v6, Lo3/t;->b:Ljava/lang/Object;

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, v6, Lo3/t;->d:Ljava/lang/Object;

    move-object/from16 v13, p5

    iput-object v13, v6, Lo3/t;->c:Ljava/lang/Object;

    new-instance v8, LG5/G2;

    invoke-direct {v8, v6}, LG5/G2;-><init>(Lo3/t;)V

    iput-object v8, v4, Lo3/t;->b:Ljava/lang/Object;

    if-eqz v1, :cond_2

    iput-object v1, v4, Lo3/t;->d:Ljava/lang/Object;

    :cond_2
    new-instance v1, Lo3/i;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iget-object v6, v0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;->f:LG5/M2;

    iput-object v6, v1, Lo3/i;->c:Ljava/lang/Object;

    new-instance v6, LG5/m3;

    invoke-direct {v6, v4}, LG5/m3;-><init>(Lo3/t;)V

    iput-object v6, v1, Lo3/i;->d:Ljava/lang/Object;

    new-instance v6, LG5/g4;

    invoke-direct {v6, v1, v10}, LG5/g4;-><init>(Lo3/i;I)V

    iget-object v1, v5, LG5/f4;->e:LR5/p;

    invoke-virtual {v1}, LR5/p;->l()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, LR5/p;->i()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_1
    move-object v8, v1

    goto :goto_2

    :cond_3
    sget-object v1, Lcom/google/android/gms/common/internal/m;->c:Lcom/google/android/gms/common/internal/m;

    iget-object v4, v5, LG5/f4;->g:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :goto_2
    sget-object v1, LQ7/k;->zza:LQ7/k;

    new-instance v14, LG5/e4;

    const/4 v9, 0x0

    move-object v4, v14

    invoke-direct/range {v4 .. v9}, LG5/e4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v14}, LQ7/k;->execute(Ljava/lang/Runnable;)V

    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    iget-object v1, v0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;->b:Lo3/e;

    iget-object v0, v0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;->f:LG5/M2;

    sget-object v4, LG5/M2;->zzc:LG5/M2;

    if-ne v0, v4, :cond_4

    const/16 v0, 0x601b

    :goto_4
    move/from16 v16, v0

    goto :goto_5

    :cond_4
    const/16 v0, 0x601a

    goto :goto_4

    :goto_5
    invoke-virtual/range {p5 .. p5}, LG5/N2;->d()I

    move-result v17

    sub-long v19, v21, v2

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v0, v1, Lo3/e;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_5

    goto :goto_6

    :cond_5
    iget-object v0, v1, Lo3/e;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    sub-long v4, v2, v4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v4, v6

    if-gtz v0, :cond_6

    monitor-exit v1

    goto :goto_7

    :cond_6
    :goto_6
    :try_start_1
    iget-object v0, v1, Lo3/e;->a:Ljava/lang/Object;

    check-cast v0, Lg5/b;

    new-instance v4, Lcom/google/android/gms/common/internal/TelemetryData;

    new-instance v5, Lcom/google/android/gms/common/internal/MethodInvocation;

    const/16 v18, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, -0x1

    move-object v15, v5

    invoke-direct/range {v15 .. v26}, Lcom/google/android/gms/common/internal/MethodInvocation;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;II)V

    filled-new-array {v5}, [Lcom/google/android/gms/common/internal/MethodInvocation;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v10, v5}, Lcom/google/android/gms/common/internal/TelemetryData;-><init>(ILjava/util/List;)V

    invoke-virtual {v0, v4}, Lg5/b;->c(Lcom/google/android/gms/common/internal/TelemetryData;)LR5/h;

    move-result-object v0

    new-instance v4, LD2/a;

    invoke-direct {v4, v1, v2, v3}, LD2/a;-><init>(Lo3/e;J)V

    invoke-virtual {v0, v4}, LR5/h;->c(LR5/d;)LR5/p;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    :goto_7
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public close()V
    .locals 10
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/B;->ON_DESTROY:Landroidx/lifecycle/B;
    .end annotation

    iget-object v0, p0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LU7/e;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;->e:LJ7/c;

    invoke-virtual {v1}, LJ7/c;->g()V

    iget-object v1, v0, LU7/e;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/o;->i(Z)V

    new-instance v1, LR5/i;

    invoke-direct {v1}, LR5/i;-><init>()V

    new-instance v3, Lcom/google/common/util/concurrent/v;

    const/4 v4, 0x6

    invoke-direct {v3, v4, v0, v1}, Lcom/google/common/util/concurrent/v;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v0, LU7/e;->a:Lcom/samsung/android/scloud/lib/setting/e;

    iget-object v1, p0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;->c:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/scloud/lib/setting/e;->q(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    new-instance v0, Lo3/i;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;->f:LG5/M2;

    iput-object v1, v0, Lo3/i;->c:Ljava/lang/Object;

    new-instance v1, Lo3/t;

    const/16 v3, 0x9

    invoke-direct {v1, v3}, Lo3/t;-><init>(I)V

    invoke-static {}, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;->d()LG5/K2;

    move-result-object v3

    iput-object v3, v1, Lo3/t;->c:Ljava/lang/Object;

    new-instance v3, LG5/m3;

    invoke-direct {v3, v1}, LG5/m3;-><init>(Lo3/t;)V

    iput-object v3, v0, Lo3/i;->d:Ljava/lang/Object;

    new-instance v6, LG5/g4;

    invoke-direct {v6, v0, v2}, LG5/g4;-><init>(Lo3/i;I)V

    sget-object v7, LG5/O2;->zzz:LG5/O2;

    iget-object v5, p0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentifierImpl;->a:LG5/f4;

    iget-object p0, v5, LG5/f4;->e:LR5/p;

    invoke-virtual {p0}, LR5/p;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, LR5/p;->i()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :goto_1
    move-object v8, p0

    goto :goto_2

    :cond_2
    sget-object p0, Lcom/google/android/gms/common/internal/m;->c:Lcom/google/android/gms/common/internal/m;

    iget-object v0, v5, LG5/f4;->g:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :goto_2
    sget-object p0, LQ7/k;->zza:LQ7/k;

    new-instance v0, LG5/e4;

    const/4 v9, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, LG5/e4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, LQ7/k;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
