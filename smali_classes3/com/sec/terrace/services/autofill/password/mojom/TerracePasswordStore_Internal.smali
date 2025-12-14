.class Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore_Internal$TerracePasswordStoreFillMatchingLoginsResponseParamsProxyToResponder;,
        Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore_Internal$TerracePasswordStoreFillMatchingLoginsResponseParamsForwardToCallback;,
        Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore_Internal$TerracePasswordStoreFillMatchingLoginsResponseParams;,
        Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore_Internal$TerracePasswordStoreFillMatchingLoginsParams;,
        Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore_Internal$TerracePasswordStoreRemoveLoginResponseParamsProxyToResponder;,
        Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore_Internal$TerracePasswordStoreRemoveLoginResponseParamsForwardToCallback;,
        Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore_Internal$TerracePasswordStoreRemoveLoginResponseParams;,
        Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore_Internal$TerracePasswordStoreRemoveLoginParams;,
        Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore_Internal$TerracePasswordStoreUpdateLoginResponseParamsProxyToResponder;,
        Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore_Internal$TerracePasswordStoreUpdateLoginResponseParamsForwardToCallback;,
        Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore_Internal$TerracePasswordStoreUpdateLoginResponseParams;,
        Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore_Internal$TerracePasswordStoreUpdateLoginParams;,
        Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore_Internal$TerracePasswordStoreAddLoginResponseParamsProxyToResponder;,
        Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore_Internal$TerracePasswordStoreAddLoginResponseParamsForwardToCallback;,
        Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore_Internal$TerracePasswordStoreAddLoginResponseParams;,
        Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore_Internal$TerracePasswordStoreAddLoginParams;,
        Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore_Internal$TerracePasswordStoreInitParams;,
        Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore_Internal$Stub;,
        Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore;",
            "Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore_Internal$1;

    invoke-direct {v0}, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore_Internal$1;-><init>()V

    sput-object v0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
