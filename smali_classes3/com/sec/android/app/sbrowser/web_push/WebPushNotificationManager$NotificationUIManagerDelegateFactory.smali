.class Lcom/sec/android/app/sbrowser/web_push/WebPushNotificationManager$NotificationUIManagerDelegateFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/notifications/TerraceNotificationUIManager$TerraceNotificationUIManagerDelegate$DelegateFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/web_push/WebPushNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationUIManagerDelegateFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDelegate()Lcom/sec/terrace/browser/notifications/TerraceNotificationUIManager$TerraceNotificationUIManagerDelegate$Delegate;
    .locals 0

    new-instance p0, Lcom/sec/android/app/sbrowser/web_push/WebPushNotificationManager$NotificationUIManagerDelegate;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/web_push/WebPushNotificationManager$NotificationUIManagerDelegate;-><init>()V

    return-object p0
.end method
