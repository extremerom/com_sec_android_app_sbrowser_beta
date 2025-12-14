.class Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$TerracePaymentRequestServiceGetTwaPackageNameResponseParamsProxyToResponder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService$GetTwaPackageName_Response;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TerracePaymentRequestServiceGetTwaPackageNameResponseParamsProxyToResponder"
.end annotation


# instance fields
.field private final mCore:Lorg/chromium/mojo/system/Core;

.field private final mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

.field private final mRequestId:J


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$TerracePaymentRequestServiceGetTwaPackageNameResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    iput-object p2, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$TerracePaymentRequestServiceGetTwaPackageNameResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    iput-wide p3, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$TerracePaymentRequestServiceGetTwaPackageNameResponseParamsProxyToResponder;->mRequestId:J

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;)V
    .locals 6

    new-instance v0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$TerracePaymentRequestServiceGetTwaPackageNameResponseParams;

    invoke-direct {v0}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$TerracePaymentRequestServiceGetTwaPackageNameResponseParams;-><init>()V

    iput-object p1, v0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$TerracePaymentRequestServiceGetTwaPackageNameResponseParams;->packageName:Ljava/lang/String;

    iget-object p1, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$TerracePaymentRequestServiceGetTwaPackageNameResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x2

    iget-wide v3, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$TerracePaymentRequestServiceGetTwaPackageNameResponseParamsProxyToResponder;->mRequestId:J

    const/16 v5, 0xb

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p1, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$TerracePaymentRequestServiceGetTwaPackageNameResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    invoke-interface {p0, p1}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method
