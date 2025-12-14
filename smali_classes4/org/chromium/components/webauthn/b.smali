.class public final synthetic Lorg/chromium/components/webauthn/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/Authenticator$IsUserVerifyingPlatformAuthenticatorAvailable_Response;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lorg/chromium/components/webauthn/b;->a:I

    iput-object p2, p0, Lorg/chromium/components/webauthn/b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Z)V
    .locals 1

    iget v0, p0, Lorg/chromium/components/webauthn/b;->a:I

    iget-object p0, p0, Lorg/chromium/components/webauthn/b;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lorg/chromium/components/webauthn/InternalAuthenticator;

    invoke-static {p0, p1}, Lorg/chromium/components/webauthn/InternalAuthenticator;->a(Lorg/chromium/components/webauthn/InternalAuthenticator;Z)V

    return-void

    :pswitch_0
    check-cast p0, Lorg/chromium/blink/mojom/Authenticator$IsUserVerifyingPlatformAuthenticatorAvailable_Response;

    invoke-static {p0, p1}, Lorg/chromium/components/webauthn/AuthenticatorImpl;->e(Lorg/chromium/blink/mojom/Authenticator$IsUserVerifyingPlatformAuthenticatorAvailable_Response;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
