.class Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerReadMetadataResponseParamsProxyToResponder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/FileSystemManager$ReadMetadata_Response;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/FileSystemManager_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileSystemManagerReadMetadataResponseParamsProxyToResponder"
.end annotation


# instance fields
.field private final mCore:Lorg/chromium/mojo/system/Core;

.field private final mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

.field private final mRequestId:J


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerReadMetadataResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    iput-object p2, p0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerReadMetadataResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    iput-wide p3, p0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerReadMetadataResponseParamsProxyToResponder;->mRequestId:J

    return-void
.end method


# virtual methods
.method public call(Lorg/chromium/mojo_base/mojom/FileInfo;I)V
    .locals 5

    new-instance v0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerReadMetadataResponseParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerReadMetadataResponseParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerReadMetadataResponseParams;->fileInfo:Lorg/chromium/mojo_base/mojom/FileInfo;

    iput p2, v0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerReadMetadataResponseParams;->errorCode:I

    iget-object p1, p0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerReadMetadataResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x6

    iget-wide v2, p0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerReadMetadataResponseParamsProxyToResponder;->mRequestId:J

    const/4 v4, 0x5

    invoke-direct {p2, v4, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p1, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p1

    iget-object p0, p0, Lorg/chromium/blink/mojom/FileSystemManager_Internal$FileSystemManagerReadMetadataResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    invoke-interface {p0, p1}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method
