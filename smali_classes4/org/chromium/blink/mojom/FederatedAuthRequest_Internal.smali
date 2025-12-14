.class Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestDisconnectResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestDisconnectResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestDisconnectResponseParams;,
        Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestDisconnectParams;,
        Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestPreventSilentAccessResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestPreventSilentAccessResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestPreventSilentAccessResponseParams;,
        Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestPreventSilentAccessParams;,
        Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestCloseModalDialogViewParams;,
        Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestUnregisterIdPResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestUnregisterIdPResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestUnregisterIdPResponseParams;,
        Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestUnregisterIdPParams;,
        Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestRegisterIdPResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestRegisterIdPResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestRegisterIdPResponseParams;,
        Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestRegisterIdPParams;,
        Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestSetIdpSigninStatusParams;,
        Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestResolveTokenRequestResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestResolveTokenRequestResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestResolveTokenRequestResponseParams;,
        Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestResolveTokenRequestParams;,
        Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestCancelTokenRequestParams;,
        Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestRequestUserInfoResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestRequestUserInfoResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestRequestUserInfoResponseParams;,
        Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestRequestUserInfoParams;,
        Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestRequestTokenResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestRequestTokenResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestRequestTokenResponseParams;,
        Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$FederatedAuthRequestRequestTokenParams;,
        Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$Stub;,
        Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/FederatedAuthRequest;",
            "Lorg/chromium/blink/mojom/FederatedAuthRequest$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/FederatedAuthRequest_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
