.class public Lcom/sec/android/app/sbrowser/smp/SmpFcmService;
.super Lcom/samsung/android/sdk/smp/SmpFcmService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/SmpFcmService;-><init>()V

    return-void
.end method


# virtual methods
.method public getMatchedClientList(Lcom/google/firebase/messaging/RemoteMessage;)Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/messaging/RemoteMessage;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/model/smp/ISmpClient;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/smp/SmpConfiguration;->getMatchedFcmClientList(Lcom/google/firebase/messaging/RemoteMessage;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public messageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
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

    goto :goto_1

    :cond_0
    const-string v0, "SmpFcmService"

    const-string v1, "fcm message received"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/smp/SmpFcmService;->getMatchedClientList(Lcom/google/firebase/messaging/RemoteMessage;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/smp/ISmpClient;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/model/smp/ISmpClient;->onFcmMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
