.class Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest_Internal$TerraceBrowserPaymentRequestCloseParams;,
        Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest_Internal$TerraceBrowserPaymentRequestHasEnrolledInstrumentParams;,
        Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest_Internal$TerraceBrowserPaymentRequestCanMakePaymentParams;,
        Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest_Internal$TerraceBrowserPaymentRequestRetryParams;,
        Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest_Internal$TerraceBrowserPaymentRequestCompleteParams;,
        Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest_Internal$TerraceBrowserPaymentRequestAbortParams;,
        Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest_Internal$TerraceBrowserPaymentRequestDisconnectFromClientWithDebugMessageParams;,
        Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest_Internal$TerraceBrowserPaymentRequestOnPaymentDetailsNotUpdatedParams;,
        Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest_Internal$TerraceBrowserPaymentRequestUpdateWithParams;,
        Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest_Internal$TerraceBrowserPaymentRequestShowParams;,
        Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest_Internal$TerraceBrowserPaymentRequestInitAndValidateParams;,
        Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest_Internal$Stub;,
        Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest;",
            "Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest_Internal$1;

    invoke-direct {v0}, Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest_Internal$1;-><init>()V

    sput-object v0, Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
