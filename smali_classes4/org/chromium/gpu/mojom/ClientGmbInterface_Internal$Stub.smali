.class final Lorg/chromium/gpu/mojom/ClientGmbInterface_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/gpu/mojom/ClientGmbInterface_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub<",
        "Lorg/chromium/gpu/mojom/ClientGmbInterface;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/gpu/mojom/ClientGmbInterface;)V
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

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v1

    const/4 v2, -0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/gpu/mojom/ClientGmbInterface_Internal$ClientGmbInterfaceDestroyGpuMemoryBufferParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/gpu/mojom/ClientGmbInterface_Internal$ClientGmbInterfaceDestroyGpuMemoryBufferParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/gpu/mojom/ClientGmbInterface;

    iget-object p1, p1, Lorg/chromium/gpu/mojom/ClientGmbInterface_Internal$ClientGmbInterfaceDestroyGpuMemoryBufferParams;->id:Lorg/chromium/gfx/mojom/GpuMemoryBufferId;

    invoke-interface {p0, p1}, Lorg/chromium/gpu/mojom/ClientGmbInterface;->destroyGpuMemoryBuffer(Lorg/chromium/gfx/mojom/GpuMemoryBufferId;)V

    return v2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    sget-object p0, Lorg/chromium/gpu/mojom/ClientGmbInterface_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_4

    if-eqz v2, :cond_3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/gpu/mojom/ClientGmbInterface_Internal$ClientGmbInterfaceCopyGpuMemoryBufferParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/gpu/mojom/ClientGmbInterface_Internal$ClientGmbInterfaceCopyGpuMemoryBufferParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/gpu/mojom/ClientGmbInterface;

    iget-object v4, p1, Lorg/chromium/gpu/mojom/ClientGmbInterface_Internal$ClientGmbInterfaceCopyGpuMemoryBufferParams;->bufferHandle:Lorg/chromium/gfx/mojom/GpuMemoryBufferHandle;

    iget-object p1, p1, Lorg/chromium/gpu/mojom/ClientGmbInterface_Internal$ClientGmbInterfaceCopyGpuMemoryBufferParams;->sharedMemory:Lorg/chromium/mojo_base/mojom/UnsafeSharedMemoryRegion;

    new-instance v5, Lorg/chromium/gpu/mojom/ClientGmbInterface_Internal$ClientGmbInterfaceCopyGpuMemoryBufferResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v6

    invoke-direct {v5, p0, p2, v6, v7}, Lorg/chromium/gpu/mojom/ClientGmbInterface_Internal$ClientGmbInterfaceCopyGpuMemoryBufferResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, p1, v5}, Lorg/chromium/gpu/mojom/ClientGmbInterface;->copyGpuMemoryBuffer(Lorg/chromium/gfx/mojom/GpuMemoryBufferHandle;Lorg/chromium/mojo_base/mojom/UnsafeSharedMemoryRegion;Lorg/chromium/gpu/mojom/ClientGmbInterface$CopyGpuMemoryBuffer_Response;)V

    return v3

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/gpu/mojom/ClientGmbInterface_Internal$ClientGmbInterfaceCreateGpuMemoryBufferParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/gpu/mojom/ClientGmbInterface_Internal$ClientGmbInterfaceCreateGpuMemoryBufferParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lorg/chromium/gpu/mojom/ClientGmbInterface;

    iget-object v5, p1, Lorg/chromium/gpu/mojom/ClientGmbInterface_Internal$ClientGmbInterfaceCreateGpuMemoryBufferParams;->id:Lorg/chromium/gfx/mojom/GpuMemoryBufferId;

    iget-object v6, p1, Lorg/chromium/gpu/mojom/ClientGmbInterface_Internal$ClientGmbInterfaceCreateGpuMemoryBufferParams;->size:Lorg/chromium/gfx/mojom/Size;

    iget v7, p1, Lorg/chromium/gpu/mojom/ClientGmbInterface_Internal$ClientGmbInterfaceCreateGpuMemoryBufferParams;->format:I

    iget v8, p1, Lorg/chromium/gpu/mojom/ClientGmbInterface_Internal$ClientGmbInterfaceCreateGpuMemoryBufferParams;->usage:I

    iget-object v9, p1, Lorg/chromium/gpu/mojom/ClientGmbInterface_Internal$ClientGmbInterfaceCreateGpuMemoryBufferParams;->surfaceHandle:Lorg/chromium/gpu/mojom/SurfaceHandle;

    new-instance v10, Lorg/chromium/gpu/mojom/ClientGmbInterface_Internal$ClientGmbInterfaceCreateGpuMemoryBufferResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v1

    invoke-direct {v10, p0, p2, v1, v2}, Lorg/chromium/gpu/mojom/ClientGmbInterface_Internal$ClientGmbInterfaceCreateGpuMemoryBufferResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface/range {v4 .. v10}, Lorg/chromium/gpu/mojom/ClientGmbInterface;->createGpuMemoryBuffer(Lorg/chromium/gfx/mojom/GpuMemoryBufferId;Lorg/chromium/gfx/mojom/Size;IILorg/chromium/gpu/mojom/SurfaceHandle;Lorg/chromium/gpu/mojom/ClientGmbInterface$CreateGpuMemoryBuffer_Response;)V

    return v3

    :cond_4
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    sget-object v1, Lorg/chromium/gpu/mojom/ClientGmbInterface_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
