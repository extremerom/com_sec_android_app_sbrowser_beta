.class public Lcom/sec/terrace/browser/push_messaging/TinPushMessagingServiceImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/push_messaging/TinPushMessagingServiceImpl$Natives;
    }
.end annotation


# direct methods
.method public static onEndpointUpdated(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/push_messaging/TinPushMessagingServiceImplJni;->get()Lcom/sec/terrace/browser/push_messaging/TinPushMessagingServiceImpl$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/push_messaging/TinPushMessagingServiceImpl$Natives;->updateEndpoint(Ljava/lang/String;)V

    return-void
.end method

.method public static prepareForMessageDelivery()V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/push_messaging/TinPushMessagingServiceImplJni;->get()Lcom/sec/terrace/browser/push_messaging/TinPushMessagingServiceImpl$Natives;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/terrace/browser/push_messaging/TinPushMessagingServiceImpl$Natives;->initForMessageDeliveryIfNecessary()V

    return-void
.end method
