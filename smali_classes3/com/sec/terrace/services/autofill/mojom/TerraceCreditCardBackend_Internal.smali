.class Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendGetCreditCardStatusTableResponseParamsProxyToResponder;,
        Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendGetCreditCardStatusTableResponseParamsForwardToCallback;,
        Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendGetCreditCardStatusTableResponseParams;,
        Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendGetCreditCardStatusTableParams;,
        Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendSetCreditCardStatusParams;,
        Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendClearCreditCardsParams;,
        Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendGetCreditCardsResponseParamsProxyToResponder;,
        Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendGetCreditCardsResponseParamsForwardToCallback;,
        Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendGetCreditCardsResponseParams;,
        Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendGetCreditCardsParams;,
        Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendRemoveCreditCardParams;,
        Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendUpdateCreditCardParams;,
        Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$TerraceCreditCardBackendAddCreditCardParams;,
        Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$Stub;,
        Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend;",
            "Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$1;

    invoke-direct {v0}, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal$1;-><init>()V

    sput-object v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
