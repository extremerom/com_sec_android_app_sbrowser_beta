.class public Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/smp/ISmpClient;


# instance fields
.field private mMessageHandler:Lcom/sec/android/app/sbrowser/contents_push/ContentsPushMessageHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessageHandler()Lcom/sec/android/app/sbrowser/contents_push/ContentsPushMessageHandler;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpClient;->mMessageHandler:Lcom/sec/android/app/sbrowser/contents_push/ContentsPushMessageHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushMessageHandler;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushMessageHandler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpClient;->mMessageHandler:Lcom/sec/android/app/sbrowser/contents_push/ContentsPushMessageHandler;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpClient;->mMessageHandler:Lcom/sec/android/app/sbrowser/contents_push/ContentsPushMessageHandler;

    return-object p0
.end method

.method public isContentsPushTurnOn()Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->isTurnOn()Z

    move-result p0

    return p0
.end method

.method public isMyFcmMessage(Lcom/google/firebase/messaging/RemoteMessage;)Z
    .locals 0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->b()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->b()Ljava/util/Map;

    move-result-object p0

    check-cast p0, LN/A;

    invoke-virtual {p0}, LN/A;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->b()Ljava/util/Map;

    move-result-object p0

    const-string p1, "subtype"

    check-cast p0, LN/f;

    invoke-virtual {p0, p1}, LN/A;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    const-string p1, "contents_push2"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

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

    const-string p0, "subtype"

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    const-string p1, "contents_push2"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public onAppUpdated()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->getInstance()Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->appUpdated()V

    return-void
.end method

.method public onFcmMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 1

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
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->b()Ljava/util/Map;

    move-result-object p1

    const-string v0, "9190"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushLogging;->sendSALogging(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpClient;->getMessageHandler()Lcom/sec/android/app/sbrowser/contents_push/ContentsPushMessageHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushMessageHandler;->handleMessage(Ljava/util/Map;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onFcmTokenChanged(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpClient;->isContentsPushTurnOn()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->getInstance()Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->updateDeviceInfoIfNeeded()V

    :cond_0
    return-void
.end method

.method public onSppMessageReceived(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "9191"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushLogging;->sendSALogging(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpClient;->getMessageHandler()Lcom/sec/android/app/sbrowser/contents_push/ContentsPushMessageHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushMessageHandler;->handleMessage(Ljava/util/Map;)V

    return-void
.end method
