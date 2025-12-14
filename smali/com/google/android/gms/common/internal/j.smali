.class public abstract Lcom/google/android/gms/common/internal/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static b:Lcom/google/android/gms/common/internal/G;

.field public static c:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/j;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/common/internal/G;
    .locals 3

    sget-object v0, Lcom/google/android/gms/common/internal/j;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/internal/j;->b:Lcom/google/android/gms/common/internal/G;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/common/internal/G;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/common/internal/G;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/gms/common/internal/j;->b:Lcom/google/android/gms/common/internal/G;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lcom/google/android/gms/common/internal/j;->b:Lcom/google/android/gms/common/internal/G;

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public abstract b(Lcom/google/android/gms/common/internal/D;Landroid/content/ServiceConnection;)V
.end method

.method public abstract c(Lcom/google/android/gms/common/internal/D;Landroid/content/ServiceConnection;Ljava/lang/String;Ljava/util/concurrent/Executor;)Z
.end method
