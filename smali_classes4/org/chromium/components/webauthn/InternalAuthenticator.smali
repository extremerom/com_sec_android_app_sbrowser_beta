.class public Lorg/chromium/components/webauthn/InternalAuthenticator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/webauthn/InternalAuthenticator$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mAuthenticator:Lorg/chromium/components/webauthn/AuthenticatorImpl;

.field private mNativeInternalAuthenticatorAndroid:J


# direct methods
.method private constructor <init>(JLandroid/content/Context;Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/components/webauthn/FidoIntentSender;Lorg/chromium/content_public/browser/RenderFrameHost;Lorg/chromium/url/Origin;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/chromium/components/webauthn/InternalAuthenticator;->mNativeInternalAuthenticatorAndroid:J

    invoke-static {}, Lorg/chromium/components/webauthn/WebauthnModeProvider;->getInstance()Lorg/chromium/components/webauthn/WebauthnModeProvider;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lorg/chromium/components/webauthn/WebauthnModeProvider;->setGlobalWebauthnMode(I)V

    new-instance p1, Lorg/chromium/components/webauthn/AuthenticatorImpl;

    const/4 v4, 0x0

    move-object v0, p1

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/chromium/components/webauthn/AuthenticatorImpl;-><init>(Landroid/content/Context;Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/components/webauthn/FidoIntentSender;Lorg/chromium/components/webauthn/CreateConfirmationUiDelegate;Lorg/chromium/content_public/browser/RenderFrameHost;Lorg/chromium/url/Origin;)V

    iput-object p1, p0, Lorg/chromium/components/webauthn/InternalAuthenticator;->mAuthenticator:Lorg/chromium/components/webauthn/AuthenticatorImpl;

    return-void
.end method

.method public static synthetic a(Lorg/chromium/components/webauthn/InternalAuthenticator;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/components/webauthn/InternalAuthenticator;->lambda$isUserVerifyingPlatformAuthenticatorAvailable$2(Z)V

    return-void
.end method

.method public static synthetic b(Lorg/chromium/components/webauthn/InternalAuthenticator;Lorg/chromium/blink/mojom/GetCredentialResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/components/webauthn/InternalAuthenticator;->lambda$getAssertion$1(Lorg/chromium/blink/mojom/GetCredentialResponse;)V

    return-void
.end method

.method public static synthetic c(Lorg/chromium/components/webauthn/InternalAuthenticator;ILorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;Lorg/chromium/blink/mojom/WebAuthnDomExceptionDetails;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/components/webauthn/InternalAuthenticator;->lambda$makeCredential$0(ILorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;Lorg/chromium/blink/mojom/WebAuthnDomExceptionDetails;)V

    return-void
.end method

.method public static create(JLorg/chromium/content_public/browser/RenderFrameHost;)Lorg/chromium/components/webauthn/InternalAuthenticator;
    .locals 9
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {p2}, Lorg/chromium/content_public/browser/WebContentsStatics;->fromRenderFrameHost(Lorg/chromium/content_public/browser/RenderFrameHost;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4}, Lorg/chromium/content_public/browser/WebContents;->getTopLevelNativeWindow()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/content/Context;

    invoke-interface {v4}, Lorg/chromium/content_public/browser/WebContents;->getMainFrame()Lorg/chromium/content_public/browser/RenderFrameHost;

    move-result-object v1

    invoke-interface {v1}, Lorg/chromium/content_public/browser/RenderFrameHost;->getLastCommittedOrigin()Lorg/chromium/url/Origin;

    move-result-object v7

    new-instance v8, Lorg/chromium/components/webauthn/InternalAuthenticator;

    new-instance v5, Lorg/chromium/components/webauthn/AuthenticatorImpl$WindowIntentSender;

    invoke-direct {v5, v0}, Lorg/chromium/components/webauthn/AuthenticatorImpl$WindowIntentSender;-><init>(Lorg/chromium/ui/base/WindowAndroid;)V

    move-object v0, v8

    move-wide v1, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lorg/chromium/components/webauthn/InternalAuthenticator;-><init>(JLandroid/content/Context;Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/components/webauthn/FidoIntentSender;Lorg/chromium/content_public/browser/RenderFrameHost;Lorg/chromium/url/Origin;)V

    return-object v8
.end method

.method public static synthetic d(Lorg/chromium/components/webauthn/InternalAuthenticator;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/components/webauthn/InternalAuthenticator;->lambda$getMatchingCredentialIds$3(Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$getAssertion$1(Lorg/chromium/blink/mojom/GetCredentialResponse;)V
    .locals 4

    iget-wide v0, p0, Lorg/chromium/components/webauthn/InternalAuthenticator;->mNativeInternalAuthenticatorAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/chromium/components/webauthn/InternalAuthenticatorJni;->get()Lorg/chromium/components/webauthn/InternalAuthenticator$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/components/webauthn/InternalAuthenticator;->mNativeInternalAuthenticatorAndroid:J

    invoke-virtual {p1}, Lorg/chromium/blink/mojom/GetCredentialResponse;->getGetAssertionResponse()Lorg/chromium/blink/mojom/GetAssertionResponse;

    move-result-object p0

    iget p0, p0, Lorg/chromium/blink/mojom/GetAssertionResponse;->status:I

    invoke-virtual {p1}, Lorg/chromium/blink/mojom/GetCredentialResponse;->getGetAssertionResponse()Lorg/chromium/blink/mojom/GetAssertionResponse;

    move-result-object v3

    iget-object v3, v3, Lorg/chromium/blink/mojom/GetAssertionResponse;->credential:Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;

    if-nez v3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/chromium/blink/mojom/GetCredentialResponse;->getGetAssertionResponse()Lorg/chromium/blink/mojom/GetAssertionResponse;

    move-result-object p1

    iget-object p1, p1, Lorg/chromium/blink/mojom/GetAssertionResponse;->credential:Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Struct;->serialize()Ljava/nio/ByteBuffer;

    move-result-object p1

    :goto_0
    invoke-interface {v0, v1, v2, p0, p1}, Lorg/chromium/components/webauthn/InternalAuthenticator$Natives;->invokeGetAssertionResponse(JILjava/nio/ByteBuffer;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$getMatchingCredentialIds$3(Ljava/util/List;)V
    .locals 4

    iget-wide v0, p0, Lorg/chromium/components/webauthn/InternalAuthenticator;->mNativeInternalAuthenticatorAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/components/webauthn/InternalAuthenticatorJni;->get()Lorg/chromium/components/webauthn/InternalAuthenticator$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/components/webauthn/InternalAuthenticator;->mNativeInternalAuthenticatorAndroid:J

    const/4 p0, 0x0

    new-array p0, p0, [[B

    invoke-interface {p1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[B

    invoke-interface {v0, v1, v2, p0}, Lorg/chromium/components/webauthn/InternalAuthenticator$Natives;->invokeGetMatchingCredentialIdsResponse(J[[B)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$isUserVerifyingPlatformAuthenticatorAvailable$2(Z)V
    .locals 4

    iget-wide v0, p0, Lorg/chromium/components/webauthn/InternalAuthenticator;->mNativeInternalAuthenticatorAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/components/webauthn/InternalAuthenticatorJni;->get()Lorg/chromium/components/webauthn/InternalAuthenticator$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/components/webauthn/InternalAuthenticator;->mNativeInternalAuthenticatorAndroid:J

    invoke-interface {v0, v1, v2, p1}, Lorg/chromium/components/webauthn/InternalAuthenticator$Natives;->invokeIsUserVerifyingPlatformAuthenticatorAvailableResponse(JZ)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$makeCredential$0(ILorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;Lorg/chromium/blink/mojom/WebAuthnDomExceptionDetails;)V
    .locals 4

    iget-wide v0, p0, Lorg/chromium/components/webauthn/InternalAuthenticator;->mNativeInternalAuthenticatorAndroid:J

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-eqz p3, :cond_1

    invoke-static {}, Lorg/chromium/components/webauthn/InternalAuthenticatorJni;->get()Lorg/chromium/components/webauthn/InternalAuthenticator$Natives;

    move-result-object p3

    iget-wide v0, p0, Lorg/chromium/components/webauthn/InternalAuthenticator;->mNativeInternalAuthenticatorAndroid:J

    if-nez p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lorg/chromium/mojo/bindings/Struct;->serialize()Ljava/nio/ByteBuffer;

    move-result-object p0

    :goto_0
    invoke-interface {p3, v0, v1, p1, p0}, Lorg/chromium/components/webauthn/InternalAuthenticator$Natives;->invokeMakeCredentialResponse(JILjava/nio/ByteBuffer;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/webauthn/InternalAuthenticator;->mAuthenticator:Lorg/chromium/components/webauthn/AuthenticatorImpl;

    invoke-virtual {p0}, Lorg/chromium/components/webauthn/AuthenticatorImpl;->cancel()V

    return-void
.end method

.method public clearNativePtr()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/components/webauthn/InternalAuthenticator;->mNativeInternalAuthenticatorAndroid:J

    return-void
.end method

.method public getAssertion(Ljava/nio/ByteBuffer;)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/components/webauthn/InternalAuthenticator;->mAuthenticator:Lorg/chromium/components/webauthn/AuthenticatorImpl;

    invoke-static {p1}, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->deserialize(Ljava/nio/ByteBuffer;)Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;

    move-result-object p1

    new-instance v1, Lorg/chromium/components/webauthn/l;

    invoke-direct {v1, p0}, Lorg/chromium/components/webauthn/l;-><init>(Lorg/chromium/components/webauthn/InternalAuthenticator;)V

    invoke-virtual {v0, p1, v1}, Lorg/chromium/components/webauthn/AuthenticatorImpl;->getCredential(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Lorg/chromium/blink/mojom/Authenticator$GetCredential_Response;)V

    return-void
.end method

.method public getMatchingCredentialIds(Ljava/lang/String;[[BZ)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/components/webauthn/InternalAuthenticator;->mAuthenticator:Lorg/chromium/components/webauthn/AuthenticatorImpl;

    new-instance v1, Lorg/chromium/components/webauthn/l;

    invoke-direct {v1, p0}, Lorg/chromium/components/webauthn/l;-><init>(Lorg/chromium/components/webauthn/InternalAuthenticator;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/chromium/components/webauthn/AuthenticatorImpl;->getMatchingCredentialIds(Ljava/lang/String;[[BZLorg/chromium/components/webauthn/GetMatchingCredentialIdsResponseCallback;)V

    return-void
.end method

.method public isGetMatchingCredentialIdsSupported()Z
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/components/webauthn/GmsCoreUtils;->isGetMatchingCredentialIdsSupported()Z

    move-result p0

    return p0
.end method

.method public isUserVerifyingPlatformAuthenticatorAvailable()V
    .locals 3
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/components/webauthn/InternalAuthenticator;->mAuthenticator:Lorg/chromium/components/webauthn/AuthenticatorImpl;

    new-instance v1, Lorg/chromium/components/webauthn/b;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lorg/chromium/components/webauthn/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/chromium/components/webauthn/AuthenticatorImpl;->isUserVerifyingPlatformAuthenticatorAvailable(Lorg/chromium/blink/mojom/Authenticator$IsUserVerifyingPlatformAuthenticatorAvailable_Response;)V

    return-void
.end method

.method public makeCredential(Ljava/nio/ByteBuffer;)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/components/webauthn/InternalAuthenticator;->mAuthenticator:Lorg/chromium/components/webauthn/AuthenticatorImpl;

    invoke-static {p1}, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->deserialize(Ljava/nio/ByteBuffer;)Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;

    move-result-object p1

    new-instance v1, Lorg/chromium/components/webauthn/l;

    invoke-direct {v1, p0}, Lorg/chromium/components/webauthn/l;-><init>(Lorg/chromium/components/webauthn/InternalAuthenticator;)V

    invoke-virtual {v0, p1, v1}, Lorg/chromium/components/webauthn/AuthenticatorImpl;->makeCredential(Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;Lorg/chromium/blink/mojom/Authenticator$MakeCredential_Response;)V

    return-void
.end method

.method public setEffectiveOrigin(Lorg/chromium/url/Origin;)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/webauthn/InternalAuthenticator;->mAuthenticator:Lorg/chromium/components/webauthn/AuthenticatorImpl;

    invoke-virtual {p0, p1}, Lorg/chromium/components/webauthn/AuthenticatorImpl;->setEffectiveOrigin(Lorg/chromium/url/Origin;)V

    return-void
.end method

.method public setPaymentOptions(Ljava/nio/ByteBuffer;)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/webauthn/InternalAuthenticator;->mAuthenticator:Lorg/chromium/components/webauthn/AuthenticatorImpl;

    invoke-static {p1}, Lorg/chromium/blink/mojom/PaymentOptions;->deserialize(Ljava/nio/ByteBuffer;)Lorg/chromium/blink/mojom/PaymentOptions;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/chromium/components/webauthn/AuthenticatorImpl;->setPaymentOptions(Lorg/chromium/blink/mojom/PaymentOptions;)V

    return-void
.end method
