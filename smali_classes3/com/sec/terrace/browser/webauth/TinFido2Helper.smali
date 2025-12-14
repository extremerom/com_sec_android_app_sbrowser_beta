.class public final Lcom/sec/terrace/browser/webauth/TinFido2Helper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/webauth/TinFido2Helper$AttestationObjectParts;,
        Lcom/sec/terrace/browser/webauth/TinFido2Helper$Natives;
    }
.end annotation


# direct methods
.method private static adjustTimeout(Lorg/chromium/mojo_base/mojom/TimeDelta;)D
    .locals 5

    const-wide v0, 0x4082c00000000000L    # 600.0

    if-nez p0, :cond_0

    return-wide v0

    :cond_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v3, p0, Lorg/chromium/mojo_base/mojom/TimeDelta;->microseconds:J

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    long-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method private static convertAttachment(I)Lcom/google/android/gms/fido/fido2/api/common/Attachment;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/google/android/gms/fido/fido2/api/common/Attachment;->CROSS_PLATFORM:Lcom/google/android/gms/fido/fido2/api/common/Attachment;

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/android/gms/fido/fido2/api/common/Attachment;->PLATFORM:Lcom/google/android/gms/fido/fido2/api/common/Attachment;

    return-object p0
.end method

.method private static convertAttestationPreference(I)Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    sget-object p0, Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;->NONE:Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;->NONE:Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;->DIRECT:Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;

    return-object p0

    :cond_2
    sget-object p0, Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;->INDIRECT:Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;

    return-object p0

    :cond_3
    sget-object p0, Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;->NONE:Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;

    return-object p0
.end method

