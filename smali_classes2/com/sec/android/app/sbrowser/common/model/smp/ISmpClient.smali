.class public interface abstract Lcom/sec/android/app/sbrowser/common/model/smp/ISmpClient;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract isMyFcmMessage(Lcom/google/firebase/messaging/RemoteMessage;)Z
.end method

.method public abstract isMySppMessage(Ljava/util/Map;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract onAppUpdated()V
.end method

.method public abstract onFcmMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
.end method

.method public abstract onFcmTokenChanged(Ljava/lang/String;)V
.end method

.method public abstract onSppMessageReceived(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
