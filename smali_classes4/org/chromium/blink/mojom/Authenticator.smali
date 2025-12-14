.class public interface abstract Lorg/chromium/blink/mojom/Authenticator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/Authenticator$GetClientCapabilities_Response;,
        Lorg/chromium/blink/mojom/Authenticator$Report_Response;,
        Lorg/chromium/blink/mojom/Authenticator$IsConditionalMediationAvailable_Response;,
        Lorg/chromium/blink/mojom/Authenticator$IsUserVerifyingPlatformAuthenticatorAvailable_Response;,
        Lorg/chromium/blink/mojom/Authenticator$GetCredential_Response;,
        Lorg/chromium/blink/mojom/Authenticator$MakeCredential_Response;,
        Lorg/chromium/blink/mojom/Authenticator$Proxy;
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

    sget-object v0, Lorg/chromium/blink/mojom/Authenticator_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/blink/mojom/Authenticator;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract getClientCapabilities(Lorg/chromium/blink/mojom/Authenticator$GetClientCapabilities_Response;)V
.end method

.method public abstract getCredential(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Lorg/chromium/blink/mojom/Authenticator$GetCredential_Response;)V
.end method

.method public abstract isConditionalMediationAvailable(Lorg/chromium/blink/mojom/Authenticator$IsConditionalMediationAvailable_Response;)V
.end method

.method public abstract isUserVerifyingPlatformAuthenticatorAvailable(Lorg/chromium/blink/mojom/Authenticator$IsUserVerifyingPlatformAuthenticatorAvailable_Response;)V
.end method

.method public abstract makeCredential(Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;Lorg/chromium/blink/mojom/Authenticator$MakeCredential_Response;)V
.end method

.method public abstract report(Lorg/chromium/blink/mojom/PublicKeyCredentialReportOptions;Lorg/chromium/blink/mojom/Authenticator$Report_Response;)V
.end method
