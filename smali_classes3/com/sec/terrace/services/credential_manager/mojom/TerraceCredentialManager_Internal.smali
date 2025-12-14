.class Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager_Internal$TerraceCredentialManagerDecryptResponseParamsProxyToResponder;,
        Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager_Internal$TerraceCredentialManagerDecryptResponseParamsForwardToCallback;,
        Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager_Internal$TerraceCredentialManagerDecryptResponseParams;,
        Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager_Internal$TerraceCredentialManagerDecryptParams;,
        Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager_Internal$TerraceCredentialManagerAuthenticateForAccountChooserResponseParamsProxyToResponder;,
        Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager_Internal$TerraceCredentialManagerAuthenticateForAccountChooserResponseParamsForwardToCallback;,
        Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager_Internal$TerraceCredentialManagerAuthenticateForAccountChooserResponseParams;,
        Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager_Internal$TerraceCredentialManagerAuthenticateForAccountChooserParams;,
        Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager_Internal$TerraceCredentialManagerAuthenticateForAutoSigninResponseParamsProxyToResponder;,
        Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager_Internal$TerraceCredentialManagerAuthenticateForAutoSigninResponseParamsForwardToCallback;,
        Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager_Internal$TerraceCredentialManagerAuthenticateForAutoSigninResponseParams;,
        Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager_Internal$TerraceCredentialManagerAuthenticateForAutoSigninParams;,
        Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager_Internal$Stub;,
        Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager;",
            "Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager_Internal$1;

    invoke-direct {v0}, Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager_Internal$1;-><init>()V

    sput-object v0, Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
