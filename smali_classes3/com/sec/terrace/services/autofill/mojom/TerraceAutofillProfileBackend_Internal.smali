.class Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend_Internal$TerraceAutofillProfileBackendClearAutofillProfilesParams;,
        Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend_Internal$TerraceAutofillProfileBackendGetAutofillProfilesResponseParamsProxyToResponder;,
        Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend_Internal$TerraceAutofillProfileBackendGetAutofillProfilesResponseParamsForwardToCallback;,
        Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend_Internal$TerraceAutofillProfileBackendGetAutofillProfilesResponseParams;,
        Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend_Internal$TerraceAutofillProfileBackendGetAutofillProfilesParams;,
        Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend_Internal$TerraceAutofillProfileBackendRemoveAutofillProfileResponseParamsProxyToResponder;,
        Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend_Internal$TerraceAutofillProfileBackendRemoveAutofillProfileResponseParamsForwardToCallback;,
        Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend_Internal$TerraceAutofillProfileBackendRemoveAutofillProfileResponseParams;,
        Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend_Internal$TerraceAutofillProfileBackendRemoveAutofillProfileParams;,
        Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend_Internal$TerraceAutofillProfileBackendUpdateAutofillProfileResponseParamsProxyToResponder;,
        Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend_Internal$TerraceAutofillProfileBackendUpdateAutofillProfileResponseParamsForwardToCallback;,
        Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend_Internal$TerraceAutofillProfileBackendUpdateAutofillProfileResponseParams;,
        Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend_Internal$TerraceAutofillProfileBackendUpdateAutofillProfileParams;,
        Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend_Internal$TerraceAutofillProfileBackendAddAutofillProfileResponseParamsProxyToResponder;,
        Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend_Internal$TerraceAutofillProfileBackendAddAutofillProfileResponseParamsForwardToCallback;,
        Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend_Internal$TerraceAutofillProfileBackendAddAutofillProfileResponseParams;,
        Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend_Internal$TerraceAutofillProfileBackendAddAutofillProfileParams;,
        Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend_Internal$Stub;,
        Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend;",
            "Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend_Internal$1;

    invoke-direct {v0}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend_Internal$1;-><init>()V

    sput-object v0, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillProfileBackend_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
