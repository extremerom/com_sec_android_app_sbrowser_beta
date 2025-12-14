.class public Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$Connection;,
        Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$ConnectionCallback;
    }
.end annotation


# instance fields
.field private mAction:Ljava/lang/String;

.field private mCategory:Ljava/lang/String;

.field private mConnections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$Connection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager;->mConnections:Ljava/util/HashMap;

    iput-object p1, p0, Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager;->mCategory:Ljava/lang/String;

    iput-object p2, p0, Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager;->mAction:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a([Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$Connection;Landroid/content/Context;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager;->lambda$disconnectAll$0([Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$Connection;Landroid/content/Context;)V

    return-void
.end method

.method public static bridge synthetic b(Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager;->mConnections:Ljava/util/HashMap;

    return-object p0
.end method

.method public static bridge synthetic c(Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager;->createConnectIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private createConnectIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager;->mCategory:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object p0, p0, Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager;->mAction:Ljava/lang/String;

    if-eqz p0, :cond_1

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static bridge synthetic d(Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager;->onServiceDisconnected(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$disconnectAll$0([Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$Connection;Landroid/content/Context;)V
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2}, Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$Connection;->getService()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private onServiceDisconnected(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager;->mConnections:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public connect(Landroid/content/Context;Ljava/lang/String;Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$ConnectionCallback;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation

    iget-object v0, p0, Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager;->mConnections:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$Connection;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$Connection;->getService()Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p3, p0}, Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$ConnectionCallback;->onConnected(Landroid/os/IBinder;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p3}, Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$Connection;->addCallback(Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$ConnectionCallback;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$1;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$1;-><init>(Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager;Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$ConnectionCallback;Ljava/lang/String;Landroid/content/Context;)V

    sget-object p0, Lorg/chromium/base/task/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p0}, Lorg/chromium/base/task/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;)Lorg/chromium/base/task/AsyncTask;

    return-void
.end method

.method public disconnectAll(Landroid/content/Context;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation

    iget-object v0, p0, Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager;->mConnections:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager;->mConnections:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager;->mConnections:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    new-array v1, v1, [Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$Connection;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$Connection;

    iget-object p0, p0, Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager;->mConnections:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    new-instance p0, Lorg/chromium/webapk/lib/client/a;

    invoke-direct {p0, v0, p1}, Lorg/chromium/webapk/lib/client/a;-><init>([Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$Connection;Landroid/content/Context;)V

    const/4 p1, 0x1

    invoke-static {p1, p0}, Lorg/chromium/base/task/PostTask;->postTask(ILjava/lang/Runnable;)V

    return-void
.end method
