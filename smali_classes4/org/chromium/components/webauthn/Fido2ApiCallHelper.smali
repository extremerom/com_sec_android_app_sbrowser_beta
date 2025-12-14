.class public Lorg/chromium/components/webauthn/Fido2ApiCallHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static sInstance:Lorg/chromium/components/webauthn/Fido2ApiCallHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/chromium/components/webauthn/Fido2ApiCallHelper;
    .locals 1

    sget-object v0, Lorg/chromium/components/webauthn/Fido2ApiCallHelper;->sInstance:Lorg/chromium/components/webauthn/Fido2ApiCallHelper;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/components/webauthn/Fido2ApiCallHelper;

    invoke-direct {v0}, Lorg/chromium/components/webauthn/Fido2ApiCallHelper;-><init>()V

    sput-object v0, Lorg/chromium/components/webauthn/Fido2ApiCallHelper;->sInstance:Lorg/chromium/components/webauthn/Fido2ApiCallHelper;

    :cond_0
    sget-object v0, Lorg/chromium/components/webauthn/Fido2ApiCallHelper;->sInstance:Lorg/chromium/components/webauthn/Fido2ApiCallHelper;

    return-object v0
.end method


# virtual methods
.method public arePlayServicesAvailable()Z
    .locals 1

    invoke-static {}, Lorg/chromium/components/externalauth/ExternalAuthUtils;->getInstance()Lorg/chromium/components/externalauth/ExternalAuthUtils;

    move-result-object p0

    new-instance v0, Lorg/chromium/components/externalauth/UserRecoverableErrorHandler$Silent;

    invoke-direct {v0}, Lorg/chromium/components/externalauth/UserRecoverableErrorHandler$Silent;-><init>()V

    invoke-virtual {p0, v0}, Lorg/chromium/components/externalauth/ExternalAuthUtils;->canUseGooglePlayServices(Lorg/chromium/components/externalauth/UserRecoverableErrorHandler;)Z

    move-result p0

    return p0
.end method

