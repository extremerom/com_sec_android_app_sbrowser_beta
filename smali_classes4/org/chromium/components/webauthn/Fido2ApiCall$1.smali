.class Lorg/chromium/components/webauthn/Fido2ApiCall$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/webauthn/Fido2Api$Calls;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/webauthn/Fido2ApiCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAssertion(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Landroid/net/Uri;[B[BLandroid/os/ResultReceiver;Landroid/os/Parcel;)V
    .locals 0

    invoke-static {p1, p3, p5, p6}, Lorg/chromium/components/webauthn/Fido2Api;->appendGetAssertionOptionsToParcel(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;[BLandroid/os/ResultReceiver;Landroid/os/Parcel;)V

    return-void
.end method

.method public makeCredential(Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;Landroid/net/Uri;[BLandroid/os/Bundle;Landroid/os/ResultReceiver;Landroid/os/Parcel;)V
    .locals 0

    invoke-static {p1, p5, p6}, Lorg/chromium/components/webauthn/Fido2Api;->appendMakeCredentialOptionsToParcel(Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;Landroid/os/ResultReceiver;Landroid/os/Parcel;)V

    return-void
.end method
