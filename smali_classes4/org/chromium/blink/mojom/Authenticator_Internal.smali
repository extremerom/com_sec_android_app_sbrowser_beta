.class Lorg/chromium/blink/mojom/Authenticator_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/Authenticator_Internal$AuthenticatorCancelParams;,
        Lorg/chromium/blink/mojom/Authenticator_Internal$AuthenticatorGetClientCapabilitiesResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/Authenticator_Internal$AuthenticatorGetClientCapabilitiesResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/Authenticator_Internal$AuthenticatorGetClientCapabilitiesResponseParams;,
        Lorg/chromium/blink/mojom/Authenticator_Internal$AuthenticatorGetClientCapabilitiesParams;,
        Lorg/chromium/blink/mojom/Authenticator_Internal$AuthenticatorReportResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/Authenticator_Internal$AuthenticatorReportResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/Authenticator_Internal$AuthenticatorReportResponseParams;,
        Lorg/chromium/blink/mojom/Authenticator_Internal$AuthenticatorReportParams;,
        Lorg/chromium/blink/mojom/Authenticator_Internal$AuthenticatorIsConditionalMediationAvailableResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/Authenticator_Internal$AuthenticatorIsConditionalMediationAvailableResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/Authenticator_Internal$AuthenticatorIsConditionalMediationAvailableResponseParams;,
        Lorg/chromium/blink/mojom/Authenticator_Internal$AuthenticatorIsConditionalMediationAvailableParams;,
        Lorg/chromium/blink/mojom/Authenticator_Internal$AuthenticatorIsUserVerifyingPlatformAuthenticatorAvailableResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/Authenticator_Internal$AuthenticatorIsUserVerifyingPlatformAuthenticatorAvailableResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/Authenticator_Internal$AuthenticatorIsUserVerifyingPlatformAuthenticatorAvailableResponseParams;,
        Lorg/chromium/blink/mojom/Authenticator_Internal$AuthenticatorIsUserVerifyingPlatformAuthenticatorAvailableParams;,
        Lorg/chromium/blink/mojom/Authenticator_Internal$AuthenticatorGetCredentialResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/Authenticator_Internal$AuthenticatorGetCredentialResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/Authenticator_Internal$AuthenticatorGetCredentialResponseParams;,
        Lorg/chromium/blink/mojom/Authenticator_Internal$AuthenticatorGetCredentialParams;,
        Lorg/chromium/blink/mojom/Authenticator_Internal$AuthenticatorMakeCredentialResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/Authenticator_Internal$AuthenticatorMakeCredentialResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/Authenticator_Internal$AuthenticatorMakeCredentialResponseParams;,
        Lorg/chromium/blink/mojom/Authenticator_Internal$AuthenticatorMakeCredentialParams;,
        Lorg/chromium/blink/mojom/Authenticator_Internal$Stub;,
        Lorg/chromium/blink/mojom/Authenticator_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/Authenticator;",
            "Lorg/chromium/blink/mojom/Authenticator$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/Authenticator_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/Authenticator_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/Authenticator_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
