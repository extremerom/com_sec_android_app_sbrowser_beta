.class public final Lc5/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final C:Lcom/google/android/gms/common/api/Status;

.field public static final D:Lcom/google/android/gms/common/api/Status;

.field public static final E:Ljava/lang/Object;

.field public static F:Lc5/h;


# instance fields
.field public final A:LC5/a;

.field public volatile B:Z

.field public a:J

.field public b:Z

.field public p:Lcom/google/android/gms/common/internal/TelemetryData;

.field public q:Lg5/b;

.field public final r:Landroid/content/Context;

.field public final s:La5/b;

.field public final t:Lo3/e;

.field public final u:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final v:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final w:Ljava/util/concurrent/ConcurrentHashMap;

.field public x:Lc5/w;

.field public final y:LN/g;

.field public final z:LN/g;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "Sign-out occurred while this API call was in progress."

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lc5/h;->C:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "The user must be signed in to make this API call."

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lc5/h;->D:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc5/h;->E:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 6

    sget-object v0, La5/b;->d:La5/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, 0x2710

    iput-wide v1, p0, Lc5/h;->a:J

    const/4 v1, 0x0

    iput-boolean v1, p0, Lc5/h;->b:Z

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lc5/h;->u:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lc5/h;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v4, 0x5

    const/high16 v5, 0x3f400000    # 0.75f

    invoke-direct {v2, v4, v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v2, p0, Lc5/h;->w:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v2, 0x0

    iput-object v2, p0, Lc5/h;->x:Lc5/w;

    new-instance v2, LN/g;

    invoke-direct {v2, v1}, LN/g;-><init>(I)V

    iput-object v2, p0, Lc5/h;->y:LN/g;

    new-instance v2, LN/g;

    invoke-direct {v2, v1}, LN/g;-><init>(I)V

    iput-object v2, p0, Lc5/h;->z:LN/g;

    iput-boolean v3, p0, Lc5/h;->B:Z

    iput-object p2, p0, Lc5/h;->r:Landroid/content/Context;

    new-instance v2, LC5/a;

    const/4 v3, 0x4

    invoke-direct {v2, p1, p0, v3}, LC5/a;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;I)V

    iput-object v2, p0, Lc5/h;->A:LC5/a;

    iput-object v0, p0, Lc5/h;->s:La5/b;

    new-instance p1, Lo3/e;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lo3/e;-><init>(I)V

    iput-object p1, p0, Lc5/h;->t:Lo3/e;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    sget-object p2, Lj5/b;->e:Ljava/lang/Boolean;

    if-nez p2, :cond_0

    const-string p2, "android.hardware.type.automotive"

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Lj5/b;->e:Ljava/lang/Boolean;

    :cond_0
    sget-object p1, Lj5/b;->e:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean v1, p0, Lc5/h;->B:Z

    :cond_1
    const/4 p0, 0x6

    invoke-virtual {v2, p0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static d(Lc5/b;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/api/Status;
    .locals 7

    new-instance v6, Lcom/google/android/gms/common/api/Status;

    iget-object p0, p0, Lc5/b;->b:Lb5/g;

    iget-object p0, p0, Lb5/g;->b:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "API: "

    const-string v2, " is not available on this device. Connection failed with: "

    invoke-static {v1, p0, v2, v0}, Lw2/j;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/gms/common/ConnectionResult;->c:Landroid/app/PendingIntent;

    const/4 v1, 0x1

    const/16 v2, 0x11

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/api/Status;-><init>(IILjava/lang/String;Landroid/app/PendingIntent;Lcom/google/android/gms/common/ConnectionResult;)V

    return-object v6
.end method

.method public static g(Landroid/content/Context;)Lc5/h;
    .locals 5

    sget-object v0, Lc5/h;->E:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lc5/h;->F:Lc5/h;

    if-nez v1, :cond_1

    sget-object v1, Lcom/google/android/gms/common/internal/j;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v2, Lcom/google/android/gms/common/internal/j;->c:Landroid/os/HandlerThread;

    if-eqz v2, :cond_0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "GoogleApiHandler"

    const/16 v4, 0x9

    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/android/gms/common/internal/j;->c:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    sget-object v2, Lcom/google/android/gms/common/internal/j;->c:Landroid/os/HandlerThread;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lc5/h;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v3, La5/b;->c:Ljava/lang/Object;

    invoke-direct {v2, v1, p0}, Lc5/h;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    sput-object v2, Lc5/h;->F:Lc5/h;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lc5/h;->F:Lc5/h;

    monitor-exit v0

    return-object p0

    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method


# virtual methods
.method public final a(Lc5/w;)V
    .locals 2

    sget-object v0, Lc5/h;->E:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lc5/h;->x:Lc5/w;

    if-eq v1, p1, :cond_0

    iput-object p1, p0, Lc5/h;->x:Lc5/w;

    iget-object v1, p0, Lc5/h;->y:LN/g;

    invoke-virtual {v1}, LN/g;->clear()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lc5/h;->y:LN/g;

    iget-object p1, p1, Lc5/w;->f:LN/g;

    invoke-virtual {p0, p1}, LN/g;->addAll(Ljava/util/Collection;)Z

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final b()Z
    .locals 3

    iget-boolean v0, p0, Lc5/h;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/internal/p;->b()Lcom/google/android/gms/common/internal/p;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/common/internal/p;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->b:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    iget-object p0, p0, Lc5/h;->t:Lo3/e;

    iget-object p0, p0, Lo3/e;->a:Ljava/lang/Object;

    check-cast p0, Landroid/util/SparseIntArray;

    const v0, 0xc1fa340

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    if-eq p0, v2, :cond_4

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    return v1

    :cond_4
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final c(Lcom/google/android/gms/common/ConnectionResult;I)Z
    .locals 6

    iget-object v0, p0, Lc5/h;->s:La5/b;

    iget-object p0, p0, Lc5/h;->r:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v1, Ll5/a;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Ll5/a;->a:Landroid/content/Context;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    sget-object v5, Ll5/a;->b:Ljava/lang/Boolean;

    if-eqz v5, :cond_1

    if-eq v3, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_1
    :goto_0
    :try_start_1
    sput-object v4, Ll5/a;->b:Ljava/lang/Boolean;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->isInstantApp()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    sput-object v5, Ll5/a;->b:Ljava/lang/Boolean;

    sput-object v2, Ll5/a;->a:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    move v2, v3

    :goto_1
    const/4 v1, 0x0

    if-eqz v2, :cond_2

    goto :goto_4

    :cond_2
    iget v2, p1, Lcom/google/android/gms/common/ConnectionResult;->b:I

    if-eqz v2, :cond_3

    iget-object v3, p1, Lcom/google/android/gms/common/ConnectionResult;->c:Landroid/app/PendingIntent;

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0, p0, v2, v4}, La5/c;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    const/high16 v3, 0xc000000

    invoke-static {p0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    :goto_2
    move-object v3, v4

    :goto_3
    if-eqz v3, :cond_5

    iget p1, p1, Lcom/google/android/gms/common/ConnectionResult;->b:I

    sget v2, Lcom/google/android/gms/common/api/GoogleApiActivity;->b:I

    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/google/android/gms/common/api/GoogleApiActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "pending_intent"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v3, "failing_client_id"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "notify_manager"

    const/4 v3, 0x1

    invoke-virtual {v2, p2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget p2, Lx5/c;->a:I

    const/high16 v4, 0x8000000

    or-int/2addr p2, v4

    invoke-static {p0, v1, v2, p2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {v0, p0, p1, p2}, La5/b;->f(Landroid/content/Context;ILandroid/app/PendingIntent;)V

    move v1, v3

    :cond_5
    :goto_4
    return v1

    :goto_5
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final e(Lb5/j;)Lc5/y;
    .locals 3

    invoke-virtual {p1}, Lb5/j;->getApiKey()Lc5/b;

    move-result-object v0

    iget-object v1, p0, Lc5/h;->w:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc5/y;

    if-nez v2, :cond_0

    new-instance v2, Lc5/y;

    invoke-direct {v2, p0, p1}, Lc5/y;-><init>(Lc5/h;Lb5/j;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p1, v2, Lc5/y;->b:Lb5/e;

    invoke-interface {p1}, Lb5/e;->requiresSignIn()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lc5/h;->z:LN/g;

    invoke-virtual {p0, v0}, LN/g;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v2}, Lc5/y;->j()V

    return-object v2
.end method

.method public final f(LR5/i;ILb5/j;)V
    .locals 10

    if-eqz p2, :cond_8

    invoke-virtual {p3}, Lb5/j;->getApiKey()Lc5/b;

    move-result-object v3

    invoke-virtual {p0}, Lc5/h;->b()Z

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/internal/p;->b()Lcom/google/android/gms/common/internal/p;

    move-result-object p3

    iget-object p3, p3, Lcom/google/android/gms/common/internal/p;->a:Ljava/lang/Object;

    check-cast p3, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

    const/4 v1, 0x1

    if-eqz p3, :cond_5

    iget-boolean v2, p3, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->b:Z

    if-nez v2, :cond_1

    goto :goto_3

    :cond_1
    iget-object v2, p0, Lc5/h;->w:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc5/y;

    if-eqz v2, :cond_4

    iget-object v4, v2, Lc5/y;->b:Lb5/e;

    instance-of v5, v4, Lcom/google/android/gms/common/internal/f;

    if-nez v5, :cond_2

    goto :goto_3

    :cond_2
    check-cast v4, Lcom/google/android/gms/common/internal/f;

    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/f;->hasConnectionInfo()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/f;->isConnecting()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v2, v4, p2}, Lc5/F;->a(Lc5/y;Lcom/google/android/gms/common/internal/f;I)Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;

    move-result-object p3

    if-nez p3, :cond_3

    goto :goto_3

    :cond_3
    iget v0, v2, Lc5/y;->y:I

    add-int/2addr v0, v1

    iput v0, v2, Lc5/y;->y:I

    iget-boolean v1, p3, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->c:Z

    goto :goto_0

    :cond_4
    iget-boolean v1, p3, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->c:Z

    :cond_5
    :goto_0
    new-instance p3, Lc5/F;

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    goto :goto_1

    :cond_6
    move-wide v6, v4

    :goto_1
    if-eqz v1, :cond_7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    move-wide v8, v0

    goto :goto_2

    :cond_7
    move-wide v8, v4

    :goto_2
    move-object v0, p3

    move-object v1, p0

    move v2, p2

    move-wide v4, v6

    move-wide v6, v8

    invoke-direct/range {v0 .. v7}, Lc5/F;-><init>(Lc5/h;ILc5/b;JJ)V

    :goto_3
    if-eqz v0, :cond_8

    iget-object p0, p0, Lc5/h;->A:LC5/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, LH4/s;

    const/4 p3, 0x2

    invoke-direct {p2, p3, p0}, LH4/s;-><init>(ILjava/lang/Object;)V

    iget-object p0, p1, LR5/i;->a:LR5/p;

    invoke-virtual {p0, p2, v0}, LR5/p;->b(Ljava/util/concurrent/Executor;LR5/c;)LR5/p;

    :cond_8
    return-void
.end method

.method public final h(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 2

    invoke-virtual {p0, p1, p2}, Lc5/h;->c(Lcom/google/android/gms/common/ConnectionResult;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lc5/h;->A:LC5/a;

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/os/Message;->what:I

    const-string v3, "GoogleApiManager"

    iget-object v4, v0, Lc5/h;->A:LC5/a;

    iget-object v5, v0, Lc5/h;->w:Ljava/util/concurrent/ConcurrentHashMap;

    const-wide/32 v6, 0x493e0

    const/4 v8, 0x0

    const/16 v9, 0x11

    const/4 v10, 0x0

    const/4 v11, 0x1

    packed-switch v2, :pswitch_data_0

    const-string v0, "Unknown message id: "

    invoke-static {v2, v0, v3}, LV0/c;->y(ILjava/lang/String;Ljava/lang/String;)V

    return v10

    :pswitch_0
    iput-boolean v10, v0, Lc5/h;->b:Z

    goto/16 :goto_b

    :pswitch_1
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lc5/G;

    iget-wide v2, v1, Lc5/G;->c:J

    const-wide/16 v5, 0x0

    cmp-long v2, v2, v5

    iget-object v3, v1, Lc5/G;->a:Lcom/google/android/gms/common/internal/MethodInvocation;

    iget v5, v1, Lc5/G;->b:I

    if-nez v2, :cond_1

    new-instance v1, Lcom/google/android/gms/common/internal/TelemetryData;

    filled-new-array {v3}, [Lcom/google/android/gms/common/internal/MethodInvocation;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v5, v2}, Lcom/google/android/gms/common/internal/TelemetryData;-><init>(ILjava/util/List;)V

    iget-object v2, v0, Lc5/h;->q:Lg5/b;

    if-nez v2, :cond_0

    sget-object v7, Lcom/google/android/gms/common/internal/q;->b:Lcom/google/android/gms/common/internal/q;

    new-instance v2, Lg5/b;

    sget-object v8, Lb5/i;->c:Lb5/i;

    sget-object v6, Lg5/b;->a:Lb5/g;

    iget-object v4, v0, Lc5/h;->r:Landroid/content/Context;

    const/4 v5, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lb5/j;-><init>(Landroid/content/Context;Landroid/app/Activity;Lb5/g;Lb5/c;Lb5/i;)V

    iput-object v2, v0, Lc5/h;->q:Lg5/b;

    :cond_0
    iget-object v0, v0, Lc5/h;->q:Lg5/b;

    invoke-virtual {v0, v1}, Lg5/b;->c(Lcom/google/android/gms/common/internal/TelemetryData;)LR5/h;

    goto/16 :goto_b

    :cond_1
    iget-object v2, v0, Lc5/h;->p:Lcom/google/android/gms/common/internal/TelemetryData;

    if-eqz v2, :cond_8

    iget-object v6, v2, Lcom/google/android/gms/common/internal/TelemetryData;->b:Ljava/util/List;

    iget v2, v2, Lcom/google/android/gms/common/internal/TelemetryData;->a:I

    if-ne v2, v5, :cond_4

    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    iget v6, v1, Lc5/G;->d:I

    if-lt v2, v6, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, v0, Lc5/h;->p:Lcom/google/android/gms/common/internal/TelemetryData;

    iget-object v6, v2, Lcom/google/android/gms/common/internal/TelemetryData;->b:Ljava/util/List;

    if-nez v6, :cond_3

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v2, Lcom/google/android/gms/common/internal/TelemetryData;->b:Ljava/util/List;

    :cond_3
    iget-object v2, v2, Lcom/google/android/gms/common/internal/TelemetryData;->b:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    :goto_0
    invoke-virtual {v4, v9}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, v0, Lc5/h;->p:Lcom/google/android/gms/common/internal/TelemetryData;

    if-eqz v2, :cond_8

    iget v6, v2, Lcom/google/android/gms/common/internal/TelemetryData;->a:I

    if-gtz v6, :cond_5

    invoke-virtual/range {p0 .. p0}, Lc5/h;->b()Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_5
    iget-object v6, v0, Lc5/h;->q:Lg5/b;

    if-nez v6, :cond_6

    sget-object v16, Lcom/google/android/gms/common/internal/q;->b:Lcom/google/android/gms/common/internal/q;

    new-instance v6, Lg5/b;

    sget-object v17, Lb5/i;->c:Lb5/i;

    sget-object v15, Lg5/b;->a:Lb5/g;

    iget-object v13, v0, Lc5/h;->r:Landroid/content/Context;

    const/4 v14, 0x0

    move-object v12, v6

    invoke-direct/range {v12 .. v17}, Lb5/j;-><init>(Landroid/content/Context;Landroid/app/Activity;Lb5/g;Lb5/c;Lb5/i;)V

    iput-object v6, v0, Lc5/h;->q:Lg5/b;

    :cond_6
    iget-object v6, v0, Lc5/h;->q:Lg5/b;

    invoke-virtual {v6, v2}, Lg5/b;->c(Lcom/google/android/gms/common/internal/TelemetryData;)LR5/h;

    :cond_7
    iput-object v8, v0, Lc5/h;->p:Lcom/google/android/gms/common/internal/TelemetryData;

    :cond_8
    :goto_1
    iget-object v2, v0, Lc5/h;->p:Lcom/google/android/gms/common/internal/TelemetryData;

    if-nez v2, :cond_1f

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/google/android/gms/common/internal/TelemetryData;

    invoke-direct {v3, v5, v2}, Lcom/google/android/gms/common/internal/TelemetryData;-><init>(ILjava/util/List;)V

    iput-object v3, v0, Lc5/h;->p:Lcom/google/android/gms/common/internal/TelemetryData;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-wide v1, v1, Lc5/G;->c:J

    invoke-virtual {v4, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_b

    :pswitch_2
    iget-object v1, v0, Lc5/h;->p:Lcom/google/android/gms/common/internal/TelemetryData;

    if-eqz v1, :cond_1f

    iget v2, v1, Lcom/google/android/gms/common/internal/TelemetryData;->a:I

    if-gtz v2, :cond_9

    invoke-virtual/range {p0 .. p0}, Lc5/h;->b()Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_9
    iget-object v2, v0, Lc5/h;->q:Lg5/b;

    if-nez v2, :cond_a

    sget-object v16, Lcom/google/android/gms/common/internal/q;->b:Lcom/google/android/gms/common/internal/q;

    new-instance v2, Lg5/b;

    sget-object v17, Lb5/i;->c:Lb5/i;

    sget-object v15, Lg5/b;->a:Lb5/g;

    iget-object v13, v0, Lc5/h;->r:Landroid/content/Context;

    const/4 v14, 0x0

    move-object v12, v2

    invoke-direct/range {v12 .. v17}, Lb5/j;-><init>(Landroid/content/Context;Landroid/app/Activity;Lb5/g;Lb5/c;Lb5/i;)V

    iput-object v2, v0, Lc5/h;->q:Lg5/b;

    :cond_a
    iget-object v2, v0, Lc5/h;->q:Lg5/b;

    invoke-virtual {v2, v1}, Lg5/b;->c(Lcom/google/android/gms/common/internal/TelemetryData;)LR5/h;

    :cond_b
    iput-object v8, v0, Lc5/h;->p:Lcom/google/android/gms/common/internal/TelemetryData;

    goto/16 :goto_b

    :pswitch_3
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lc5/z;

    iget-object v1, v0, Lc5/z;->a:Lc5/b;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v1, v0, Lc5/z;->a:Lc5/b;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc5/y;

    iget-object v2, v1, Lc5/y;->w:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, v1, Lc5/y;->z:Lc5/h;

    iget-object v3, v2, Lc5/h;->A:LC5/a;

    const/16 v4, 0xf

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v2, v2, Lc5/h;->A:LC5/a;

    const/16 v3, 0x10

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v1, Lc5/y;->a:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    iget-object v6, v0, Lc5/z;->b:Lcom/google/android/gms/common/Feature;

    if-eqz v5, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc5/P;

    instance-of v7, v5, Lc5/E;

    if-eqz v7, :cond_c

    move-object v7, v5

    check-cast v7, Lc5/E;

    invoke-virtual {v7, v1}, Lc5/E;->g(Lc5/y;)[Lcom/google/android/gms/common/Feature;

    move-result-object v7

    if-eqz v7, :cond_c

    array-length v8, v7

    move v9, v10

    :goto_3
    if-ge v9, v8, :cond_c

    aget-object v12, v7, v9

    invoke-static {v12, v6}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    if-ltz v9, :cond_c

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_d
    add-int/2addr v9, v11

    goto :goto_3

    :cond_e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_4
    if-ge v10, v0, :cond_1f

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc5/P;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    new-instance v4, Lb5/r;

    invoke-direct {v4, v6}, Lb5/r;-><init>(Lcom/google/android/gms/common/Feature;)V

    invoke-virtual {v1, v4}, Lc5/P;->b(Ljava/lang/RuntimeException;)V

    add-int/2addr v10, v11

    goto :goto_4

    :pswitch_4
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lc5/z;

    iget-object v1, v0, Lc5/z;->a:Lc5/b;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v1, v0, Lc5/z;->a:Lc5/b;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc5/y;

    iget-object v2, v1, Lc5/y;->w:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_b

    :cond_f
    iget-boolean v0, v1, Lc5/y;->v:Z

    if-nez v0, :cond_1f

    iget-object v0, v1, Lc5/y;->b:Lb5/e;

    invoke-interface {v0}, Lb5/e;->isConnected()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {v1}, Lc5/y;->j()V

    goto/16 :goto_b

    :cond_10
    invoke-virtual {v1}, Lc5/y;->d()V

    goto/16 :goto_b

    :pswitch_5
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0}, LB/e;->l(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    move-result-object v0

    throw v0

    :pswitch_6
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc5/y;

    iget-object v1, v0, Lc5/y;->z:Lc5/h;

    iget-object v1, v1, Lc5/h;->A:LC5/a;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/o;->b(Landroid/os/Handler;)V

    iget-object v1, v0, Lc5/y;->b:Lb5/e;

    invoke-interface {v1}, Lb5/e;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, v0, Lc5/y;->s:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_1f

    iget-object v2, v0, Lc5/y;->q:Lcom/samsung/android/motionphoto/utils/ex/e;

    iget-object v3, v2, Lcom/samsung/android/motionphoto/utils/ex/e;->b:Ljava/lang/Object;

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v2, v2, Lcom/samsung/android/motionphoto/utils/ex/e;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_5

    :cond_11
    const-string v0, "Timing out service connection."

    invoke-interface {v1, v0}, Lb5/e;->disconnect(Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_12
    :goto_5
    invoke-virtual {v0}, Lc5/y;->g()V

    goto/16 :goto_b

    :pswitch_7
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc5/y;

    iget-object v1, v0, Lc5/y;->z:Lc5/h;

    iget-object v2, v1, Lc5/h;->A:LC5/a;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/o;->b(Landroid/os/Handler;)V

    iget-boolean v2, v0, Lc5/y;->v:Z

    if-eqz v2, :cond_1f

    if-eqz v2, :cond_13

    iget-object v2, v0, Lc5/y;->z:Lc5/h;

    iget-object v3, v2, Lc5/h;->A:LC5/a;

    iget-object v4, v0, Lc5/y;->p:Lc5/b;

    const/16 v5, 0xb

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v2, v2, Lc5/h;->A:LC5/a;

    const/16 v3, 0x9

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iput-boolean v10, v0, Lc5/y;->v:Z

    :cond_13
    sget v2, La5/c;->a:I

    iget-object v3, v1, Lc5/h;->r:Landroid/content/Context;

    iget-object v1, v1, Lc5/h;->s:La5/b;

    invoke-virtual {v1, v2, v3}, La5/c;->b(ILandroid/content/Context;)I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_14

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x15

    const-string v3, "Connection timed out waiting for Google Play services update to complete."

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto :goto_6

    :cond_14
    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x16

    const-string v3, "API failed to connect while resuming due to an unknown error."

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    :goto_6
    invoke-virtual {v0, v1}, Lc5/y;->b(Lcom/google/android/gms/common/api/Status;)V

    iget-object v0, v0, Lc5/y;->b:Lb5/e;

    const-string v1, "Timing out connection while resuming."

    invoke-interface {v0, v1}, Lb5/e;->disconnect(Ljava/lang/String;)V

    goto/16 :goto_b

    :pswitch_8
    iget-object v0, v0, Lc5/h;->z:LN/g;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, LN/b;

    invoke-direct {v1, v0}, LN/b;-><init>(LN/g;)V

    :cond_15
    :goto_7
    invoke-virtual {v1}, LN/b;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {v1}, LN/b;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc5/b;

    invoke-virtual {v5, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc5/y;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Lc5/y;->m()V

    goto :goto_7

    :cond_16
    invoke-virtual {v0}, LN/g;->clear()V

    goto/16 :goto_b

    :pswitch_9
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc5/y;

    iget-object v1, v0, Lc5/y;->z:Lc5/h;

    iget-object v1, v1, Lc5/h;->A:LC5/a;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/o;->b(Landroid/os/Handler;)V

    iget-boolean v1, v0, Lc5/y;->v:Z

    if-eqz v1, :cond_1f

    invoke-virtual {v0}, Lc5/y;->j()V

    goto/16 :goto_b

    :pswitch_a
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lb5/j;

    invoke-virtual {v0, v1}, Lc5/h;->e(Lb5/j;)Lc5/y;

    goto/16 :goto_b

    :pswitch_b
    iget-object v1, v0, Lc5/h;->r:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Application;

    if-eqz v2, :cond_1f

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    invoke-static {v1}, Lc5/d;->a(Landroid/app/Application;)V

    sget-object v1, Lc5/d;->e:Lc5/d;

    new-instance v2, Lc5/x;

    invoke-direct {v2, v0}, Lc5/x;-><init>(Lc5/h;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-enter v1

    :try_start_0
    iget-object v3, v1, Lc5/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, v1, Lc5/d;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    iget-object v1, v1, Lc5/d;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v3, :cond_17

    new-instance v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    invoke-static {v3}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    invoke-virtual {v2, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v2

    if-nez v2, :cond_17

    iget v2, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v3, 0x64

    if-le v2, v3, :cond_17

    invoke-virtual {v1, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_17
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1f

    iput-wide v6, v0, Lc5/h;->a:J

    goto/16 :goto_b

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_c
    iget v2, v1, Landroid/os/Message;->arg1:I

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc5/y;

    iget v6, v5, Lc5/y;->t:I

    if-ne v6, v2, :cond_18

    move-object v8, v5

    :cond_19
    if-eqz v8, :cond_1b

    iget v2, v1, Lcom/google/android/gms/common/ConnectionResult;->b:I

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1a

    new-instance v3, Lcom/google/android/gms/common/api/Status;

    iget-object v0, v0, Lc5/h;->s:La5/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, La5/f;->e:I

    invoke-static {v2}, Lcom/google/android/gms/common/ConnectionResult;->b(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Error resolution was canceled by the user, original error message: "

    const-string v4, ": "

    invoke-static {v2, v0, v4}, LV0/c;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v1, Lcom/google/android/gms/common/ConnectionResult;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v9, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {v8, v3}, Lc5/y;->b(Lcom/google/android/gms/common/api/Status;)V

    goto/16 :goto_b

    :cond_1a
    iget-object v0, v8, Lc5/y;->p:Lc5/b;

    invoke-static {v0, v1}, Lc5/h;->d(Lc5/b;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v8, v0}, Lc5/y;->b(Lcom/google/android/gms/common/api/Status;)V

    goto/16 :goto_b

    :cond_1b
    const-string v0, "Could not find API instance "

    const-string v1, " while trying to fail enqueued calls."

    invoke-static {v2, v0, v1}, Lt/b;->l(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    :pswitch_d
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lc5/H;

    iget-object v2, v1, Lc5/H;->c:Lb5/j;

    invoke-virtual {v2}, Lb5/j;->getApiKey()Lc5/b;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc5/y;

    if-nez v2, :cond_1c

    iget-object v2, v1, Lc5/H;->c:Lb5/j;

    invoke-virtual {v0, v2}, Lc5/h;->e(Lb5/j;)Lc5/y;

    move-result-object v2

    :cond_1c
    iget-object v3, v2, Lc5/y;->b:Lb5/e;

    invoke-interface {v3}, Lb5/e;->requiresSignIn()Z

    move-result v3

    iget-object v4, v1, Lc5/H;->a:Lc5/P;

    if-eqz v3, :cond_1d

    iget-object v0, v0, Lc5/h;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, v1, Lc5/H;->b:I

    if-eq v0, v1, :cond_1d

    sget-object v0, Lc5/h;->C:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v4, v0}, Lc5/P;->a(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v2}, Lc5/y;->m()V

    goto :goto_b

    :cond_1d
    invoke-virtual {v2, v4}, Lc5/y;->k(Lc5/P;)V

    goto :goto_b

    :pswitch_e
    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc5/y;

    iget-object v2, v1, Lc5/y;->z:Lc5/h;

    iget-object v2, v2, Lc5/h;->A:LC5/a;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/o;->b(Landroid/os/Handler;)V

    iput-object v8, v1, Lc5/y;->x:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1}, Lc5/y;->j()V

    goto :goto_8

    :pswitch_f
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0}, LB/e;->l(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    move-result-object v0

    throw v0

    :pswitch_10
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v11, v1, :cond_1e

    goto :goto_9

    :cond_1e
    const-wide/16 v6, 0x2710

    :goto_9
    iput-wide v6, v0, Lc5/h;->a:J

    const/16 v1, 0xc

    invoke-virtual {v4, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc5/b;

    invoke-virtual {v4, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    iget-wide v5, v0, Lc5/h;->a:J

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_a

    :cond_1f
    :goto_b
    return v11

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_d
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_d
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
