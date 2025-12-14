.class Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$TerraceNativePasswordStoreGetAllLoginsResponseParamsProxyToResponder;,
        Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$TerraceNativePasswordStoreGetAllLoginsResponseParamsForwardToCallback;,
        Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$TerraceNativePasswordStoreGetAllLoginsResponseParams;,
        Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$TerraceNativePasswordStoreGetAllLoginsParams;,
        Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$TerraceNativePasswordStoreGetAutofillableLoginsResponseParamsProxyToResponder;,
        Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$TerraceNativePasswordStoreGetAutofillableLoginsResponseParamsForwardToCallback;,
        Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$TerraceNativePasswordStoreGetAutofillableLoginsResponseParams;,
        Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$TerraceNativePasswordStoreGetAutofillableLoginsParams;,
        Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$TerraceNativePasswordStoreFillMatchingLoginsResponseParamsProxyToResponder;,
        Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$TerraceNativePasswordStoreFillMatchingLoginsResponseParamsForwardToCallback;,
        Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$TerraceNativePasswordStoreFillMatchingLoginsResponseParams;,
        Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$TerraceNativePasswordStoreFillMatchingLoginsParams;,
        Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$TerraceNativePasswordStoreRemoveLoginResponseParamsProxyToResponder;,
        Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$TerraceNativePasswordStoreRemoveLoginResponseParamsForwardToCallback;,
        Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$TerraceNativePasswordStoreRemoveLoginResponseParams;,
        Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$TerraceNativePasswordStoreRemoveLoginParams;,
        Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$TerraceNativePasswordStoreUpdateLoginResponseParamsProxyToResponder;,
        Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$TerraceNativePasswordStoreUpdateLoginResponseParamsForwardToCallback;,
        Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$TerraceNativePasswordStoreUpdateLoginResponseParams;,
        Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$TerraceNativePasswordStoreUpdateLoginParams;,
        Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$TerraceNativePasswordStoreAddLoginResponseParamsProxyToResponder;,
        Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$TerraceNativePasswordStoreAddLoginResponseParamsForwardToCallback;,
        Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$TerraceNativePasswordStoreAddLoginResponseParams;,
        Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$TerraceNativePasswordStoreAddLoginParams;,
        Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$Stub;,
        Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore;",
            "Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$1;

    invoke-direct {v0}, Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal$1;-><init>()V

    sput-object v0, Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
