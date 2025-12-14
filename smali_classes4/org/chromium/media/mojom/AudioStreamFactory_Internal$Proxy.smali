.class final Lorg/chromium/media/mojom/AudioStreamFactory_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/media/mojom/AudioStreamFactory$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/mojom/AudioStreamFactory_Internal;
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
.method public associateInputAndOutputForAec(Lorg/chromium/mojo_base/mojom/UnguessableToken;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryAssociateInputAndOutputForAecParams;

    invoke-direct {v0}, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryAssociateInputAndOutputForAecParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryAssociateInputAndOutputForAecParams;->inputStreamId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    iput-object p2, v0, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryAssociateInputAndOutputForAecParams;->outputDeviceId:Ljava/lang/String;

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

.method public bindMuter(Lorg/chromium/mojo/bindings/AssociatedInterfaceRequestNotSupported;Lorg/chromium/mojo_base/mojom/UnguessableToken;)V
    .locals 2

    new-instance v0, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryBindMuterParams;

    invoke-direct {v0}, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryBindMuterParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryBindMuterParams;->receiver:Lorg/chromium/mojo/bindings/AssociatedInterfaceRequestNotSupported;

    iput-object p2, v0, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryBindMuterParams;->groupId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x4

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public createInputStream(Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/media/mojom/AudioInputStreamClient;Lorg/chromium/media/mojom/AudioInputStreamObserver;Lorg/chromium/media/mojom/AudioLog;Ljava/lang/String;Lorg/chromium/media/mojom/AudioParameters;IZLorg/chromium/media/mojom/AudioProcessingConfig;Lorg/chromium/media/mojom/AudioStreamFactory$CreateInputStream_Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/media/mojom/AudioInputStream;",
            ">;",
            "Lorg/chromium/media/mojom/AudioInputStreamClient;",
            "Lorg/chromium/media/mojom/AudioInputStreamObserver;",
            "Lorg/chromium/media/mojom/AudioLog;",
            "Ljava/lang/String;",
            "Lorg/chromium/media/mojom/AudioParameters;",
            "IZ",
            "Lorg/chromium/media/mojom/AudioProcessingConfig;",
            "Lorg/chromium/media/mojom/AudioStreamFactory$CreateInputStream_Response;",
            ")V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateInputStreamParams;

    invoke-direct {v0}, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateInputStreamParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateInputStreamParams;->stream:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iput-object p2, v0, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateInputStreamParams;->client:Lorg/chromium/media/mojom/AudioInputStreamClient;

    iput-object p3, v0, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateInputStreamParams;->observer:Lorg/chromium/media/mojom/AudioInputStreamObserver;

    iput-object p4, v0, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateInputStreamParams;->log:Lorg/chromium/media/mojom/AudioLog;

    iput-object p5, v0, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateInputStreamParams;->deviceId:Ljava/lang/String;

    iput-object p6, v0, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateInputStreamParams;->params:Lorg/chromium/media/mojom/AudioParameters;

    iput p7, v0, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateInputStreamParams;->sharedMemoryCount:I

    iput-boolean p8, v0, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateInputStreamParams;->enableAgc:Z

    iput-object p9, v0, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateInputStreamParams;->processingConfig:Lorg/chromium/media/mojom/AudioProcessingConfig;

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

    const-wide/16 p4, 0x0

    const/4 p6, 0x0

    invoke-direct {p2, p6, p3, p4, p5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateInputStreamResponseParamsForwardToCallback;

    invoke-direct {p2, p10}, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateInputStreamResponseParamsForwardToCallback;-><init>(Lorg/chromium/media/mojom/AudioStreamFactory$CreateInputStream_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public createLoopbackStream(Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/media/mojom/AudioInputStreamClient;Lorg/chromium/media/mojom/AudioInputStreamObserver;Lorg/chromium/media/mojom/AudioParameters;ILorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/media/mojom/AudioStreamFactory$CreateLoopbackStream_Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/media/mojom/AudioInputStream;",
            ">;",
            "Lorg/chromium/media/mojom/AudioInputStreamClient;",
            "Lorg/chromium/media/mojom/AudioInputStreamObserver;",
            "Lorg/chromium/media/mojom/AudioParameters;",
            "I",
            "Lorg/chromium/mojo_base/mojom/UnguessableToken;",
            "Lorg/chromium/media/mojom/AudioStreamFactory$CreateLoopbackStream_Response;",
            ")V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateLoopbackStreamParams;

    invoke-direct {v0}, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateLoopbackStreamParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateLoopbackStreamParams;->receiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iput-object p2, v0, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateLoopbackStreamParams;->client:Lorg/chromium/media/mojom/AudioInputStreamClient;

    iput-object p3, v0, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateLoopbackStreamParams;->observer:Lorg/chromium/media/mojom/AudioInputStreamObserver;

    iput-object p4, v0, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateLoopbackStreamParams;->params:Lorg/chromium/media/mojom/AudioParameters;

    iput p5, v0, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateLoopbackStreamParams;->sharedMemoryCount:I

    iput-object p6, v0, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateLoopbackStreamParams;->groupId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

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

    const-wide/16 p4, 0x0

    const/4 p6, 0x5

    invoke-direct {p2, p6, p3, p4, p5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateLoopbackStreamResponseParamsForwardToCallback;

    invoke-direct {p2, p7}, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateLoopbackStreamResponseParamsForwardToCallback;-><init>(Lorg/chromium/media/mojom/AudioStreamFactory$CreateLoopbackStream_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public createOutputStream(Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;Lorg/chromium/media/mojom/AudioLog;Ljava/lang/String;Lorg/chromium/media/mojom/AudioParameters;Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/media/mojom/AudioStreamFactory$CreateOutputStream_Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/media/mojom/AudioOutputStream;",
            ">;",
            "Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;",
            "Lorg/chromium/media/mojom/AudioLog;",
            "Ljava/lang/String;",
            "Lorg/chromium/media/mojom/AudioParameters;",
            "Lorg/chromium/mojo_base/mojom/UnguessableToken;",
            "Lorg/chromium/media/mojom/AudioStreamFactory$CreateOutputStream_Response;",
            ")V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateOutputStreamParams;

    invoke-direct {v0}, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateOutputStreamParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateOutputStreamParams;->stream:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iput-object p2, v0, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateOutputStreamParams;->observer:Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;

    iput-object p3, v0, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateOutputStreamParams;->log:Lorg/chromium/media/mojom/AudioLog;

    iput-object p4, v0, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateOutputStreamParams;->deviceId:Ljava/lang/String;

    iput-object p5, v0, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateOutputStreamParams;->params:Lorg/chromium/media/mojom/AudioParameters;

    iput-object p6, v0, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateOutputStreamParams;->groupId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

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

    const-wide/16 p4, 0x0

    const/4 p6, 0x2

    invoke-direct {p2, p6, p3, p4, p5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateOutputStreamResponseParamsForwardToCallback;

    invoke-direct {p2, p7}, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateOutputStreamResponseParamsForwardToCallback;-><init>(Lorg/chromium/media/mojom/AudioStreamFactory$CreateOutputStream_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public createSwitchableOutputStream(Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;Lorg/chromium/media/mojom/AudioLog;Ljava/lang/String;Lorg/chromium/media/mojom/AudioParameters;Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/media/mojom/AudioStreamFactory$CreateSwitchableOutputStream_Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/media/mojom/AudioOutputStream;",
            ">;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/media/mojom/DeviceSwitchInterface;",
            ">;",
            "Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;",
            "Lorg/chromium/media/mojom/AudioLog;",
            "Ljava/lang/String;",
            "Lorg/chromium/media/mojom/AudioParameters;",
            "Lorg/chromium/mojo_base/mojom/UnguessableToken;",
            "Lorg/chromium/media/mojom/AudioStreamFactory$CreateSwitchableOutputStream_Response;",
            ")V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateSwitchableOutputStreamParams;

    invoke-direct {v0}, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateSwitchableOutputStreamParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateSwitchableOutputStreamParams;->stream:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iput-object p2, v0, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateSwitchableOutputStreamParams;->deviceSwitchReceiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iput-object p3, v0, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateSwitchableOutputStreamParams;->observer:Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;

    iput-object p4, v0, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateSwitchableOutputStreamParams;->log:Lorg/chromium/media/mojom/AudioLog;

    iput-object p5, v0, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateSwitchableOutputStreamParams;->deviceId:Ljava/lang/String;

    iput-object p6, v0, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateSwitchableOutputStreamParams;->params:Lorg/chromium/media/mojom/AudioParameters;

    iput-object p7, v0, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateSwitchableOutputStreamParams;->groupId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

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

    const-wide/16 p4, 0x0

    const/4 p6, 0x3

    invoke-direct {p2, p6, p3, p4, p5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateSwitchableOutputStreamResponseParamsForwardToCallback;

    invoke-direct {p2, p8}, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateSwitchableOutputStreamResponseParamsForwardToCallback;-><init>(Lorg/chromium/media/mojom/AudioStreamFactory$CreateSwitchableOutputStream_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method
