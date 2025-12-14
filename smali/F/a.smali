.class public final LF/a;
.super LG5/u2;
.source "SourceFile"


# static fields
.field public static volatile b:LF/a;

.field public static final c:LA2/f;


# instance fields
.field public final a:LF/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LA2/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LA2/f;-><init>(I)V

    sput-object v0, LF/a;->c:LA2/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LF/c;

    invoke-direct {v0}, LF/c;-><init>()V

    iput-object v0, p0, LF/a;->a:LF/c;

    return-void
.end method

.method public static m()LF/a;
    .locals 2

    sget-object v0, LF/a;->b:LF/a;

    if-eqz v0, :cond_0

    sget-object v0, LF/a;->b:LF/a;

    return-object v0

    :cond_0
    const-class v0, LF/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, LF/a;->b:LF/a;

    if-nez v1, :cond_1

    new-instance v1, LF/a;

    invoke-direct {v1}, LF/a;-><init>()V

    sput-object v1, LF/a;->b:LF/a;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, LF/a;->b:LF/a;

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public final n(Ljava/lang/Runnable;)V
    .locals 2

    iget-object p0, p0, LF/a;->a:LF/c;

    iget-object v0, p0, LF/c;->c:Landroid/os/Handler;

    if-nez v0, :cond_1

    iget-object v0, p0, LF/c;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LF/c;->c:Landroid/os/Handler;

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, LF/c;->c:Landroid/os/Handler;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    iget-object p0, p0, LF/c;->c:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
