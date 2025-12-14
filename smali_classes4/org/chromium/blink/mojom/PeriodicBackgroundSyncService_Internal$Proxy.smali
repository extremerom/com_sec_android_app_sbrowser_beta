.class final Lorg/chromium/blink/mojom/PeriodicBackgroundSyncService_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/PeriodicBackgroundSyncService$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/PeriodicBackgroundSyncService_Internal;
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
.method public getRegistrations(JLorg/chromium/blink/mojom/PeriodicBackgroundSyncService$GetRegistrations_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/blink/mojom/PeriodicBackgroundSyncService_Internal$PeriodicBackgroundSyncServiceGetRegistrationsParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/PeriodicBackgroundSyncService_Internal$PeriodicBackgroundSyncServiceGetRegistrationsParams;-><init>()V

    iput-wide p1, v0, Lorg/chromium/blink/mojom/PeriodicBackgroundSyncService_Internal$PeriodicBackgroundSyncServiceGetRegistrationsParams;->serviceWorkerRegistrationId:J

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

    const/4 v4, 0x2

    invoke-direct {p2, v4, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/PeriodicBackgroundSyncService_Internal$PeriodicBackgroundSyncServiceGetRegistrationsResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/blink/mojom/PeriodicBackgroundSyncService_Internal$PeriodicBackgroundSyncServiceGetRegistrationsResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/PeriodicBackgroundSyncService$GetRegistrations_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public register(Lorg/chromium/blink/mojom/SyncRegistrationOptions;JLorg/chromium/blink/mojom/PeriodicBackgroundSyncService$Register_Response;)V
    .locals 4

    new-instance v0, Lorg/chromium/blink/mojom/PeriodicBackgroundSyncService_Internal$PeriodicBackgroundSyncServiceRegisterParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/PeriodicBackgroundSyncService_Internal$PeriodicBackgroundSyncServiceRegisterParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/PeriodicBackgroundSyncService_Internal$PeriodicBackgroundSyncServiceRegisterParams;->options:Lorg/chromium/blink/mojom/SyncRegistrationOptions;

    iput-wide p2, v0, Lorg/chromium/blink/mojom/PeriodicBackgroundSyncService_Internal$PeriodicBackgroundSyncServiceRegisterParams;->serviceWorkerRegistrationId:J

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

    const/4 v3, 0x0

    invoke-direct {p2, v3, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/PeriodicBackgroundSyncService_Internal$PeriodicBackgroundSyncServiceRegisterResponseParamsForwardToCallback;

    invoke-direct {p2, p4}, Lorg/chromium/blink/mojom/PeriodicBackgroundSyncService_Internal$PeriodicBackgroundSyncServiceRegisterResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/PeriodicBackgroundSyncService$Register_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public unregister(JLjava/lang/String;Lorg/chromium/blink/mojom/PeriodicBackgroundSyncService$Unregister_Response;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/PeriodicBackgroundSyncService_Internal$PeriodicBackgroundSyncServiceUnregisterParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/PeriodicBackgroundSyncService_Internal$PeriodicBackgroundSyncServiceUnregisterParams;-><init>()V

    iput-wide p1, v0, Lorg/chromium/blink/mojom/PeriodicBackgroundSyncService_Internal$PeriodicBackgroundSyncServiceUnregisterParams;->serviceWorkerRegistrationId:J

    iput-object p3, v0, Lorg/chromium/blink/mojom/PeriodicBackgroundSyncService_Internal$PeriodicBackgroundSyncServiceUnregisterParams;->tag:Ljava/lang/String;

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

    invoke-direct {p2, p3, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/PeriodicBackgroundSyncService_Internal$PeriodicBackgroundSyncServiceUnregisterResponseParamsForwardToCallback;

    invoke-direct {p2, p4}, Lorg/chromium/blink/mojom/PeriodicBackgroundSyncService_Internal$PeriodicBackgroundSyncServiceUnregisterResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/PeriodicBackgroundSyncService$Unregister_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method
