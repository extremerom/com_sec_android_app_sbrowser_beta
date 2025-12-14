.class public final synthetic Lorg/chromium/components/webauthn/cred_man/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lorg/chromium/components/webauthn/cred_man/CredManHelper$2;

.field public final synthetic b:Lorg/chromium/components/webauthn/WebauthnBrowserBridge;

.field public final synthetic c:Lorg/chromium/content_public/browser/RenderFrameHost;

.field public final synthetic d:Z

.field public final synthetic e:Z

.field public final synthetic f:Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:[B

.field public final synthetic i:[B

.field public final synthetic j:Lorg/chromium/components/webauthn/GetAssertionResponseCallback;

.field public final synthetic k:Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;

.field public final synthetic l:Z


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/components/webauthn/cred_man/CredManHelper$2;Lorg/chromium/components/webauthn/WebauthnBrowserBridge;Lorg/chromium/content_public/browser/RenderFrameHost;ZZLorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Ljava/lang/String;[B[BLorg/chromium/components/webauthn/GetAssertionResponseCallback;Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/webauthn/cred_man/a;->a:Lorg/chromium/components/webauthn/cred_man/CredManHelper$2;

    iput-object p2, p0, Lorg/chromium/components/webauthn/cred_man/a;->b:Lorg/chromium/components/webauthn/WebauthnBrowserBridge;

    iput-object p3, p0, Lorg/chromium/components/webauthn/cred_man/a;->c:Lorg/chromium/content_public/browser/RenderFrameHost;

    iput-boolean p4, p0, Lorg/chromium/components/webauthn/cred_man/a;->d:Z

    iput-boolean p5, p0, Lorg/chromium/components/webauthn/cred_man/a;->e:Z

    iput-object p6, p0, Lorg/chromium/components/webauthn/cred_man/a;->f:Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;

    iput-object p7, p0, Lorg/chromium/components/webauthn/cred_man/a;->g:Ljava/lang/String;

    iput-object p8, p0, Lorg/chromium/components/webauthn/cred_man/a;->h:[B

    iput-object p9, p0, Lorg/chromium/components/webauthn/cred_man/a;->i:[B

    iput-object p10, p0, Lorg/chromium/components/webauthn/cred_man/a;->j:Lorg/chromium/components/webauthn/GetAssertionResponseCallback;

    iput-object p11, p0, Lorg/chromium/components/webauthn/cred_man/a;->k:Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;

    iput-boolean p12, p0, Lorg/chromium/components/webauthn/cred_man/a;->l:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget-object v8, p0, Lorg/chromium/components/webauthn/cred_man/a;->i:[B

    iget-object v9, p0, Lorg/chromium/components/webauthn/cred_man/a;->j:Lorg/chromium/components/webauthn/GetAssertionResponseCallback;

    iget-object v0, p0, Lorg/chromium/components/webauthn/cred_man/a;->a:Lorg/chromium/components/webauthn/cred_man/CredManHelper$2;

    iget-object v1, p0, Lorg/chromium/components/webauthn/cred_man/a;->b:Lorg/chromium/components/webauthn/WebauthnBrowserBridge;

    iget-object v2, p0, Lorg/chromium/components/webauthn/cred_man/a;->c:Lorg/chromium/content_public/browser/RenderFrameHost;

    iget-boolean v3, p0, Lorg/chromium/components/webauthn/cred_man/a;->d:Z

    iget-boolean v4, p0, Lorg/chromium/components/webauthn/cred_man/a;->e:Z

    iget-object v5, p0, Lorg/chromium/components/webauthn/cred_man/a;->f:Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;

    iget-object v6, p0, Lorg/chromium/components/webauthn/cred_man/a;->g:Ljava/lang/String;

    iget-object v7, p0, Lorg/chromium/components/webauthn/cred_man/a;->h:[B

    iget-object v10, p0, Lorg/chromium/components/webauthn/cred_man/a;->k:Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;

    iget-boolean v11, p0, Lorg/chromium/components/webauthn/cred_man/a;->l:Z

    invoke-static/range {v0 .. v11}, Lorg/chromium/components/webauthn/cred_man/CredManHelper$2;->a(Lorg/chromium/components/webauthn/cred_man/CredManHelper$2;Lorg/chromium/components/webauthn/WebauthnBrowserBridge;Lorg/chromium/content_public/browser/RenderFrameHost;ZZLorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Ljava/lang/String;[B[BLorg/chromium/components/webauthn/GetAssertionResponseCallback;Lorg/chromium/components/webauthn/cred_man/CredManHelper$ErrorCallback;Z)V

    return-void
.end method
