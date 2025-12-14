.class Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$TerracePaymentRequestServiceCloseParams;,
        Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$TerracePaymentRequestServiceGetTwaPackageNameResponseParamsProxyToResponder;,
        Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$TerracePaymentRequestServiceGetTwaPackageNameResponseParamsForwardToCallback;,
        Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$TerracePaymentRequestServiceGetTwaPackageNameResponseParams;,
        Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$TerracePaymentRequestServiceGetTwaPackageNameParams;,
        Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$TerracePaymentRequestServiceWarnNoFaviconParams;,
        Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$TerracePaymentRequestServiceOnHasEnrolledInstrumentParams;,
        Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$TerracePaymentRequestServiceOnCanMakePaymentParams;,
        Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$TerracePaymentRequestServiceOnAbortParams;,
        Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$TerracePaymentRequestServiceOnCompleteParams;,
        Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$TerracePaymentRequestServiceOnErrorParams;,
        Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$TerracePaymentRequestServiceOnPaymentResponseParams;,
        Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$TerracePaymentRequestServiceOnPayerDetailChangeParams;,
        Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$TerracePaymentRequestServiceOnShippingOptionChangeParams;,
        Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$TerracePaymentRequestServiceOnShippingAddressChangeParams;,
        Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$TerracePaymentRequestServiceOnPaymentMethodChangeParams;,
        Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$Stub;,
        Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;",
            "Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$1;

    invoke-direct {v0}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal$1;-><init>()V

    sput-object v0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