.method public invokeFido2GetAssertion(Lorg/chromium/components/webauthn/AuthenticationContextProvider;Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Landroid/net/Uri;[BLandroid/os/ResultReceiver;LR5/e;LR5/d;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/components/webauthn/AuthenticationContextProvider;",
            "Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;",
            "Landroid/net/Uri;",
            "[B",
            "Landroid/os/ResultReceiver;",
            "LR5/e;",
            "LR5/d;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lorg/chromium/components/webauthn/WebauthnModeProvider;->getInstance()Lorg/chromium/components/webauthn/WebauthnModeProvider;

    move-result-object v0

    invoke-interface {p1}, Lorg/chromium/components/webauthn/AuthenticationContextProvider;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/components/webauthn/WebauthnModeProvider;->getFido2ApiCallParams(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/components/webauthn/Fido2ApiCall$Fido2ApiCallParams;

    move-result-object v0

    invoke-interface {p1}, Lorg/chromium/components/webauthn/AuthenticationContextProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/build/NullUtil;->assertNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assertNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/chromium/components/webauthn/Fido2ApiCall;

    invoke-interface {p1}, Lorg/chromium/components/webauthn/AuthenticationContextProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/chromium/components/webauthn/Fido2ApiCall;-><init>(Landroid/content/Context;Lorg/chromium/components/webauthn/Fido2ApiCall$Fido2ApiCallParams;)V

    invoke-virtual {v1}, Lorg/chromium/components/webauthn/Fido2ApiCall;->start()Landroid/os/Parcel;

    move-result-object v2

    new-instance v10, Lorg/chromium/components/webauthn/Fido2ApiCall$PendingIntentResult;

    iget-object v3, v0, Lorg/chromium/components/webauthn/Fido2ApiCall$Fido2ApiCallParams;->mCallbackDescriptor:Ljava/lang/String;

    invoke-direct {v10, v3}, Lorg/chromium/components/webauthn/Fido2ApiCall$PendingIntentResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, v0, Lorg/chromium/components/webauthn/Fido2ApiCall$Fido2ApiCallParams;->mMethodInterfaces:Lorg/chromium/components/webauthn/Fido2Api$Calls;

    invoke-static {v3}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lorg/chromium/components/webauthn/Fido2ApiCall$Fido2ApiCallParams;->mMethodInterfaces:Lorg/chromium/components/webauthn/Fido2Api$Calls;

    const/4 v7, 0x0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v8, p5

    move-object v9, v2

    invoke-interface/range {v3 .. v9}, Lorg/chromium/components/webauthn/Fido2Api$Calls;->getAssertion(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Landroid/net/Uri;[B[BLandroid/os/ResultReceiver;Landroid/os/Parcel;)V

    iget v0, v0, Lorg/chromium/components/webauthn/Fido2ApiCall$Fido2ApiCallParams;->mSignMethodId:I

    const/4 v3, 0x2

    invoke-virtual {v1, v0, v3, v2, v10}, Lorg/chromium/components/webauthn/Fido2ApiCall;->run(IILandroid/os/Parcel;Lorg/chromium/components/webauthn/Fido2ApiCall$Callback;)LR5/h;

    move-result-object v0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, LR5/h;->e(LR5/e;)LR5/p;

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, LR5/h;->c(LR5/d;)LR5/p;

    return-void
.end method

.method public invokeFido2GetCredentials(Lorg/chromium/components/webauthn/AuthenticationContextProvider;Ljava/lang/String;LR5/e;LR5/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/components/webauthn/AuthenticationContextProvider;",
            "Ljava/lang/String;",
            "LR5/e;",
            "LR5/d;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lorg/chromium/components/webauthn/WebauthnModeProvider;->getInstance()Lorg/chromium/components/webauthn/WebauthnModeProvider;

    move-result-object p0

    invoke-interface {p1}, Lorg/chromium/components/webauthn/AuthenticationContextProvider;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/components/webauthn/WebauthnModeProvider;->getFido2ApiCallParams(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/components/webauthn/Fido2ApiCall$Fido2ApiCallParams;

    move-result-object p0

    invoke-interface {p1}, Lorg/chromium/components/webauthn/AuthenticationContextProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assertNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lorg/chromium/build/NullUtil;->assertNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/chromium/components/webauthn/Fido2ApiCall;

    invoke-interface {p1}, Lorg/chromium/components/webauthn/AuthenticationContextProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lorg/chromium/components/webauthn/Fido2ApiCall;-><init>(Landroid/content/Context;Lorg/chromium/components/webauthn/Fido2ApiCall$Fido2ApiCallParams;)V

    invoke-virtual {v0}, Lorg/chromium/components/webauthn/Fido2ApiCall;->start()Landroid/os/Parcel;

    move-result-object p0

    new-instance p1, Lorg/chromium/components/webauthn/Fido2ApiCall$WebauthnCredentialDetailsListResult;

    invoke-direct {p1}, Lorg/chromium/components/webauthn/Fido2ApiCall$WebauthnCredentialDetailsListResult;-><init>()V

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 p2, 0x1536

    const/4 v1, 0x4

    invoke-virtual {v0, p2, v1, p0, p1}, Lorg/chromium/components/webauthn/Fido2ApiCall;->run(IILandroid/os/Parcel;Lorg/chromium/components/webauthn/Fido2ApiCall$Callback;)LR5/h;

    move-result-object p0

    invoke-virtual {p0, p3}, LR5/h;->e(LR5/e;)LR5/p;

    invoke-virtual {p0, p4}, LR5/h;->c(LR5/d;)LR5/p;

    return-void
.end method

.method public invokeFido2MakeCredential(Lorg/chromium/components/webauthn/AuthenticationContextProvider;Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;Landroid/net/Uri;[BLandroid/os/Bundle;Landroid/os/ResultReceiver;LR5/e;LR5/d;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/components/webauthn/AuthenticationContextProvider;",
            "Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;",
            "Landroid/net/Uri;",
            "[B",
            "Landroid/os/Bundle;",
            "Landroid/os/ResultReceiver;",
            "LR5/e;",
            "LR5/d;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lorg/chromium/components/webauthn/WebauthnModeProvider;->getInstance()Lorg/chromium/components/webauthn/WebauthnModeProvider;

    move-result-object v0

    invoke-interface {p1}, Lorg/chromium/components/webauthn/AuthenticationContextProvider;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/components/webauthn/WebauthnModeProvider;->getFido2ApiCallParams(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/components/webauthn/Fido2ApiCall$Fido2ApiCallParams;

    move-result-object v0

    invoke-interface {p1}, Lorg/chromium/components/webauthn/AuthenticationContextProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/build/NullUtil;->assertNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assertNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/chromium/components/webauthn/Fido2ApiCall;

    invoke-interface {p1}, Lorg/chromium/components/webauthn/AuthenticationContextProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/chromium/components/webauthn/Fido2ApiCall;-><init>(Landroid/content/Context;Lorg/chromium/components/webauthn/Fido2ApiCall$Fido2ApiCallParams;)V

    invoke-virtual {v1}, Lorg/chromium/components/webauthn/Fido2ApiCall;->start()Landroid/os/Parcel;

    move-result-object v2

    new-instance v10, Lorg/chromium/components/webauthn/Fido2ApiCall$PendingIntentResult;

    iget-object v3, v0, Lorg/chromium/components/webauthn/Fido2ApiCall$Fido2ApiCallParams;->mCallbackDescriptor:Ljava/lang/String;

    invoke-direct {v10, v3}, Lorg/chromium/components/webauthn/Fido2ApiCall$PendingIntentResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, v0, Lorg/chromium/components/webauthn/Fido2ApiCall$Fido2ApiCallParams;->mMethodInterfaces:Lorg/chromium/components/webauthn/Fido2Api$Calls;

    invoke-static {v3}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lorg/chromium/components/webauthn/Fido2ApiCall$Fido2ApiCallParams;->mMethodInterfaces:Lorg/chromium/components/webauthn/Fido2Api$Calls;

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object v9, v2

    invoke-interface/range {v3 .. v9}, Lorg/chromium/components/webauthn/Fido2Api$Calls;->makeCredential(Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;Landroid/net/Uri;[BLandroid/os/Bundle;Landroid/os/ResultReceiver;Landroid/os/Parcel;)V

    iget v0, v0, Lorg/chromium/components/webauthn/Fido2ApiCall$Fido2ApiCallParams;->mRegisterMethodId:I

    invoke-virtual {v1, v0, v11, v2, v10}, Lorg/chromium/components/webauthn/Fido2ApiCall;->run(IILandroid/os/Parcel;Lorg/chromium/components/webauthn/Fido2ApiCall$Callback;)LR5/h;

    move-result-object v0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, LR5/h;->e(LR5/e;)LR5/p;

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, LR5/h;->c(LR5/d;)LR5/p;

    return-void
.end method

.method public invokePasskeyCacheGetCredentials(Lorg/chromium/components/webauthn/AuthenticationContextProvider;Ljava/lang/String;LR5/e;LR5/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/components/webauthn/AuthenticationContextProvider;",
            "Ljava/lang/String;",
            "LR5/e;",
            "LR5/d;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Lorg/chromium/components/webauthn/AuthenticationContextProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/build/NullUtil;->assertNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lorg/chromium/components/webauthn/Fido2ApiCall;

    invoke-interface {p1}, Lorg/chromium/components/webauthn/AuthenticationContextProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lorg/chromium/components/webauthn/Fido2ApiCall;->PERSISTENT_API:Lorg/chromium/components/webauthn/Fido2ApiCall$Fido2ApiCallParams;

    invoke-direct {p0, p1, v0}, Lorg/chromium/components/webauthn/Fido2ApiCall;-><init>(Landroid/content/Context;Lorg/chromium/components/webauthn/Fido2ApiCall$Fido2ApiCallParams;)V

    invoke-virtual {p0}, Lorg/chromium/components/webauthn/Fido2ApiCall;->start()Landroid/os/Parcel;

    move-result-object p1

    new-instance v0, Lorg/chromium/components/webauthn/Fido2ApiCall$WebauthnCredentialDetailsListResult;

    invoke-direct {v0}, Lorg/chromium/components/webauthn/Fido2ApiCall$WebauthnCredentialDetailsListResult;-><init>()V

    const-string v1, "com.google.android.gms.auth.api.fido.IListPasskeysForRpCallback"

    invoke-virtual {v0, v1}, Lorg/chromium/components/webauthn/Fido2ApiCall$WebauthnCredentialDetailsListResult;->setInterface(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 p2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p2, v1, p1, v0}, Lorg/chromium/components/webauthn/Fido2ApiCall;->run(IILandroid/os/Parcel;Lorg/chromium/components/webauthn/Fido2ApiCall$Callback;)LR5/h;

    move-result-object p0

    invoke-virtual {p0, p3}, LR5/h;->e(LR5/e;)LR5/p;

    invoke-virtual {p0, p4}, LR5/h;->c(LR5/d;)LR5/p;

    return-void
.end method
