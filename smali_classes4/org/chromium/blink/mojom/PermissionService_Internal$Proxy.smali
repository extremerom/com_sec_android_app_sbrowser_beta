.class final Lorg/chromium/blink/mojom/PermissionService_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/PermissionService$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/PermissionService_Internal;
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
.method public addPageEmbeddedPermissionObserver(Lorg/chromium/blink/mojom/PermissionDescriptor;ILorg/chromium/blink/mojom/PermissionObserver;)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceAddPageEmbeddedPermissionObserverParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceAddPageEmbeddedPermissionObserverParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceAddPageEmbeddedPermissionObserverParams;->permission:Lorg/chromium/blink/mojom/PermissionDescriptor;

    iput p2, v0, Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceAddPageEmbeddedPermissionObserverParams;->lastKnownStatus:I

    iput-object p3, v0, Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceAddPageEmbeddedPermissionObserverParams;->observer:Lorg/chromium/blink/mojom/PermissionObserver;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x7

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public addPermissionObserver(Lorg/chromium/blink/mojom/PermissionDescriptor;ILorg/chromium/blink/mojom/PermissionObserver;)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceAddPermissionObserverParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceAddPermissionObserverParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceAddPermissionObserverParams;->permission:Lorg/chromium/blink/mojom/PermissionDescriptor;

    iput p2, v0, Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceAddPermissionObserverParams;->lastKnownStatus:I

    iput-object p3, v0, Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceAddPermissionObserverParams;->observer:Lorg/chromium/blink/mojom/PermissionObserver;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x6

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public hasPermission(Lorg/chromium/blink/mojom/PermissionDescriptor;Lorg/chromium/blink/mojom/PermissionService$HasPermission_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceHasPermissionParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceHasPermissionParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceHasPermissionParams;->permission:Lorg/chromium/blink/mojom/PermissionDescriptor;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceHasPermissionResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceHasPermissionResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/PermissionService$HasPermission_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public notifyEventListener(Lorg/chromium/blink/mojom/PermissionDescriptor;Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceNotifyEventListenerParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceNotifyEventListenerParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceNotifyEventListenerParams;->permission:Lorg/chromium/blink/mojom/PermissionDescriptor;

    iput-object p2, v0, Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceNotifyEventListenerParams;->eventType:Ljava/lang/String;

    iput-boolean p3, v0, Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceNotifyEventListenerParams;->isAdded:Z

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/16 p3, 0x8

    invoke-direct {p2, p3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public registerPageEmbeddedPermissionControl([Lorg/chromium/blink/mojom/PermissionDescriptor;Lorg/chromium/blink/mojom/EmbeddedPermissionControlClient;)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceRegisterPageEmbeddedPermissionControlParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceRegisterPageEmbeddedPermissionControlParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceRegisterPageEmbeddedPermissionControlParams;->permissions:[Lorg/chromium/blink/mojom/PermissionDescriptor;

    iput-object p2, v0, Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceRegisterPageEmbeddedPermissionControlParams;->client:Lorg/chromium/blink/mojom/EmbeddedPermissionControlClient;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x1

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public requestPageEmbeddedPermission(Lorg/chromium/blink/mojom/EmbeddedPermissionRequestDescriptor;Lorg/chromium/blink/mojom/PermissionService$RequestPageEmbeddedPermission_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceRequestPageEmbeddedPermissionParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceRequestPageEmbeddedPermissionParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceRequestPageEmbeddedPermissionParams;->descriptor:Lorg/chromium/blink/mojom/EmbeddedPermissionRequestDescriptor;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x2

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceRequestPageEmbeddedPermissionResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceRequestPageEmbeddedPermissionResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/PermissionService$RequestPageEmbeddedPermission_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public requestPermission(Lorg/chromium/blink/mojom/PermissionDescriptor;ZLorg/chromium/blink/mojom/PermissionService$RequestPermission_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceRequestPermissionParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceRequestPermissionParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceRequestPermissionParams;->permission:Lorg/chromium/blink/mojom/PermissionDescriptor;

    iput-boolean p2, v0, Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceRequestPermissionParams;->userGesture:Z

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x3

    invoke-direct {p2, v4, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceRequestPermissionResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceRequestPermissionResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/PermissionService$RequestPermission_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public requestPermissions([Lorg/chromium/blink/mojom/PermissionDescriptor;ZLorg/chromium/blink/mojom/PermissionService$RequestPermissions_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceRequestPermissionsParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceRequestPermissionsParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceRequestPermissionsParams;->permission:[Lorg/chromium/blink/mojom/PermissionDescriptor;

    iput-boolean p2, v0, Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceRequestPermissionsParams;->userGesture:Z

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x4

    invoke-direct {p2, v4, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceRequestPermissionsResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceRequestPermissionsResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/PermissionService$RequestPermissions_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public revokePermission(Lorg/chromium/blink/mojom/PermissionDescriptor;Lorg/chromium/blink/mojom/PermissionService$RevokePermission_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceRevokePermissionParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceRevokePermissionParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceRevokePermissionParams;->permission:Lorg/chromium/blink/mojom/PermissionDescriptor;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x5

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceRevokePermissionResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/blink/mojom/PermissionService_Internal$PermissionServiceRevokePermissionResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/PermissionService$RevokePermission_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method
