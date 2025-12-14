.class Lcom/sec/terrace/services/authentication/mojom/TerraceAuthenticationService_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/services/authentication/mojom/TerraceAuthenticationService_Internal$TerraceAuthenticationServiceIsBiometricsSupportedResponseParamsProxyToResponder;,
        Lcom/sec/terrace/services/authentication/mojom/TerraceAuthenticationService_Internal$TerraceAuthenticationServiceIsBiometricsSupportedResponseParamsForwardToCallback;,
        Lcom/sec/terrace/services/authentication/mojom/TerraceAuthenticationService_Internal$TerraceAuthenticationServiceIsBiometricsSupportedResponseParams;,
        Lcom/sec/terrace/services/authentication/mojom/TerraceAuthenticationService_Internal$TerraceAuthenticationServiceIsBiometricsSupportedParams;,
        Lcom/sec/terrace/services/authentication/mojom/TerraceAuthenticationService_Internal$Stub;,
        Lcom/sec/terrace/services/authentication/mojom/TerraceAuthenticationService_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lcom/sec/terrace/services/authentication/mojom/TerraceAuthenticationService;",
            "Lcom/sec/terrace/services/authentication/mojom/TerraceAuthenticationService$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/terrace/services/authentication/mojom/TerraceAuthenticationService_Internal$1;

    invoke-direct {v0}, Lcom/sec/terrace/services/authentication/mojom/TerraceAuthenticationService_Internal$1;-><init>()V

    sput-object v0, Lcom/sec/terrace/services/authentication/mojom/TerraceAuthenticationService_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
