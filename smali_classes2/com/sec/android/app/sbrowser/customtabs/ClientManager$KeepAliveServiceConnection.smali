.class Lcom/sec/android/app/sbrowser/customtabs/ClientManager$KeepAliveServiceConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/customtabs/ClientManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeepAliveServiceConnection"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHasDied:Z

.field private mIsBound:Z

.field private final mServiceIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$KeepAliveServiceConnection;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$KeepAliveServiceConnection;->mServiceIntent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public connect()Z
    .locals 4

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$KeepAliveServiceConnection;->mIsBound:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$KeepAliveServiceConnection;->mHasDied:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$KeepAliveServiceConnection;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$KeepAliveServiceConnection;->mServiceIntent:Landroid/content/Intent;

    invoke-virtual {v0, v3, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$KeepAliveServiceConnection;->mIsBound:Z

    return v0

    :catch_0
    return v2
.end method

.method public disconnect()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$KeepAliveServiceConnection;->mIsBound:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$KeepAliveServiceConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$KeepAliveServiceConnection;->mIsBound:Z

    :cond_0
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$KeepAliveServiceConnection;->mIsBound:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$KeepAliveServiceConnection;->mHasDied:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager$KeepAliveServiceConnection;->disconnect()V

    :cond_0
    return-void
.end method
