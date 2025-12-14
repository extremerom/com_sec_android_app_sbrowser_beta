.class Lcom/sec/terrace/browser/push_messaging/TinPushMessagingServiceImplJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/push_messaging/TinPushMessagingServiceImpl$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/sec/terrace/browser/push_messaging/TinPushMessagingServiceImpl$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/push_messaging/TinPushMessagingServiceImplJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/push_messaging/TinPushMessagingServiceImplJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public initForMessageDeliveryIfNecessary()V
    .locals 0

    invoke-static {}, LJ/N;->M$sZogdh()V

    return-void
.end method

.method public updateEndpoint(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, LJ/N;->MIJxOHD$(Ljava/lang/Object;)V

    return-void
.end method