.method private static convertCredentialDescriptor([Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialDescriptor;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    new-instance v4, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialDescriptor;

    sget-object v5, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialType;->PUBLIC_KEY:Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialType;

    invoke-virtual {v5}, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialType;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;->id:[B

    iget-object v3, v3, Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;->transports:[I

    invoke-static {v3}, Lcom/sec/terrace/browser/webauth/TinFido2Helper;->toTransportList([I)Ljava/util/List;

    move-result-object v3

    invoke-direct {v4, v5, v6, v3}, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialDescriptor;-><init>(Ljava/lang/String;[BLjava/util/List;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static convertError(Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;Ljava/lang/String;)I
    .locals 2

    sget-object v0, Lcom/sec/terrace/browser/webauth/TinFido2Helper$1;->$SwitchMap$com$google$android$gms$fido$fido2$api$common$ErrorCode:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x4

    const/4 v1, 0x2

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    if-eqz p1, :cond_0

    const-string p0, "One of the excluded credentials exists on the local device"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    :pswitch_2
    if-eqz p1, :cond_1

    const-string p0, "Low level error 0x6a80"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    :goto_0
    const/16 p0, 0x1e

    return p0

    :pswitch_3
    if-eqz p1, :cond_2

    const-string p0, "The device is not secured with any screen lock"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x8

    return p0

    :cond_2
    return v0

    :pswitch_4
    const/16 p0, 0xb

    return p0

    :pswitch_5
    if-eqz p1, :cond_4

    const-string p0, "Authentication request must have non-empty allowList"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "Request doesn\'t have a valid list of allowed credentials."

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    const/16 p0, 0xa

    return p0

    :cond_4
    :pswitch_6
    return v1

    :pswitch_7
    const/4 p0, 0x3

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static convertSelectionCriteria(Lorg/chromium/blink/mojom/AuthenticatorSelectionCriteria;)Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorSelectionCriteria;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    iget p0, p0, Lorg/chromium/blink/mojom/AuthenticatorSelectionCriteria;->authenticatorAttachment:I

    invoke-static {p0}, Lcom/sec/terrace/browser/webauth/TinFido2Helper;->convertAttachment(I)Lcom/google/android/gms/fido/fido2/api/common/Attachment;

    move-result-object p0

    new-instance v1, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorSelectionCriteria;

    if-nez p0, :cond_0

    move-object p0, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/fido/fido2/api/common/Attachment;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-direct {v1, v0, p0, v0, v0}, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorSelectionCriteria;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method private static convertTransport(I)Lcom/google/android/gms/fido/common/Transport;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    sget-object p0, Lcom/google/android/gms/fido/common/Transport;->USB:Lcom/google/android/gms/fido/common/Transport;

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/android/gms/fido/common/Transport;->INTERNAL:Lcom/google/android/gms/fido/common/Transport;

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/android/gms/fido/common/Transport;->BLUETOOTH_LOW_ENERGY:Lcom/google/android/gms/fido/common/Transport;

    return-object p0

    :cond_2
    sget-object p0, Lcom/google/android/gms/fido/common/Transport;->NFC:Lcom/google/android/gms/fido/common/Transport;

    return-object p0

    :cond_3
    sget-object p0, Lcom/google/android/gms/fido/common/Transport;->USB:Lcom/google/android/gms/fido/common/Transport;

    return-object p0
.end method

.method private static encodeId([B)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xb

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getUserVerificationMethods(Lcom/google/android/gms/fido/fido2/api/common/UvmEntries;)[Lorg/chromium/blink/mojom/UvmEntry;
    .locals 4

    iget-object p0, p0, Lcom/google/android/gms/fido/fido2/api/common/UvmEntries;->a:Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/chromium/blink/mojom/UvmEntry;

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    new-instance v2, Lorg/chromium/blink/mojom/UvmEntry;

    invoke-direct {v2}, Lorg/chromium/blink/mojom/UvmEntry;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/fido/fido2/api/common/UvmEntry;

    iget v3, v3, Lcom/google/android/gms/fido/fido2/api/common/UvmEntry;->a:I

    iput v3, v2, Lorg/chromium/blink/mojom/UvmEntry;->userVerificationMethod:I

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/fido/fido2/api/common/UvmEntry;

    iget-short v3, v3, Lcom/google/android/gms/fido/fido2/api/common/UvmEntry;->b:S

    iput-short v3, v2, Lorg/chromium/blink/mojom/UvmEntry;->keyProtectionType:S

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/fido/fido2/api/common/UvmEntry;

    iget-short v3, v3, Lcom/google/android/gms/fido/fido2/api/common/UvmEntry;->c:S

    iput-short v3, v2, Lorg/chromium/blink/mojom/UvmEntry;->matcherProtectionType:S

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static toGetAssertionOptions(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;)Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->allowCredentials:[Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;

    invoke-static {v1}, Lcom/sec/terrace/browser/webauth/TinFido2Helper;->convertCredentialDescriptor([Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;)Ljava/util/List;

    move-result-object v6

    iget-object v1, v0, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->extensions:Lorg/chromium/blink/mojom/AuthenticationExtensionsClientInputs;

    iget-object v1, v1, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientInputs;->appid:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/google/android/gms/fido/fido2/api/common/FidoAppIdExtension;

    invoke-direct {v2, v1}, Lcom/google/android/gms/fido/fido2/api/common/FidoAppIdExtension;-><init>(Ljava/lang/String;)V

    :goto_0
    move-object v8, v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :goto_1
    new-instance v10, Lcom/google/android/gms/fido/fido2/api/common/UserVerificationMethodExtension;

    iget-object v1, v0, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->extensions:Lorg/chromium/blink/mojom/AuthenticationExtensionsClientInputs;

    iget-boolean v1, v1, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientInputs;->userVerificationMethods:Z

    invoke-direct {v10, v1}, Lcom/google/android/gms/fido/fido2/api/common/UserVerificationMethodExtension;-><init>(Z)V

    new-instance v1, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v7, v1

    invoke-direct/range {v7 .. v16}, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;-><init>(Lcom/google/android/gms/fido/fido2/api/common/FidoAppIdExtension;Lcom/google/android/gms/fido/fido2/api/common/zzp;Lcom/google/android/gms/fido/fido2/api/common/UserVerificationMethodExtension;Lcom/google/android/gms/fido/fido2/api/common/zzw;Lcom/google/android/gms/fido/fido2/api/common/zzy;Lcom/google/android/gms/fido/fido2/api/common/zzaa;Lcom/google/android/gms/fido/fido2/api/common/zzr;Lcom/google/android/gms/fido/fido2/api/common/zzad;Lcom/google/android/gms/fido/fido2/api/common/GoogleThirdPartyPaymentExtension;)V

    iget-object v3, v0, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->challenge:[B

    invoke-static {v3}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->timeout:Lorg/chromium/mojo_base/mojom/TimeDelta;

    invoke-static {v2}, Lcom/sec/terrace/browser/webauth/TinFido2Helper;->adjustTimeout(Lorg/chromium/mojo_base/mojom/TimeDelta;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iget-object v5, v0, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->relyingPartyId:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v0

    move-object v10, v1

    invoke-direct/range {v2 .. v11}, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;-><init>([BLjava/lang/Double;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;Ljava/lang/String;Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;Ljava/lang/Long;)V

    return-object v0
.end method

.method public static toGetAssertionResponse(Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAssertionResponse;Z)Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;-><init>()V

    new-instance v1, Lorg/chromium/blink/mojom/CommonCredentialInfo;

    invoke-direct {v1}, Lorg/chromium/blink/mojom/CommonCredentialInfo;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAssertionResponse;->d:[B

    iput-object v2, v0, Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;->signature:[B

    new-instance v2, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientOutputs;

    invoke-direct {v2}, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientOutputs;-><init>()V

    iput-object v2, v0, Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;->extensions:Lorg/chromium/blink/mojom/AuthenticationExtensionsClientOutputs;

    iput-boolean p1, v2, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientOutputs;->echoAppidExtension:Z

    iget-object p1, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAssertionResponse;->c:[B

    iput-object p1, v1, Lorg/chromium/blink/mojom/CommonCredentialInfo;->authenticatorData:[B

    iget-object p1, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAssertionResponse;->a:[B

    invoke-static {p1}, Lcom/sec/terrace/browser/webauth/TinFido2Helper;->encodeId([B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/blink/mojom/CommonCredentialInfo;->id:Ljava/lang/String;

    iput-object p1, v1, Lorg/chromium/blink/mojom/CommonCredentialInfo;->rawId:[B

    iget-object p0, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAssertionResponse;->b:[B

    iput-object p0, v1, Lorg/chromium/blink/mojom/CommonCredentialInfo;->clientDataJson:[B

    iput-object v1, v0, Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;->info:Lorg/chromium/blink/mojom/CommonCredentialInfo;

    return-object v0
.end method

.method public static toGetAssertionResponse(Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredential;Z)Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredential;->b()Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorResponse;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAssertionResponse;

    invoke-static {v0, p1}, Lcom/sec/terrace/browser/webauth/TinFido2Helper;->toGetAssertionResponse(Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAssertionResponse;Z)Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredential;->g:Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensionsClientOutputs;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensionsClientOutputs;->a:Lcom/google/android/gms/fido/fido2/api/common/UvmEntries;

    if-eqz p0, :cond_0

    iget-object v0, p1, Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;->extensions:Lorg/chromium/blink/mojom/AuthenticationExtensionsClientOutputs;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientOutputs;->echoUserVerificationMethods:Z

    invoke-static {p0}, Lcom/sec/terrace/browser/webauth/TinFido2Helper;->getUserVerificationMethods(Lcom/google/android/gms/fido/fido2/api/common/UvmEntries;)[Lorg/chromium/blink/mojom/UvmEntry;

    move-result-object p0

    iput-object p0, v0, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientOutputs;->userVerificationMethods:[Lorg/chromium/blink/mojom/UvmEntry;

    :cond_0
    return-object p1
.end method

.method public static toMakeCredentialOptions(Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;)Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialCreationOptions;
    .locals 12

    new-instance v1, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRpEntity;

    iget-object v0, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->relyingParty:Lorg/chromium/blink/mojom/PublicKeyCredentialRpEntity;

    iget-object v2, v0, Lorg/chromium/blink/mojom/PublicKeyCredentialRpEntity;->id:Ljava/lang/String;

    iget-object v0, v0, Lorg/chromium/blink/mojom/PublicKeyCredentialRpEntity;->name:Ljava/lang/String;

    const-string v3, ""

    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRpEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialUserEntity;

    iget-object v0, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->user:Lorg/chromium/blink/mojom/PublicKeyCredentialUserEntity;

    iget-object v4, v0, Lorg/chromium/blink/mojom/PublicKeyCredentialUserEntity;->id:[B

    iget-object v5, v0, Lorg/chromium/blink/mojom/PublicKeyCredentialUserEntity;->name:Ljava/lang/String;

    iget-object v0, v0, Lorg/chromium/blink/mojom/PublicKeyCredentialUserEntity;->displayName:Ljava/lang/String;

    invoke-direct {v2, v5, v3, v0, v4}, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialUserEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->publicKeyParameters:[Lorg/chromium/blink/mojom/PublicKeyCredentialParameters;

    array-length v3, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v0, v5

    iget v7, v6, Lorg/chromium/blink/mojom/PublicKeyCredentialParameters;->algorithmIdentifier:I

    const/4 v8, -0x7

    if-ne v7, v8, :cond_0

    iget v7, v6, Lorg/chromium/blink/mojom/PublicKeyCredentialParameters;->type:I

    if-nez v7, :cond_0

    new-instance v7, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialParameters;

    sget-object v8, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialType;->PUBLIC_KEY:Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialType;

    invoke-virtual {v8}, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialType;->toString()Ljava/lang/String;

    move-result-object v8

    iget v6, v6, Lorg/chromium/blink/mojom/PublicKeyCredentialParameters;->algorithmIdentifier:I

    invoke-direct {v7, v8, v6}, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialParameters;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->publicKeyParameters:[Lorg/chromium/blink/mojom/PublicKeyCredentialParameters;

    array-length v0, v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const-string p0, "Fido2Helper"

    const-string v0, "None of the requested parameters are supported."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/security/NoSuchAlgorithmException;

    invoke-direct {p0}, Ljava/security/NoSuchAlgorithmException;-><init>()V

    throw p0

    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->excludeCredentials:[Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;

    invoke-static {v0}, Lcom/sec/terrace/browser/webauth/TinFido2Helper;->convertCredentialDescriptor([Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;)Ljava/util/List;

    move-result-object v6

    iget-object v0, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->authenticatorSelection:Lorg/chromium/blink/mojom/AuthenticatorSelectionCriteria;

    invoke-static {v0}, Lcom/sec/terrace/browser/webauth/TinFido2Helper;->convertSelectionCriteria(Lorg/chromium/blink/mojom/AuthenticatorSelectionCriteria;)Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorSelectionCriteria;

    move-result-object v7

    iget v0, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->attestation:I

    invoke-static {v0}, Lcom/sec/terrace/browser/webauth/TinFido2Helper;->convertAttestationPreference(I)Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;

    move-result-object v0

    iget-object v3, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->challenge:[B

    invoke-static {v3}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->timeout:Lorg/chromium/mojo_base/mojom/TimeDelta;

    invoke-static {p0}, Lcom/sec/terrace/browser/webauth/TinFido2Helper;->adjustTimeout(Lorg/chromium/mojo_base/mojom/TimeDelta;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    new-instance p0, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialCreationOptions;

    if-nez v0, :cond_4

    const/4 v0, 0x0

    :goto_2
    move-object v10, v0

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :goto_3
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialCreationOptions;-><init>(Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRpEntity;Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialUserEntity;[BLjava/util/ArrayList;Ljava/lang/Double;Ljava/util/List;Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorSelectionCriteria;Ljava/lang/Integer;Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;Ljava/lang/String;Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;)V

    return-object p0
.end method

.method public static toMakeCredentialResponse(Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAttestationResponse;)Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;
    .locals 5

    new-instance v0, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;-><init>()V

    new-instance v1, Lorg/chromium/blink/mojom/CommonCredentialInfo;

    invoke-direct {v1}, Lorg/chromium/blink/mojom/CommonCredentialInfo;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAttestationResponse;->c:[B

    iput-object v2, v0, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->attestationObject:[B

    new-instance v2, Lcom/sec/terrace/browser/webauth/TinFido2Helper$AttestationObjectParts;

    invoke-direct {v2}, Lcom/sec/terrace/browser/webauth/TinFido2Helper$AttestationObjectParts;-><init>()V

    invoke-static {}, Lcom/sec/terrace/browser/webauth/TinFido2HelperJni;->get()Lcom/sec/terrace/browser/webauth/TinFido2Helper$Natives;

    move-result-object v3

    iget-object v4, v0, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->attestationObject:[B

    invoke-interface {v3, v4, v2}, Lcom/sec/terrace/browser/webauth/TinFido2Helper$Natives;->parseAttestationObject([BLcom/sec/terrace/browser/webauth/TinFido2Helper$AttestationObjectParts;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v2, Lcom/sec/terrace/browser/webauth/TinFido2Helper$AttestationObjectParts;->coseAlgorithm:I

    iput v3, v0, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->publicKeyAlgo:I

    iget-object v3, v2, Lcom/sec/terrace/browser/webauth/TinFido2Helper$AttestationObjectParts;->authenticatorData:[B

    iput-object v3, v1, Lorg/chromium/blink/mojom/CommonCredentialInfo;->authenticatorData:[B

    iget-object v2, v2, Lcom/sec/terrace/browser/webauth/TinFido2Helper$AttestationObjectParts;->spki:[B

    iput-object v2, v0, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->publicKeyDer:[B

    const/4 v2, 0x0

    new-array v2, v2, [I

    iput-object v2, v0, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->transports:[I

    iget-object v2, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAttestationResponse;->a:[B

    invoke-static {v2}, Lcom/sec/terrace/browser/webauth/TinFido2Helper;->encodeId([B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/blink/mojom/CommonCredentialInfo;->id:Ljava/lang/String;

    iput-object v2, v1, Lorg/chromium/blink/mojom/CommonCredentialInfo;->rawId:[B

    iget-object p0, p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAttestationResponse;->b:[B

    iput-object p0, v1, Lorg/chromium/blink/mojom/CommonCredentialInfo;->clientDataJson:[B

    iput-object v1, v0, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->info:Lorg/chromium/blink/mojom/CommonCredentialInfo;

    return-object v0

    :cond_0
    new-instance p0, Ljava/security/NoSuchAlgorithmException;

    invoke-direct {p0}, Ljava/security/NoSuchAlgorithmException;-><init>()V

    throw p0
.end method

.method public static toMakeCredentialResponse(Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredential;)Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredential;->b()Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorResponse;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAttestationResponse;

    invoke-static {p0}, Lcom/sec/terrace/browser/webauth/TinFido2Helper;->toMakeCredentialResponse(Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAttestationResponse;)Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;

    move-result-object p0

    return-object p0
.end method

.method private static toTransportList([I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/fido/common/Transport;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p0, v2

    invoke-static {v3}, Lcom/sec/terrace/browser/webauth/TinFido2Helper;->convertTransport(I)Lcom/google/android/gms/fido/common/Transport;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
