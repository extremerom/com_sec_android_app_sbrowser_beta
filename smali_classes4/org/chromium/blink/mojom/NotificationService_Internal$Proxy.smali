.class final Lorg/chromium/blink/mojom/NotificationService_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/NotificationService$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/NotificationService_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Proxy"
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V

    return-void
.end method


# virtual methods
.method public closeNonPersistentNotification(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceCloseNonPersistentNotificationParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceCloseNonPersistentNotificationParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceCloseNonPersistentNotificationParams;->token:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public closePersistentNotification(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceClosePersistentNotificationParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceClosePersistentNotificationParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceClosePersistentNotificationParams;->notificationId:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public displayNonPersistentNotification(Ljava/lang/String;Lorg/chromium/blink/mojom/NotificationData;Lorg/chromium/blink/mojom/NotificationResources;Lorg/chromium/blink/mojom/NonPersistentNotificationListener;)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceDisplayNonPersistentNotificationParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceDisplayNonPersistentNotificationParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceDisplayNonPersistentNotificationParams;->token:Ljava/lang/String;

    iput-object p2, v0, Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceDisplayNonPersistentNotificationParams;->notificationData:Lorg/chromium/blink/mojom/NotificationData;

    iput-object p3, v0, Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceDisplayNonPersistentNotificationParams;->notificationResources:Lorg/chromium/blink/mojom/NotificationResources;

    iput-object p4, v0, Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceDisplayNonPersistentNotificationParams;->eventListener:Lorg/chromium/blink/mojom/NonPersistentNotificationListener;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public displayPersistentNotification(JLorg/chromium/blink/mojom/NotificationData;Lorg/chromium/blink/mojom/NotificationResources;Lorg/chromium/blink/mojom/NotificationService$DisplayPersistentNotification_Response;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceDisplayPersistentNotificationParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceDisplayPersistentNotificationParams;-><init>()V

    iput-wide p1, v0, Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceDisplayPersistentNotificationParams;->serviceWorkerRegistrationId:J

    iput-object p3, v0, Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceDisplayPersistentNotificationParams;->notificationData:Lorg/chromium/blink/mojom/NotificationData;

    iput-object p4, v0, Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceDisplayPersistentNotificationParams;->notificationResources:Lorg/chromium/blink/mojom/NotificationResources;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x1

    const-wide/16 v1, 0x0

    const/4 p4, 0x3

    invoke-direct {p2, p4, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceDisplayPersistentNotificationResponseParamsForwardToCallback;

    invoke-direct {p2, p5}, Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceDisplayPersistentNotificationResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/NotificationService$DisplayPersistentNotification_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public getNotifications(JLjava/lang/String;ZLorg/chromium/blink/mojom/NotificationService$GetNotifications_Response;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceGetNotificationsParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceGetNotificationsParams;-><init>()V

    iput-wide p1, v0, Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceGetNotificationsParams;->serviceWorkerRegistrationId:J

    iput-object p3, v0, Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceGetNotificationsParams;->filterTag:Ljava/lang/String;

    iput-boolean p4, v0, Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceGetNotificationsParams;->includeTriggered:Z

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x1

    const-wide/16 v1, 0x0

    const/4 p4, 0x5

    invoke-direct {p2, p4, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceGetNotificationsResponseParamsForwardToCallback;

    invoke-direct {p2, p5}, Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceGetNotificationsResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/NotificationService$GetNotifications_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public getPermissionStatus(Lorg/chromium/blink/mojom/NotificationService$GetPermissionStatus_Response;)V
    .locals 7

    new-instance v0, Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceGetPermissionStatusParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceGetPermissionStatusParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceGetPermissionStatusResponseParamsForwardToCallback;

    invoke-direct {v0, p1}, Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceGetPermissionStatusResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/NotificationService$GetPermissionStatus_Response;)V

    invoke-interface {v1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method
