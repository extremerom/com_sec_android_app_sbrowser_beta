.class public interface abstract Lorg/chromium/blink/mojom/NotificationService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/NotificationService$GetNotifications_Response;,
        Lorg/chromium/blink/mojom/NotificationService$DisplayPersistentNotification_Response;,
        Lorg/chromium/blink/mojom/NotificationService$GetPermissionStatus_Response;,
        Lorg/chromium/blink/mojom/NotificationService$Proxy;
    }
.end annotation


# virtual methods
.method public abstract closeNonPersistentNotification(Ljava/lang/String;)V
.end method

.method public abstract closePersistentNotification(Ljava/lang/String;)V
.end method

.method public abstract displayNonPersistentNotification(Ljava/lang/String;Lorg/chromium/blink/mojom/NotificationData;Lorg/chromium/blink/mojom/NotificationResources;Lorg/chromium/blink/mojom/NonPersistentNotificationListener;)V
.end method

.method public abstract displayPersistentNotification(JLorg/chromium/blink/mojom/NotificationData;Lorg/chromium/blink/mojom/NotificationResources;Lorg/chromium/blink/mojom/NotificationService$DisplayPersistentNotification_Response;)V
.end method

.method public abstract getNotifications(JLjava/lang/String;ZLorg/chromium/blink/mojom/NotificationService$GetNotifications_Response;)V
.end method

.method public abstract getPermissionStatus(Lorg/chromium/blink/mojom/NotificationService$GetPermissionStatus_Response;)V
.end method
