.class Lorg/chromium/components/webauthn/Fido2ApiCall$2;
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
    .locals 6

    invoke-static {p2}, Lorg/chromium/build/NullUtil;->assertNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroid/net/Uri;

    move-object v0, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lorg/chromium/components/webauthn/Fido2Api;->appendBrowserGetAssertionOptionsToParcel(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Landroid/net/Uri;[B[BLandroid/os/ResultReceiver;Landroid/os/Parcel;)V

    return-void
.end method

.method public makeCredential(Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;Landroid/net/Uri;[BLandroid/os/Bundle;Landroid/os/ResultReceiver;Landroid/os/Parcel;)V
    .locals 6

    invoke-static {p2}, Lorg/chromium/build/NullUtil;->assertNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroid/net/Uri;

    move-object v0, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lorg/chromium/components/webauthn/Fido2Api;->appendBrowserMakeCredentialOptionsToParcel(Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;Landroid/net/Uri;[BLandroid/os/Bundle;Landroid/os/ResultReceiver;Landroid/os/Parcel;)V

    return-void
.end method
