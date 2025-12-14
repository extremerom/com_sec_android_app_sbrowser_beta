.class public Lcom/google/firebase/iid/FirebaseInstanceId;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final i:J

.field public static j:Lcom/samsung/android/motionphoto/utils/ex/e;

.field public static final k:Ljava/util/regex/Pattern;

.field public static l:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# instance fields
.field public final a:Ljava/util/concurrent/ThreadPoolExecutor;

.field public final b:Lp7/f;

.field public final c:LA7/e;

.field public final d:LQ9/a;

.field public final e:Lcom/google/android/gms/internal/auth/j;

.field public final f:LD7/f;

.field public g:Z

.field public final h:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/iid/FirebaseInstanceId;->i:J

    const-string v0, "\\AA[\\w-]{38}\\z"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->k:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lp7/f;LC7/a;LC7/a;LD7/f;)V
    .locals 7

    new-instance v0, LA7/e;

    invoke-virtual {p1}, Lp7/f;->a()V

    iget-object v1, p1, Lp7/f;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LA7/e;-><init>(Landroid/content/Context;I)V

    invoke-static {}, LG5/m;->c()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    invoke-static {}, LG5/m;->c()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->g:Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->h:Ljava/util/ArrayList;

    invoke-static {p1}, LA7/e;->c(Lp7/f;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-class v3, Lcom/google/firebase/iid/FirebaseInstanceId;

    monitor-enter v3

    :try_start_0
    sget-object v4, Lcom/google/firebase/iid/FirebaseInstanceId;->j:Lcom/samsung/android/motionphoto/utils/ex/e;

    if-nez v4, :cond_0

    new-instance v4, Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-virtual {p1}, Lp7/f;->a()V

    iget-object v5, p1, Lp7/f;->a:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/motionphoto/utils/ex/e;-><init>(Landroid/content/Context;I)V

    sput-object v4, Lcom/google/firebase/iid/FirebaseInstanceId;->j:Lcom/samsung/android/motionphoto/utils/ex/e;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->b:Lp7/f;

    iput-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->c:LA7/e;

    new-instance v3, LQ9/a;

    new-instance v4, LZ4/a;

    invoke-virtual {p1}, Lp7/f;->a()V

    iget-object v5, p1, Lp7/f;->a:Landroid/content/Context;

    invoke-direct {v4, v5}, LZ4/a;-><init>(Landroid/content/Context;)V

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object p1, v3, LQ9/a;->a:Ljava/lang/Object;

    iput-object v0, v3, LQ9/a;->b:Ljava/lang/Object;

    iput-object v4, v3, LQ9/a;->c:Ljava/lang/Object;

    iput-object p2, v3, LQ9/a;->d:Ljava/lang/Object;

    iput-object p3, v3, LQ9/a;->e:Ljava/lang/Object;

    iput-object p4, v3, LQ9/a;->f:Ljava/lang/Object;

    iput-object v3, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->d:LQ9/a;

    iput-object v2, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance p1, Lcom/google/android/gms/internal/auth/j;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    new-instance p2, LN/f;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, LN/A;-><init>(I)V

    iput-object p2, p1, Lcom/google/android/gms/internal/auth/j;->b:Ljava/lang/Object;

    iput-object v1, p1, Lcom/google/android/gms/internal/auth/j;->a:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->e:Lcom/google/android/gms/internal/auth/j;

    iput-object p4, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->f:LD7/f;

    return-void

    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "FirebaseInstanceId failed to initialize, FirebaseApp is missing project ID"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(LR5/p;)Ljava/lang/Object;
    .locals 4

    const-string v0, "Task must not be null"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/o;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sget-object v1, LA7/a;->c:LA7/a;

    new-instance v2, LI3/d;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v0}, LI3/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v1, v2}, LR5/p;->b(Ljava/util/concurrent/Executor;LR5/c;)LR5/p;

    const-wide/16 v1, 0x7530

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    invoke-virtual {p0}, LR5/p;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LR5/p;->i()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    iget-boolean v0, p0, LR5/p;->d:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, LR5/p;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, LR5/p;->h()Ljava/lang/Exception;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalThreadStateException;

    const-string v0, "Firebase Installations getId Task has timed out."

    invoke-direct {p0, v0}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/util/concurrent/CancellationException;

    const-string v0, "Task is already canceled"

    invoke-direct {p0, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Lp7/f;)V
    .locals 3

    invoke-virtual {p0}, Lp7/f;->a()V

    iget-object v0, p0, Lp7/f;->c:Lp7/g;

    iget-object v1, v0, Lp7/g;->g:Ljava/lang/String;

    const-string v2, "Please set your project ID. A valid Firebase project ID is required to communicate with Firebase server APIs: It identifies your project with Google."

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lp7/f;->a()V

    const-string v1, "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase."

    iget-object v2, v0, Lp7/g;->b:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/google/android/gms/common/internal/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lp7/f;->a()V

    const-string v1, "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google."

    iget-object v0, v0, Lp7/g;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lp7/f;->a()V

    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options."

    invoke-static {v2, v1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lp7/f;->a()V

    sget-object p0, Lcom/google/firebase/iid/FirebaseInstanceId;->k:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    const-string v0, "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options."

    invoke-static {v0, p0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public static d(Ljava/lang/Runnable;J)V
    .locals 4

    const-class v0, Lcom/google/firebase/iid/FirebaseInstanceId;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/firebase/iid/FirebaseInstanceId;->l:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v2, Lcom/google/common/util/concurrent/B;

    const-string v3, "FirebaseInstanceId"

    invoke-direct {v2, v3}, Lcom/google/common/util/concurrent/B;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/google/firebase/iid/FirebaseInstanceId;->l:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/google/firebase/iid/FirebaseInstanceId;->l:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p0, p1, p2, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getInstance(Lp7/f;)Lcom/google/firebase/iid/FirebaseInstanceId;
    .locals 1
    .param p0    # Lp7/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->c(Lp7/f;)V

    invoke-virtual {p0}, Lp7/f;->a()V

    iget-object p0, p0, Lp7/f;->d:Lcom/google/firebase/components/h;

    const-class v0, Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-interface {p0, v0}, Lcom/google/firebase/components/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/iid/FirebaseInstanceId;

    const-string v0, "Firebase Instance ID component is not present"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/o;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->b:Lp7/f;

    invoke-static {v0}, LA7/e;->c(Lp7/f;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->b:Lp7/f;

    invoke-static {v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->c(Lp7/f;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_3

    invoke-virtual {p0, v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->e(Ljava/lang/String;)LR5/p;

    move-result-object v0

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7530

    invoke-static {v0, v2, v3, v1}, LG5/G;->c(LR5/p;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    check-cast p0, LA7/d;

    iget-object p0, p0, LA7/d;->a:Ljava/lang/String;

    return-object p0

    :catch_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "SERVICE_NOT_AVAILABLE"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v2, v1, Ljava/io/IOException;

    if-eqz v2, :cond_1

    const-string v0, "INSTANCE_ID_RESET"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->j:Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-virtual {v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :goto_0
    check-cast v1, Ljava/io/IOException;

    throw v1

    :cond_1
    instance-of p0, v1, Ljava/lang/RuntimeException;

    if-eqz p0, :cond_2

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    :cond_2
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string v0, "MAIN_THREAD"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final e(Ljava/lang/String;)LR5/p;
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, LG5/G;->f(Ljava/lang/Object;)LR5/p;

    move-result-object v0

    new-instance v1, LA7/b;

    const-string v2, "*"

    invoke-direct {v1, p0, p1, v2}, LA7/b;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0, v1}, LR5/p;->m(Ljava/util/concurrent/Executor;LR5/a;)LR5/p;

    move-result-object p0

    return-object p0
.end method

.method public final f()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->b:Lp7/f;

    invoke-static {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->c(Lp7/f;)V

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->b:Lp7/f;

    invoke-static {v0}, LA7/e;->c(Lp7/f;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->g(Ljava/lang/String;Ljava/lang/String;)LA7/i;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->j(LA7/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->g:Z

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/google/firebase/iid/FirebaseInstanceId;->i(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    sget p0, LA7/i;->e:I

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    iget-object p0, v0, LA7/i;->a:Ljava/lang/String;

    :goto_1
    return-object p0
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;)LA7/i;
    .locals 3

    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->j:Lcom/samsung/android/motionphoto/utils/ex/e;

    iget-object p0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->b:Lp7/f;

    invoke-virtual {p0}, Lp7/f;->a()V

    const-string v1, "[DEFAULT]"

    iget-object v2, p0, Lp7/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lp7/f;->c()Ljava/lang/String;

    move-result-object p0

    :goto_0
    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lcom/samsung/android/motionphoto/utils/ex/e;->b:Ljava/lang/Object;

    check-cast v1, Landroid/content/SharedPreferences;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/motionphoto/utils/ex/e;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {v1, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LA7/i;->b(Ljava/lang/String;)LA7/i;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final h()Z
    .locals 4

    iget-object p0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->c:LA7/e;

    monitor-enter p0

    :try_start_0
    iget v0, p0, LA7/e;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    goto :goto_2

    :cond_0
    :try_start_1
    iget-object v0, p0, LA7/e;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.google.android.c2dm.permission.SEND"

    const-string v3, "com.google.android.gms"

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    const-string v0, "FirebaseInstanceId"

    const-string v2, "Google Play services missing or without correct permission."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    move v0, v1

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_1
    :try_start_2
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.iid.TOKEN_REQUEST"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.google.android.gms"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x2

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    iput v2, p0, LA7/e;->f:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    move v0, v2

    goto :goto_2

    :cond_3
    :goto_1
    :try_start_3
    const-string v0, "FirebaseInstanceId"

    const-string v3, "Failed to resolve IID implementation package, falling back"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :goto_2
    if-eqz v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1

    :goto_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final declared-synchronized i(J)V
    .locals 4

    monitor-enter p0

    const-wide/16 v0, 0x1e

    add-long v2, p1, p1

    :try_start_0
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sget-wide v2, Lcom/google/firebase/iid/FirebaseInstanceId;->i:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    new-instance v2, LA7/k;

    invoke-direct {v2, p0, v0, v1}, LA7/k;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;J)V

    invoke-static {v2, p1, p2}, Lcom/google/firebase/iid/FirebaseInstanceId;->d(Ljava/lang/Runnable;J)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final j(LA7/i;)Z
    .locals 6

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/google/firebase/iid/FirebaseInstanceId;->c:LA7/e;

    invoke-virtual {p0}, LA7/e;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p1, LA7/i;->c:J

    sget-wide v4, LA7/i;->d:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    iget-object p1, p1, LA7/i;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
