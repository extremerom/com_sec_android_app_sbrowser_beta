.class final Lorg/chromium/gpu/mojom/ClientGmbInterface_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/gpu/mojom/ClientGmbInterface$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/gpu/mojom/ClientGmbInterface_Internal;
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
.method public copyGpuMemoryBuffer(Lorg/chromium/gfx/mojom/GpuMemoryBufferHandle;Lorg/chromium/mojo_base/mojom/UnsafeSharedMemoryRegion;Lorg/chromium/gpu/mojom/ClientGmbInterface$CopyGpuMemoryBuffer_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/gpu/mojom/ClientGmbInterface_Internal$ClientGmbInterfaceCopyGpuMemoryBufferParams;

    invoke-direct {v0}, Lorg/chromium/gpu/mojom/ClientGmbInterface_Internal$ClientGmbInterfaceCopyGpuMemoryBufferParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/gpu/mojom/ClientGmbInterface_Internal$ClientGmbInterfaceCopyGpuMemoryBufferParams;->bufferHandle:Lorg/chromium/gfx/mojom/GpuMemoryBufferHandle;

    iput-object p2, v0, Lorg/chromium/gpu/mojom/ClientGmbInterface_Internal$ClientGmbInterfaceCopyGpuMemoryBufferParams;->sharedMemory:Lorg/chromium/mojo_base/mojom/UnsafeSharedMemoryRegion;

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

    new-instance p2, Lorg/chromium/gpu/mojom/ClientGmbInterface_Internal$ClientGmbInterfaceCopyGpuMemoryBufferResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/gpu/mojom/ClientGmbInterface_Internal$ClientGmbInterfaceCopyGpuMemoryBufferResponseParamsForwardToCallback;-><init>(Lorg/chromium/gpu/mojom/ClientGmbInterface$CopyGpuMemoryBuffer_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public createGpuMemoryBuffer(Lorg/chromium/gfx/mojom/GpuMemoryBufferId;Lorg/chromium/gfx/mojom/Size;IILorg/chromium/gpu/mojom/SurfaceHandle;Lorg/chromium/gpu/mojom/ClientGmbInterface$CreateGpuMemoryBuffer_Response;)V
    .locals 2

    new-instance v0, Lorg/chromium/gpu/mojom/ClientGmbInterface_Internal$ClientGmbInterfaceCreateGpuMemoryBufferParams;

    invoke-direct {v0}, Lorg/chromium/gpu/mojom/ClientGmbInterface_Internal$ClientGmbInterfaceCreateGpuMemoryBufferParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/gpu/mojom/ClientGmbInterface_Internal$ClientGmbInterfaceCreateGpuMemoryBufferParams;->id:Lorg/chromium/gfx/mojom/GpuMemoryBufferId;

    iput-object p2, v0, Lorg/chromium/gpu/mojom/ClientGmbInterface_Internal$ClientGmbInterfaceCreateGpuMemoryBufferParams;->size:Lorg/chromium/gfx/mojom/Size;

    iput p3, v0, Lorg/chromium/gpu/mojom/ClientGmbInterface_Internal$ClientGmbInterfaceCreateGpuMemoryBufferParams;->format:I

    iput p4, v0, Lorg/chromium/gpu/mojom/ClientGmbInterface_Internal$ClientGmbInterfaceCreateGpuMemoryBufferParams;->usage:I

    iput-object p5, v0, Lorg/chromium/gpu/mojom/ClientGmbInterface_Internal$ClientGmbInterfaceCreateGpuMemoryBufferParams;->surfaceHandle:Lorg/chromium/gpu/mojom/SurfaceHandle;

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

    const/4 v1, 0x0

    invoke-direct {p2, v1, p3, p4, p5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/gpu/mojom/ClientGmbInterface_Internal$ClientGmbInterfaceCreateGpuMemoryBufferResponseParamsForwardToCallback;

    invoke-direct {p2, p6}, Lorg/chromium/gpu/mojom/ClientGmbInterface_Internal$ClientGmbInterfaceCreateGpuMemoryBufferResponseParamsForwardToCallback;-><init>(Lorg/chromium/gpu/mojom/ClientGmbInterface$CreateGpuMemoryBuffer_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public destroyGpuMemoryBuffer(Lorg/chromium/gfx/mojom/GpuMemoryBufferId;)V
    .locals 3

    new-instance v0, Lorg/chromium/gpu/mojom/ClientGmbInterface_Internal$ClientGmbInterfaceDestroyGpuMemoryBufferParams;

    invoke-direct {v0}, Lorg/chromium/gpu/mojom/ClientGmbInterface_Internal$ClientGmbInterfaceDestroyGpuMemoryBufferParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/gpu/mojom/ClientGmbInterface_Internal$ClientGmbInterfaceDestroyGpuMemoryBufferParams;->id:Lorg/chromium/gfx/mojom/GpuMemoryBufferId;

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

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method
