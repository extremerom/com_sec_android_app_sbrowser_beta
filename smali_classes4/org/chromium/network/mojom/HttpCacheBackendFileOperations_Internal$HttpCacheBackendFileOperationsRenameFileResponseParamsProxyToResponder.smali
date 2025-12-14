.class Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsRenameFileResponseParamsProxyToResponder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/network/mojom/HttpCacheBackendFileOperations$RenameFile_Response;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpCacheBackendFileOperationsRenameFileResponseParamsProxyToResponder"
.end annotation


# instance fields
.field private final mCore:Lorg/chromium/mojo/system/Core;

.field private final mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

.field private final mRequestId:J


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsRenameFileResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    iput-object p2, p0, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsRenameFileResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    iput-wide p3, p0, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsRenameFileResponseParamsProxyToResponder;->mRequestId:J

    return-void
.end method


# virtual methods
.method public call(I)V
    .locals 6

    new-instance v0, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsRenameFileResponseParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsRenameFileResponseParams;-><init>()V

    iput p1, v0, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsRenameFileResponseParams;->error:I

    iget-object p1, p0, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsRenameFileResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x6

    iget-wide v3, p0, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsRenameFileResponseParamsProxyToResponder;->mRequestId:J

    const/4 v5, 0x5

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p1, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p1

    iget-object p0, p0, Lorg/chromium/network/mojom/HttpCacheBackendFileOperations_Internal$HttpCacheBackendFileOperationsRenameFileResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    invoke-interface {p0, p1}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method
