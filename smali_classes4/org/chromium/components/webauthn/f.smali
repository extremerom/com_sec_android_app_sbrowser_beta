.class public final synthetic Lorg/chromium/components/webauthn/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:J

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/components/webauthn/Fido2CredentialRequest;Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Ljava/lang/String;[BLjava/util/List;J)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/components/webauthn/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/webauthn/f;->d:Ljava/lang/Object;

    iput-object p2, p0, Lorg/chromium/components/webauthn/f;->e:Ljava/lang/Object;

    iput-object p3, p0, Lorg/chromium/components/webauthn/f;->b:Ljava/lang/String;

    iput-object p4, p0, Lorg/chromium/components/webauthn/f;->f:Ljava/lang/Object;

    iput-object p5, p0, Lorg/chromium/components/webauthn/f;->g:Ljava/lang/Object;

    iput-wide p6, p0, Lorg/chromium/components/webauthn/f;->c:J

    return-void
.end method

.method public synthetic constructor <init>(Lorg/chromium/content/browser/font/AndroidFontLookupImpl;Ljava/lang/String;Lorg/chromium/mojo/system/Core;JLjava/util/concurrent/Executor;Lorg/chromium/blink/mojom/AndroidFontLookup$MatchLocalFontByUniqueName_Response;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lorg/chromium/components/webauthn/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/webauthn/f;->d:Ljava/lang/Object;

    iput-object p2, p0, Lorg/chromium/components/webauthn/f;->b:Ljava/lang/String;

    iput-object p3, p0, Lorg/chromium/components/webauthn/f;->e:Ljava/lang/Object;

    iput-wide p4, p0, Lorg/chromium/components/webauthn/f;->c:J

    iput-object p6, p0, Lorg/chromium/components/webauthn/f;->f:Ljava/lang/Object;

    iput-object p7, p0, Lorg/chromium/components/webauthn/f;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget v0, p0, Lorg/chromium/components/webauthn/f;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lorg/chromium/components/webauthn/f;->e:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lorg/chromium/mojo/system/Core;

    iget-wide v4, p0, Lorg/chromium/components/webauthn/f;->c:J

    iget-object v0, p0, Lorg/chromium/components/webauthn/f;->d:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lorg/chromium/content/browser/font/AndroidFontLookupImpl;

    iget-object v2, p0, Lorg/chromium/components/webauthn/f;->b:Ljava/lang/String;

    iget-object v0, p0, Lorg/chromium/components/webauthn/f;->f:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lorg/chromium/components/webauthn/f;->g:Ljava/lang/Object;

    move-object v7, p0

    check-cast v7, Lorg/chromium/blink/mojom/AndroidFontLookup$MatchLocalFontByUniqueName_Response;

    invoke-static/range {v1 .. v7}, Lorg/chromium/content/browser/font/AndroidFontLookupImpl;->b(Lorg/chromium/content/browser/font/AndroidFontLookupImpl;Ljava/lang/String;Lorg/chromium/mojo/system/Core;JLjava/util/concurrent/Executor;Lorg/chromium/blink/mojom/AndroidFontLookup$MatchLocalFontByUniqueName_Response;)V

    return-void

    :pswitch_0
    iget-object v10, p0, Lorg/chromium/components/webauthn/f;->b:Ljava/lang/String;

    iget-object v0, p0, Lorg/chromium/components/webauthn/f;->f:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, [B

    iget-object v0, p0, Lorg/chromium/components/webauthn/f;->d:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Lorg/chromium/components/webauthn/Fido2CredentialRequest;

    iget-object v0, p0, Lorg/chromium/components/webauthn/f;->e:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;

    iget-object v0, p0, Lorg/chromium/components/webauthn/f;->g:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Ljava/util/List;

    iget-wide v13, p0, Lorg/chromium/components/webauthn/f;->c:J

    invoke-static/range {v8 .. v14}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->o(Lorg/chromium/components/webauthn/Fido2CredentialRequest;Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Ljava/lang/String;[BLjava/util/List;J)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
