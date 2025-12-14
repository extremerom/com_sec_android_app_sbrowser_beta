.class public Lcom/sec/terrace/browser/webauth/TinFido2CredentialRequestWrapper;
.super Lorg/chromium/components/webauthn/Fido2CredentialRequest;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/chromium/components/webauthn/AuthenticationContextProvider;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;-><init>(Lorg/chromium/components/webauthn/AuthenticationContextProvider;)V

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->setCredManHelperForTesting(Lorg/chromium/components/webauthn/cred_man/CredManHelper;)V

    return-void
.end method

.method public getBarrierMode()Lorg/chromium/components/webauthn/Barrier$Mode;
    .locals 1

    invoke-super {p0}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->getBarrierMode()Lorg/chromium/components/webauthn/Barrier$Mode;

    move-result-object p0

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->isCredManPasskeyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/chromium/components/webauthn/Barrier$Mode;->ONLY_FIDO_2_API:Lorg/chromium/components/webauthn/Barrier$Mode;

    if-eq p0, v0, :cond_0

    sget-object p0, Lorg/chromium/components/webauthn/Barrier$Mode;->ONLY_CRED_MAN:Lorg/chromium/components/webauthn/Barrier$Mode;

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/chromium/components/webauthn/Barrier$Mode;->ONLY_FIDO_2_API:Lorg/chromium/components/webauthn/Barrier$Mode;

    :goto_0
    return-object p0
.end method

.method public handleGetAssertionRequest(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Lorg/chromium/url/Origin;Lorg/chromium/url/Origin;Lorg/chromium/blink/mojom/PaymentOptions;Lorg/chromium/components/webauthn/GetAssertionResponseCallback;Lorg/chromium/components/webauthn/FidoErrorResponseCallback;Lorg/chromium/components/webauthn/RecordOutcomeCallback;)V
    .locals 2

    const-string v0, "201"

    const-string v1, "9959"

    invoke-static {v0, v1}, Lcom/sec/terrace/browser/TinSALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super/range {p0 .. p7}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->handleGetAssertionRequest(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Lorg/chromium/url/Origin;Lorg/chromium/url/Origin;Lorg/chromium/blink/mojom/PaymentOptions;Lorg/chromium/components/webauthn/GetAssertionResponseCallback;Lorg/chromium/components/webauthn/FidoErrorResponseCallback;Lorg/chromium/components/webauthn/RecordOutcomeCallback;)V

    return-void
.end method

.method public handleMakeCredentialRequest(Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;Landroid/os/Bundle;Lorg/chromium/url/Origin;Lorg/chromium/url/Origin;Lorg/chromium/blink/mojom/PaymentOptions;Lorg/chromium/components/webauthn/MakeCredentialResponseCallback;Lorg/chromium/components/webauthn/FidoErrorResponseCallback;Lorg/chromium/components/webauthn/RecordOutcomeCallback;)V
    .locals 11

    const-string v0, "201"

    const-string v1, "9958"

    invoke-static {v0, v1}, Lcom/sec/terrace/browser/TinSALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-super/range {v2 .. v10}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->handleMakeCredentialRequest(Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;Landroid/os/Bundle;Lorg/chromium/url/Origin;Lorg/chromium/url/Origin;Lorg/chromium/blink/mojom/PaymentOptions;Lorg/chromium/components/webauthn/MakeCredentialResponseCallback;Lorg/chromium/components/webauthn/FidoErrorResponseCallback;Lorg/chromium/components/webauthn/RecordOutcomeCallback;)V

    return-void
.end method
