.class public abstract Ly/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroidx/glance/appwidget/protobuf/s0;->b:Lz7/d;

    if-nez v0, :cond_1

    const-class v0, Landroidx/glance/appwidget/protobuf/s0;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/glance/appwidget/protobuf/s0;->b:Lz7/d;

    if-nez v1, :cond_0

    new-instance v1, Lz7/d;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Landroidx/glance/appwidget/protobuf/s0;->b:Lz7/d;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Ly/c;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static a(Ly/b;)LK0/m;
    .locals 4

    invoke-static {}, Lorg/chromium/ui/base/b;->n()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Ly/b;->c:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/ui/base/b;->d(Ljava/lang/Object;)Landroid/app/appsearch/AppSearchManager;

    move-result-object v0

    new-instance v1, LK0/m;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lz/c;->D()V

    iget-object v2, p0, Ly/b;->b:Ljava/lang/String;

    invoke-static {v2}, Lz/c;->a(Ljava/lang/String;)Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;

    move-result-object v2

    invoke-static {v2}, Lz/c;->b(Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;)Landroid/app/appsearch/AppSearchManager$SearchContext;

    move-result-object v2

    new-instance v3, Ly/a;

    invoke-direct {v3, v1, p0}, Ly/a;-><init>(LK0/m;Ly/b;)V

    iget-object p0, p0, Ly/b;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v2, p0, v3}, Lorg/chromium/ui/base/b;->s(Landroid/app/appsearch/AppSearchManager;Landroid/app/appsearch/AppSearchManager$SearchContext;Ljava/util/concurrent/ExecutorService;Ly/a;)V

    return-object v1
.end method
