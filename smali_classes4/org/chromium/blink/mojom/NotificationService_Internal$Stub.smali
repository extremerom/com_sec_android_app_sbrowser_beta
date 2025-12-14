.class final Lorg/chromium/blink/mojom/NotificationService_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/NotificationService_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub<",
        "Lorg/chromium/blink/mojom/NotificationService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/blink/mojom/NotificationService;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$Stub;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)V

    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->hasFlag(I)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    invoke-virtual {v1, v3}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v3

    if-nez v3, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v1

    const/4 v3, -0x2

    if-eq v1, v3, :cond_5

    const/4 v3, 0x1

    if-eq v1, v2, :cond_4

    if-eq v1, v3, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceCloseNonPersistentNotificationParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceCloseNonPersistentNotificationParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/NotificationService;

    iget-object p1, p1, Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceCloseNonPersistentNotificationParams;->token:Ljava/lang/String;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/NotificationService;->closeNonPersistentNotification(Ljava/lang/String;)V

    return v3

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceDisplayNonPersistentNotificationParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceDisplayNonPersistentNotificationParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/NotificationService;

    iget-object v1, p1, Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceDisplayNonPersistentNotificationParams;->token:Ljava/lang/String;

    iget-object v2, p1, Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceDisplayNonPersistentNotificationParams;->notificationData:Lorg/chromium/blink/mojom/NotificationData;

    iget-object v4, p1, Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceDisplayNonPersistentNotificationParams;->notificationResources:Lorg/chromium/blink/mojom/NotificationResources;

    iget-object p1, p1, Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceDisplayNonPersistentNotificationParams;->eventListener:Lorg/chromium/blink/mojom/NonPersistentNotificationListener;

    invoke-interface {p0, v1, v2, v4, p1}, Lorg/chromium/blink/mojom/NotificationService;->displayNonPersistentNotification(Ljava/lang/String;Lorg/chromium/blink/mojom/NotificationData;Lorg/chromium/blink/mojom/NotificationResources;Lorg/chromium/blink/mojom/NonPersistentNotificationListener;)V

    return v3

    :cond_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceClosePersistentNotificationParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceClosePersistentNotificationParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/NotificationService;

    iget-object p1, p1, Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceClosePersistentNotificationParams;->notificationId:Ljava/lang/String;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/NotificationService;->closePersistentNotification(Ljava/lang/String;)V

    return v3

    :cond_5
    sget-object p0, Lorg/chromium/blink/mojom/NotificationService_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {p0, p1}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRunOrClosePipe(Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;)Z

    move-result p0
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :goto_1
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v0
.end method

.method public acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z
    .locals 11

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->hasFlag(I)Z

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_5

    if-eqz v2, :cond_4

    const/4 v5, 0x3

    if-eq v2, v5, :cond_3

    if-eq v2, v3, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceGetNotificationsParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceGetNotificationsParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lorg/chromium/blink/mojom/NotificationService;

    iget-wide v6, p1, Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceGetNotificationsParams;->serviceWorkerRegistrationId:J

    iget-object v8, p1, Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceGetNotificationsParams;->filterTag:Ljava/lang/String;

    iget-boolean v9, p1, Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceGetNotificationsParams;->includeTriggered:Z

    new-instance v10, Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceGetNotificationsResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v1

    invoke-direct {v10, p0, p2, v1, v2}, Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceGetNotificationsResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface/range {v5 .. v10}, Lorg/chromium/blink/mojom/NotificationService;->getNotifications(JLjava/lang/String;ZLorg/chromium/blink/mojom/NotificationService$GetNotifications_Response;)V

    return v4

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceDisplayPersistentNotificationParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceDisplayPersistentNotificationParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lorg/chromium/blink/mojom/NotificationService;

    iget-wide v6, p1, Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceDisplayPersistentNotificationParams;->serviceWorkerRegistrationId:J

    iget-object v8, p1, Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceDisplayPersistentNotificationParams;->notificationData:Lorg/chromium/blink/mojom/NotificationData;

    iget-object v9, p1, Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceDisplayPersistentNotificationParams;->notificationResources:Lorg/chromium/blink/mojom/NotificationResources;

    new-instance v10, Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceDisplayPersistentNotificationResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v1

    invoke-direct {v10, p0, p2, v1, v2}, Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceDisplayPersistentNotificationResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface/range {v5 .. v10}, Lorg/chromium/blink/mojom/NotificationService;->displayPersistentNotification(JLorg/chromium/blink/mojom/NotificationData;Lorg/chromium/blink/mojom/NotificationResources;Lorg/chromium/blink/mojom/NotificationService$DisplayPersistentNotification_Response;)V

    return v4

    :cond_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceGetPermissionStatusParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceGetPermissionStatusParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/blink/mojom/NotificationService;

    new-instance v2, Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceGetPermissionStatusResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v2, p0, p2, v5, v6}, Lorg/chromium/blink/mojom/NotificationService_Internal$NotificationServiceGetPermissionStatusResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/blink/mojom/NotificationService;->getPermissionStatus(Lorg/chromium/blink/mojom/NotificationService$GetPermissionStatus_Response;)V

    return v4

    :cond_5
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    sget-object v1, Lorg/chromium/blink/mojom/NotificationService_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {p0, v1, p1, p2}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRun(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    move-result p0
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :goto_1
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v0
.end method
