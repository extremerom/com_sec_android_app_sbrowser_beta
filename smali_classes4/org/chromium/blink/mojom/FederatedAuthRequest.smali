.class public interface abstract Lorg/chromium/blink/mojom/FederatedAuthRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/FederatedAuthRequest$Disconnect_Response;,
        Lorg/chromium/blink/mojom/FederatedAuthRequest$PreventSilentAccess_Response;,
        Lorg/chromium/blink/mojom/FederatedAuthRequest$UnregisterIdP_Response;,
        Lorg/chromium/blink/mojom/FederatedAuthRequest$RegisterIdP_Response;,
        Lorg/chromium/blink/mojom/FederatedAuthRequest$ResolveTokenRequest_Response;,
        Lorg/chromium/blink/mojom/FederatedAuthRequest$RequestUserInfo_Response;,
        Lorg/chromium/blink/mojom/FederatedAuthRequest$RequestToken_Response;,
        Lorg/chromium/blink/mojom/FederatedAuthRequest$Proxy;
    }
.end annotation


# virtual methods
.method public abstract cancelTokenRequest()V
.end method

.method public abstract closeModalDialogView()V
.end method

.method public abstract disconnect(Lorg/chromium/blink/mojom/IdentityCredentialDisconnectOptions;Lorg/chromium/blink/mojom/FederatedAuthRequest$Disconnect_Response;)V
.end method

.method public abstract preventSilentAccess(Lorg/chromium/blink/mojom/FederatedAuthRequest$PreventSilentAccess_Response;)V
.end method

.method public abstract registerIdP(Lorg/chromium/url/mojom/Url;Lorg/chromium/blink/mojom/FederatedAuthRequest$RegisterIdP_Response;)V
.end method

.method public abstract requestToken([Lorg/chromium/blink/mojom/IdentityProviderGetParameters;ILorg/chromium/blink/mojom/FederatedAuthRequest$RequestToken_Response;)V
.end method

.method public abstract requestUserInfo(Lorg/chromium/blink/mojom/IdentityProviderConfig;Lorg/chromium/blink/mojom/FederatedAuthRequest$RequestUserInfo_Response;)V
.end method

.method public abstract resolveTokenRequest(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/blink/mojom/FederatedAuthRequest$ResolveTokenRequest_Response;)V
.end method

.method public abstract setIdpSigninStatus(Lorg/chromium/url/internal/mojom/Origin;ILorg/chromium/blink/mojom/LoginStatusOptions;)V
.end method

.method public abstract unregisterIdP(Lorg/chromium/url/mojom/Url;Lorg/chromium/blink/mojom/FederatedAuthRequest$UnregisterIdP_Response;)V
.end method
