.class public Lcom/sec/terrace/browser/gcm_driver/TerraceGCMDriver;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static canHandle(Ljava/lang/String;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "wp:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static onMessageReceived(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-static {}, Lcom/sec/terrace/browser/push_messaging/TinPushMessagingServiceImpl;->prepareForMessageDelivery()V

    :try_start_0
    new-instance p0, Lorg/chromium/components/gcm_driver/GCMMessage;

    invoke-direct {p0, p1, p2}, Lorg/chromium/components/gcm_driver/GCMMessage;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0}, Lorg/chromium/components/gcm_driver/GCMDriver;->dispatchMessage(Lorg/chromium/components/gcm_driver/GCMMessage;)V

    return-void

    :catch_0
    move-exception p0

    const-string p1, "TerraceGCMDriver"

    const-string p2, "Received an invalid GCM message"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static onPushMessagingEndpointURLUpdated(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/terrace/browser/push_messaging/TinPushMessagingServiceImpl;->onEndpointUpdated(Ljava/lang/String;)V

    return-void
.end method
