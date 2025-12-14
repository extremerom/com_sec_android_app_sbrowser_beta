.class Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$Connection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Connection"
.end annotation


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field private mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$ConnectionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionManager:Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager;


# direct methods
.method public constructor <init>(Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$Connection;->mCallbacks:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$Connection;->mConnectionManager:Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager;

    return-void
.end method


# virtual methods
.method public addCallback(Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$ConnectionCallback;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$Connection;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getService()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$Connection;->mBinder:Landroid/os/IBinder;

    return-object p0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iput-object p2, p0, Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$Connection;->mBinder:Landroid/os/IBinder;

    const-string p1, "Got IBinder Service: %s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "WebApkServiceConnectionManager"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$Connection;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$ConnectionCallback;

    iget-object v0, p0, Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$Connection;->mBinder:Landroid/os/IBinder;

    invoke-interface {p2, v0}, Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$ConnectionCallback;->onConnected(Landroid/os/IBinder;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$Connection;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$Connection;->mBinder:Landroid/os/IBinder;

    iget-object p0, p0, Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager$Connection;->mConnectionManager:Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager;->d(Lorg/chromium/webapk/lib/client/WebApkServiceConnectionManager;Ljava/lang/String;)V

    return-void
.end method
