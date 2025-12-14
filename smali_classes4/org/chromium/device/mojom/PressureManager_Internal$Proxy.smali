.class final Lorg/chromium/device/mojom/PressureManager_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/device/mojom/PressureManager$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/device/mojom/PressureManager_Internal;
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
.method public addClient(ILorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;Lorg/chromium/device/mojom/PressureManager$AddClient_Response;)V
    .locals 4

    new-instance v0, Lorg/chromium/device/mojom/PressureManager_Internal$PressureManagerAddClientParams;

    invoke-direct {v0}, Lorg/chromium/device/mojom/PressureManager_Internal$PressureManagerAddClientParams;-><init>()V

    iput p1, v0, Lorg/chromium/device/mojom/PressureManager_Internal$PressureManagerAddClientParams;->source:I

    iput-object p2, v0, Lorg/chromium/device/mojom/PressureManager_Internal$PressureManagerAddClientParams;->token:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    iput-object p3, v0, Lorg/chromium/device/mojom/PressureManager_Internal$PressureManagerAddClientParams;->client:Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;

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

    const/4 v3, 0x3

    invoke-direct {p2, v3, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/device/mojom/PressureManager_Internal$PressureManagerAddClientResponseParamsForwardToCallback;

    invoke-direct {p2, p4}, Lorg/chromium/device/mojom/PressureManager_Internal$PressureManagerAddClientResponseParamsForwardToCallback;-><init>(Lorg/chromium/device/mojom/PressureManager$AddClient_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public addVirtualPressureSource(Lorg/chromium/mojo_base/mojom/UnguessableToken;ILorg/chromium/device/mojom/VirtualPressureSourceMetadata;Lorg/chromium/device/mojom/PressureManager$AddVirtualPressureSource_Response;)V
    .locals 4

    new-instance v0, Lorg/chromium/device/mojom/PressureManager_Internal$PressureManagerAddVirtualPressureSourceParams;

    invoke-direct {v0}, Lorg/chromium/device/mojom/PressureManager_Internal$PressureManagerAddVirtualPressureSourceParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/device/mojom/PressureManager_Internal$PressureManagerAddVirtualPressureSourceParams;->token:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    iput p2, v0, Lorg/chromium/device/mojom/PressureManager_Internal$PressureManagerAddVirtualPressureSourceParams;->source:I

    iput-object p3, v0, Lorg/chromium/device/mojom/PressureManager_Internal$PressureManagerAddVirtualPressureSourceParams;->metadata:Lorg/chromium/device/mojom/VirtualPressureSourceMetadata;

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

    new-instance p2, Lorg/chromium/device/mojom/PressureManager_Internal$PressureManagerAddVirtualPressureSourceResponseParamsForwardToCallback;

    invoke-direct {p2, p4}, Lorg/chromium/device/mojom/PressureManager_Internal$PressureManagerAddVirtualPressureSourceResponseParamsForwardToCallback;-><init>(Lorg/chromium/device/mojom/PressureManager$AddVirtualPressureSource_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public removeVirtualPressureSource(Lorg/chromium/mojo_base/mojom/UnguessableToken;ILorg/chromium/device/mojom/PressureManager$RemoveVirtualPressureSource_Response;)V
    .locals 4

    new-instance v0, Lorg/chromium/device/mojom/PressureManager_Internal$PressureManagerRemoveVirtualPressureSourceParams;

    invoke-direct {v0}, Lorg/chromium/device/mojom/PressureManager_Internal$PressureManagerRemoveVirtualPressureSourceParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/device/mojom/PressureManager_Internal$PressureManagerRemoveVirtualPressureSourceParams;->token:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    iput p2, v0, Lorg/chromium/device/mojom/PressureManager_Internal$PressureManagerRemoveVirtualPressureSourceParams;->source:I

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

    invoke-direct {p2, v1, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/device/mojom/PressureManager_Internal$PressureManagerRemoveVirtualPressureSourceResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/device/mojom/PressureManager_Internal$PressureManagerRemoveVirtualPressureSourceResponseParamsForwardToCallback;-><init>(Lorg/chromium/device/mojom/PressureManager$RemoveVirtualPressureSource_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public updateVirtualPressureSourceState(Lorg/chromium/mojo_base/mojom/UnguessableToken;IILorg/chromium/device/mojom/PressureManager$UpdateVirtualPressureSourceState_Response;)V
    .locals 4

    new-instance v0, Lorg/chromium/device/mojom/PressureManager_Internal$PressureManagerUpdateVirtualPressureSourceStateParams;

    invoke-direct {v0}, Lorg/chromium/device/mojom/PressureManager_Internal$PressureManagerUpdateVirtualPressureSourceStateParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/device/mojom/PressureManager_Internal$PressureManagerUpdateVirtualPressureSourceStateParams;->token:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    iput p2, v0, Lorg/chromium/device/mojom/PressureManager_Internal$PressureManagerUpdateVirtualPressureSourceStateParams;->source:I

    iput p3, v0, Lorg/chromium/device/mojom/PressureManager_Internal$PressureManagerUpdateVirtualPressureSourceStateParams;->state:I

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

    const/4 v3, 0x2

    invoke-direct {p2, v3, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/device/mojom/PressureManager_Internal$PressureManagerUpdateVirtualPressureSourceStateResponseParamsForwardToCallback;

    invoke-direct {p2, p4}, Lorg/chromium/device/mojom/PressureManager_Internal$PressureManagerUpdateVirtualPressureSourceStateResponseParamsForwardToCallback;-><init>(Lorg/chromium/device/mojom/PressureManager$UpdateVirtualPressureSourceState_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method
