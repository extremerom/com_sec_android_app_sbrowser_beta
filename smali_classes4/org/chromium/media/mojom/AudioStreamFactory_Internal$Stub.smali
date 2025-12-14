.class final Lorg/chromium/media/mojom/AudioStreamFactory_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/mojom/AudioStreamFactory_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub<",
        "Lorg/chromium/media/mojom/AudioStreamFactory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/media/mojom/AudioStreamFactory;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$Stub;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)V

    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 4

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

    if-eq v1, v3, :cond_4

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryBindMuterParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryBindMuterParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/AudioStreamFactory;

    iget-object v1, p1, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryBindMuterParams;->receiver:Lorg/chromium/mojo/bindings/AssociatedInterfaceRequestNotSupported;

    iget-object p1, p1, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryBindMuterParams;->groupId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    invoke-interface {p0, v1, p1}, Lorg/chromium/media/mojom/AudioStreamFactory;->bindMuter(Lorg/chromium/mojo/bindings/AssociatedInterfaceRequestNotSupported;Lorg/chromium/mojo_base/mojom/UnguessableToken;)V

    return v3

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryAssociateInputAndOutputForAecParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryAssociateInputAndOutputForAecParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/media/mojom/AudioStreamFactory;

    iget-object v1, p1, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryAssociateInputAndOutputForAecParams;->inputStreamId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    iget-object p1, p1, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryAssociateInputAndOutputForAecParams;->outputDeviceId:Ljava/lang/String;

    invoke-interface {p0, v1, p1}, Lorg/chromium/media/mojom/AudioStreamFactory;->associateInputAndOutputForAec(Lorg/chromium/mojo_base/mojom/UnguessableToken;Ljava/lang/String;)V

    return v3

    :cond_4
    sget-object p0, Lorg/chromium/media/mojom/AudioStreamFactory_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
    .locals 18

    move-object/from16 v0, p2

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;->hasFlag(I)Z

    move-result v4

    const/4 v5, 0x5

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v6

    :goto_0
    invoke-virtual {v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v4

    if-nez v4, :cond_1

    return v1

    :cond_1
    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v4

    const/4 v7, -0x1

    if-eq v4, v7, :cond_6

    if-eqz v4, :cond_5

    const/4 v7, 0x2

    if-eq v4, v7, :cond_4

    const/4 v7, 0x3

    if-eq v4, v7, :cond_3

    if-eq v4, v5, :cond_2

    return v1

    :cond_2
    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateLoopbackStreamParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateLoopbackStreamParams;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lorg/chromium/media/mojom/AudioStreamFactory;

    iget-object v8, v2, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateLoopbackStreamParams;->receiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iget-object v9, v2, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateLoopbackStreamParams;->client:Lorg/chromium/media/mojom/AudioInputStreamClient;

    iget-object v10, v2, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateLoopbackStreamParams;->observer:Lorg/chromium/media/mojom/AudioInputStreamObserver;

    iget-object v11, v2, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateLoopbackStreamParams;->params:Lorg/chromium/media/mojom/AudioParameters;

    iget v12, v2, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateLoopbackStreamParams;->sharedMemoryCount:I

    iget-object v13, v2, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateLoopbackStreamParams;->groupId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    new-instance v14, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateLoopbackStreamResponseParamsProxyToResponder;

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v3

    invoke-direct {v14, v2, v0, v3, v4}, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateLoopbackStreamResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface/range {v7 .. v14}, Lorg/chromium/media/mojom/AudioStreamFactory;->createLoopbackStream(Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/media/mojom/AudioInputStreamClient;Lorg/chromium/media/mojom/AudioInputStreamObserver;Lorg/chromium/media/mojom/AudioParameters;ILorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/media/mojom/AudioStreamFactory$CreateLoopbackStream_Response;)V

    return v6

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateSwitchableOutputStreamParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateSwitchableOutputStreamParams;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lorg/chromium/media/mojom/AudioStreamFactory;

    iget-object v8, v2, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateSwitchableOutputStreamParams;->stream:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iget-object v9, v2, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateSwitchableOutputStreamParams;->deviceSwitchReceiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iget-object v10, v2, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateSwitchableOutputStreamParams;->observer:Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;

    iget-object v11, v2, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateSwitchableOutputStreamParams;->log:Lorg/chromium/media/mojom/AudioLog;

    iget-object v12, v2, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateSwitchableOutputStreamParams;->deviceId:Ljava/lang/String;

    iget-object v13, v2, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateSwitchableOutputStreamParams;->params:Lorg/chromium/media/mojom/AudioParameters;

    iget-object v14, v2, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateSwitchableOutputStreamParams;->groupId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    new-instance v15, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateSwitchableOutputStreamResponseParamsProxyToResponder;

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v3

    invoke-direct {v15, v2, v0, v3, v4}, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateSwitchableOutputStreamResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface/range {v7 .. v15}, Lorg/chromium/media/mojom/AudioStreamFactory;->createSwitchableOutputStream(Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;Lorg/chromium/media/mojom/AudioLog;Ljava/lang/String;Lorg/chromium/media/mojom/AudioParameters;Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/media/mojom/AudioStreamFactory$CreateSwitchableOutputStream_Response;)V

    return v6

    :cond_4
    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateOutputStreamParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateOutputStreamParams;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lorg/chromium/media/mojom/AudioStreamFactory;

    iget-object v8, v2, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateOutputStreamParams;->stream:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iget-object v9, v2, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateOutputStreamParams;->observer:Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;

    iget-object v10, v2, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateOutputStreamParams;->log:Lorg/chromium/media/mojom/AudioLog;

    iget-object v11, v2, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateOutputStreamParams;->deviceId:Ljava/lang/String;

    iget-object v12, v2, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateOutputStreamParams;->params:Lorg/chromium/media/mojom/AudioParameters;

    iget-object v13, v2, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateOutputStreamParams;->groupId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    new-instance v14, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateOutputStreamResponseParamsProxyToResponder;

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v3

    invoke-direct {v14, v2, v0, v3, v4}, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateOutputStreamResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface/range {v7 .. v14}, Lorg/chromium/media/mojom/AudioStreamFactory;->createOutputStream(Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;Lorg/chromium/media/mojom/AudioLog;Ljava/lang/String;Lorg/chromium/media/mojom/AudioParameters;Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/media/mojom/AudioStreamFactory$CreateOutputStream_Response;)V

    return v6

    :cond_5
    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateInputStreamParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateInputStreamParams;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lorg/chromium/media/mojom/AudioStreamFactory;

    iget-object v8, v2, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateInputStreamParams;->stream:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iget-object v9, v2, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateInputStreamParams;->client:Lorg/chromium/media/mojom/AudioInputStreamClient;

    iget-object v10, v2, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateInputStreamParams;->observer:Lorg/chromium/media/mojom/AudioInputStreamObserver;

    iget-object v11, v2, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateInputStreamParams;->log:Lorg/chromium/media/mojom/AudioLog;

    iget-object v12, v2, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateInputStreamParams;->deviceId:Ljava/lang/String;

    iget-object v13, v2, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateInputStreamParams;->params:Lorg/chromium/media/mojom/AudioParameters;

    iget v14, v2, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateInputStreamParams;->sharedMemoryCount:I

    iget-boolean v15, v2, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateInputStreamParams;->enableAgc:Z

    iget-object v2, v2, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateInputStreamParams;->processingConfig:Lorg/chromium/media/mojom/AudioProcessingConfig;

    new-instance v4, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateInputStreamResponseParamsProxyToResponder;

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v5

    move-object/from16 v16, v2

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v1

    invoke-direct {v4, v5, v0, v1, v2}, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateInputStreamResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    move-object/from16 v17, v4

    invoke-interface/range {v7 .. v17}, Lorg/chromium/media/mojom/AudioStreamFactory;->createInputStream(Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/media/mojom/AudioInputStreamClient;Lorg/chromium/media/mojom/AudioInputStreamObserver;Lorg/chromium/media/mojom/AudioLog;Ljava/lang/String;Lorg/chromium/media/mojom/AudioParameters;IZLorg/chromium/media/mojom/AudioProcessingConfig;Lorg/chromium/media/mojom/AudioStreamFactory$CreateInputStream_Response;)V

    return v6

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v1

    sget-object v3, Lorg/chromium/media/mojom/AudioStreamFactory_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {v1, v3, v2, v0}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRun(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    move-result v0
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :goto_1
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1
.end method
