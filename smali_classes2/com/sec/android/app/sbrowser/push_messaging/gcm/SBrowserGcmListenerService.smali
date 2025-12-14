.class public Lcom/sec/android/app/sbrowser/push_messaging/gcm/SBrowserGcmListenerService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/smp/ISmpClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initilize()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/smp/SmpController;->getInstance()Lcom/sec/android/app/sbrowser/smp/SmpController;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/push_messaging/gcm/SBrowserGcmListenerService$1;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/push_messaging/gcm/SBrowserGcmListenerService$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/smp/SmpController;->initialize(Lcom/sec/android/app/sbrowser/smp/SmpController$InitializeResultCallback;)V

    return-void
.end method

.method private onMessageReceived(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "subtype"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received push message, appId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SBrowserGcmListenerService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/sec/android/app/sbrowser/push_messaging/gcm/SBrowserGcmListenerService$2;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/push_messaging/gcm/SBrowserGcmListenerService$2;-><init>(Lcom/sec/android/app/sbrowser/push_messaging/gcm/SBrowserGcmListenerService;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v1}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public isMyFcmMessage(Lcom/google/firebase/messaging/RemoteMessage;)Z
    .locals 2

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->b()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->b()Ljava/util/Map;

    move-result-object v0

    check-cast v0, LN/A;

    invoke-virtual {v0}, LN/A;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object p1, p1, Lcom/google/firebase/messaging/RemoteMessage;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "subtype"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return p0

    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/terrace/browser/gcm_driver/TerraceGCMDriver;->canHandle(Ljava/lang/String;)Z

    move-result p0

    :cond_2
    :goto_0
    return p0
.end method

.method public isMySppMessage(Ljava/util/Map;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public onAppUpdated()V
    .locals 0

    return-void
.end method

.method public onFcmMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->b()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->b()Ljava/util/Map;

    move-result-object v0

    check-cast v0, LN/A;

    invoke-virtual {v0}, LN/A;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/google/firebase/messaging/RemoteMessage;->a:Landroid/os/Bundle;

    const-string v1, "from"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object p1, p1, Lcom/google/firebase/messaging/RemoteMessage;->a:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/push_messaging/gcm/SBrowserGcmListenerService;->onMessageReceived(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onFcmTokenChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSppMessageReceived(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
