.class public final Lorg/chromium/components/webauthn/Fido2Api;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/webauthn/Fido2Api$Extensions;,
        Lorg/chromium/components/webauthn/Fido2Api$AttestationObjectParts;,
        Lorg/chromium/components/webauthn/Fido2Api$Natives;,
        Lorg/chromium/components/webauthn/Fido2Api$Calls;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final CONSTRAINT_ERR:I = 0x1d

.field public static final CREDENTIAL_EXTRA:Ljava/lang/String; = "FIDO2_CREDENTIAL_EXTRA"

.field public static final DATA_ERR:I = 0x1e

.field public static final ENCODING_ERR:I = 0x1b

.field public static final INVALID_STATE_ERR:I = 0xb

.field public static final NOT_ALLOWED_ERR:I = 0x23

.field public static final NOT_SUPPORTED_ERR:I = 0x9

.field public static final SECURITY_ERR:I = 0x12

.field public static final TIMEOUT_ERR:I = 0x17

.field public static final UNKNOWN_ERR:I = 0x1c

.field private static final sParcelUsesLengthPrefixes:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/chromium/components/webauthn/Fido2Api;->doesParcelUseLengthPrefix()Z

    move-result v0

    sput-boolean v0, Lorg/chromium/components/webauthn/Fido2Api;->sParcelUsesLengthPrefixes:Z

    return-void
.end method

.method private static addLengthToParcelPosition(ILandroid/os/Parcel;)I
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    add-int/2addr v0, p0

    if-ltz p0, :cond_0

    if-lt v0, p0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result p0

    if-gt v0, p0, :cond_0

    return v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

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

.method public static appendBrowserGetAssertionOptionsToParcel(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;Landroid/net/Uri;[B[BLandroid/os/ResultReceiver;Landroid/os/Parcel;)V
    .locals 2

    const/16 v0, 0x4f45

    invoke-static {v0, p5}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, p5}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result v1

    invoke-static {p0, p3, p4, p5}, Lorg/chromium/components/webauthn/Fido2Api;->appendGetAssertionOptionsToParcel(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;[BLandroid/os/ResultReceiver;Landroid/os/Parcel;)V

    invoke-static {v1, p5}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    const/4 p0, 0x3

    invoke-static {p0, p5}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result p0

    const/4 p3, 0x0

    invoke-interface {p1, p5, p3}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-static {p0, p5}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    if-eqz p2, :cond_0

    const/4 p0, 0x4

    invoke-static {p0, p5}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result p0

    invoke-virtual {p5, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-static {p0, p5}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    :cond_0
    invoke-static {v0, p5}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    return-void
.end method

.method public static appendBrowserMakeCredentialOptionsToParcel(Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;Landroid/net/Uri;[BLandroid/os/Bundle;Landroid/os/ResultReceiver;Landroid/os/Parcel;)V
    .locals 2

    const/16 v0, 0x4f45

    invoke-static {v0, p5}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, p5}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result v1

    invoke-static {p0, p4, p5}, Lorg/chromium/components/webauthn/Fido2Api;->appendMakeCredentialOptionsToParcel(Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;Landroid/os/ResultReceiver;Landroid/os/Parcel;)V

    invoke-static {v1, p5}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    const/4 p0, 0x3

    invoke-static {p0, p5}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result p0

    const/4 p4, 0x0

    invoke-interface {p1, p5, p4}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-static {p0, p5}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    if-eqz p2, :cond_0

    const/4 p0, 0x4

    invoke-static {p0, p5}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result p0

    invoke-virtual {p5, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-static {p0, p5}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    :cond_0
    if-eqz p3, :cond_1

    const/4 p0, 0x5

    invoke-static {p0, p5}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result p0

    invoke-virtual {p5, p3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    invoke-static {p0, p5}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    :cond_1
    invoke-static {v0, p5}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    return-void
.end method

.method private static appendCredentialListToParcel([Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;Landroid/os/Parcel;)V
    .locals 11

    array-length v0, p0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-static {p1}, Lorg/chromium/components/webauthn/Fido2Api;->startLength(Landroid/os/Parcel;)I

    move-result v4

    const/16 v5, 0x4f45

    invoke-static {v5, p1}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result v5

    const/4 v6, 0x2

    invoke-static {v6, p1}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result v6

    iget v7, v3, Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;->type:I

    invoke-static {v7}, Lorg/chromium/components/webauthn/Fido2Api;->credentialTypeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v6, p1}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    const/4 v6, 0x3

    invoke-static {v6, p1}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result v6

    iget-object v7, v3, Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;->id:[B

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-static {v6, p1}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    const/4 v6, 0x4

    invoke-static {v6, p1}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result v6

    iget-object v7, v3, Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;->transports:[I

    array-length v7, v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, v3, Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;->transports:[I

    array-length v7, v3

    move v8, v1

    :goto_1
    if-ge v8, v7, :cond_0

    aget v9, v3, v8

    invoke-static {p1}, Lorg/chromium/components/webauthn/Fido2Api;->startLength(Landroid/os/Parcel;)I

    move-result v10

    invoke-static {v9}, Lorg/chromium/components/webauthn/Fido2Api;->transportToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v10, p1}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    invoke-static {v6, p1}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    invoke-static {v5, p1}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    invoke-static {v4, p1}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static appendGetAssertionExtensionsToParcel(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;[BLandroid/os/Parcel;)V
    .locals 10

    const/16 v0, 0x4f45

    invoke-static {v0, p2}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result v1

    iget-object v2, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->extensions:Lorg/chromium/blink/mojom/AuthenticationExtensionsClientInputs;

    iget-object v2, v2, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientInputs;->appid:Ljava/lang/String;

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    invoke-static {v3, p2}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result v2

    invoke-static {v0, p2}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result v4

    invoke-static {v3, p2}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result v5

    iget-object v6, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->extensions:Lorg/chromium/blink/mojom/AuthenticationExtensionsClientInputs;

    iget-object v6, v6, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientInputs;->appid:Ljava/lang/String;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v5, p2}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    invoke-static {v4, p2}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    invoke-static {v2, p2}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    :cond_0
    iget-object v2, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->extensions:Lorg/chromium/blink/mojom/AuthenticationExtensionsClientInputs;

    iget-boolean v2, v2, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientInputs;->userVerificationMethods:Z

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    invoke-static {v2, p2}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result v2

    invoke-static {v0, p2}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result v5

    invoke-static {v4, p2}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result v6

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {v6, p2}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    invoke-static {v5, p2}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    invoke-static {v2, p2}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    :cond_1
    iget-object v2, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->extensions:Lorg/chromium/blink/mojom/AuthenticationExtensionsClientInputs;

    iget-boolean v2, v2, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientInputs;->prf:Z

    if-eqz v2, :cond_3

    const/16 v2, 0xb

    invoke-static {v2, p2}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result v2

    invoke-static {v0, p2}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result v5

    invoke-static {v4, p2}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result v6

    iget-object v7, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->extensions:Lorg/chromium/blink/mojom/AuthenticationExtensionsClientInputs;

    iget-object v7, v7, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientInputs;->prfInputs:[Lorg/chromium/blink/mojom/PrfValues;

    array-length v7, v7

    mul-int/2addr v7, v3

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->extensions:Lorg/chromium/blink/mojom/AuthenticationExtensionsClientInputs;

    iget-object p0, p0, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientInputs;->prfInputs:[Lorg/chromium/blink/mojom/PrfValues;

    array-length v7, p0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_2

    aget-object v9, p0, v8

    invoke-static {v9, p2}, Lorg/chromium/components/webauthn/Fido2Api;->writePrfInput(Lorg/chromium/blink/mojom/PrfValues;Landroid/os/Parcel;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v6, p2}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    invoke-static {v5, p2}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    invoke-static {v2, p2}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    :cond_3
    if-eqz p1, :cond_4

    const/16 p0, 0x9

    invoke-static {p0, p2}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result p0

    invoke-static {v0, p2}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result v0

    invoke-static {v4, p2}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result v2

    invoke-static {p1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v2, p2}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    invoke-static {v0, p2}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    invoke-static {p0, p2}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    :cond_4
    invoke-static {v1, p2}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    return-void
.end method

.method public static appendGetAssertionOptionsToParcel(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;[BLandroid/os/ResultReceiver;Landroid/os/Parcel;)V
    .locals 4

    const/16 v0, 0x4f45

    invoke-static {v0, p3}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, p3}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result v1

    iget-object v2, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->challenge:[B

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-static {v1, p3}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    iget-object v1, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->timeout:Lorg/chromium/mojo_base/mojom/TimeDelta;

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    invoke-static {v1, p3}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result v1

    iget-object v2, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->timeout:Lorg/chromium/mojo_base/mojom/TimeDelta;

    invoke-static {v2}, Lorg/chromium/components/webauthn/Fido2Api;->adjustTimeout(Lorg/chromium/mojo_base/mojom/TimeDelta;)D

    move-result-wide v2

    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    invoke-static {v1, p3}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    :cond_0
    const/4 v1, 0x4

    invoke-static {v1, p3}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result v1

    iget-object v2, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->relyingPartyId:Ljava/lang/String;

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v1, p3}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    iget-object v1, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->allowCredentials:[Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    invoke-static {v1, p3}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result v1

    iget-object v2, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->allowCredentials:[Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;

    invoke-static {v2, p3}, Lorg/chromium/components/webauthn/Fido2Api;->appendCredentialListToParcel([Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;Landroid/os/Parcel;)V

    invoke-static {v1, p3}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    :cond_1
    const/16 v1, 0x8

    invoke-static {v1, p3}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result v1

    iget v2, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;->userVerification:I

    invoke-static {v2}, Lorg/chromium/components/webauthn/Fido2Api;->userVerificationToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v1, p3}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    const/16 v1, 0x9

    invoke-static {v1, p3}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result v1

    invoke-static {p0, p1, p3}, Lorg/chromium/components/webauthn/Fido2Api;->appendGetAssertionExtensionsToParcel(Lorg/chromium/blink/mojom/PublicKeyCredentialRequestOptions;[BLandroid/os/Parcel;)V

    invoke-static {v1, p3}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    const/16 p1, 0xb

    invoke-static {p1, p3}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result p1

    invoke-static {}, Lorg/chromium/components/webauthn/Fido2CredentialRequestJni;->get()Lorg/chromium/components/webauthn/Fido2CredentialRequest$Natives;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Struct;->serialize()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-interface {v1, p0}, Lorg/chromium/components/webauthn/Fido2CredentialRequest$Natives;->getOptionsToJson(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {p1, p3}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    if-eqz p2, :cond_2

    const/16 p0, 0xc

    invoke-static {p0, p3}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result p0

    const/4 p1, 0x0

    invoke-virtual {p2, p3, p1}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-static {p0, p3}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    :cond_2
    invoke-static {v0, p3}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    return-void
.end method

.method private static appendMakeCredentialExtensionsToParcel(Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;Landroid/os/Parcel;)V
    .locals 6

    const/16 v0, 0x4f45

    invoke-static {v0, p1}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result v1

    iget-boolean v2, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->isPaymentCredentialCreation:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const/16 v2, 0xa

    invoke-static {v2, p1}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result v2

    invoke-static {v0, p1}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result v4

    invoke-static {v3, p1}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result v5

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {v5, p1}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    invoke-static {v4, p1}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    invoke-static {v2, p1}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    :cond_0
    iget-boolean v2, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->prfEnable:Z

    if-eqz v2, :cond_2

    const/16 v2, 0xb

    invoke-static {v2, p1}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result v2

    invoke-static {v0, p1}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result v0

    invoke-static {v3, p1}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result v3

    iget-object v4, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->prfInput:Lorg/chromium/blink/mojom/PrfValues;

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->prfInput:Lorg/chromium/blink/mojom/PrfValues;

    invoke-static {p0, p1}, Lorg/chromium/components/webauthn/Fido2Api;->writePrfInput(Lorg/chromium/blink/mojom/PrfValues;Landroid/os/Parcel;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    invoke-static {v3, p1}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    invoke-static {v0, p1}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    invoke-static {v2, p1}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    :cond_2
    invoke-static {v1, p1}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    return-void
.end method

.method public static appendMakeCredentialOptionsToParcel(Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;Landroid/os/ResultReceiver;Landroid/os/Parcel;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v3, 0x4f45

    invoke-static {v3, v2}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result v4

    const/4 v5, 0x2

    invoke-static {v5, v2}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result v6

    invoke-static {v3, v2}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result v7

    invoke-static {v5, v2}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result v8

    iget-object v9, v0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->relyingParty:Lorg/chromium/blink/mojom/PublicKeyCredentialRpEntity;

    iget-object v9, v9, Lorg/chromium/blink/mojom/PublicKeyCredentialRpEntity;->id:Ljava/lang/String;

    invoke-virtual {v2, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v8, v2}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    const/4 v8, 0x3

    invoke-static {v8, v2}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result v9

    iget-object v10, v0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->relyingParty:Lorg/chromium/blink/mojom/PublicKeyCredentialRpEntity;

    iget-object v10, v10, Lorg/chromium/blink/mojom/PublicKeyCredentialRpEntity;->name:Ljava/lang/String;

    invoke-virtual {v2, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v9, v2}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    invoke-static {v7, v2}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    invoke-static {v6, v2}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    invoke-static {v8, v2}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result v6

    invoke-static {v3, v2}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result v7

    invoke-static {v5, v2}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result v9

    iget-object v10, v0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->user:Lorg/chromium/blink/mojom/PublicKeyCredentialUserEntity;

    iget-object v10, v10, Lorg/chromium/blink/mojom/PublicKeyCredentialUserEntity;->id:[B

    invoke-virtual {v2, v10}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-static {v9, v2}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    invoke-static {v8, v2}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result v9

    iget-object v10, v0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->user:Lorg/chromium/blink/mojom/PublicKeyCredentialUserEntity;

    iget-object v10, v10, Lorg/chromium/blink/mojom/PublicKeyCredentialUserEntity;->name:Ljava/lang/String;

    invoke-virtual {v2, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v9, v2}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    const/4 v9, 0x5

    invoke-static {v9, v2}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result v10

    iget-object v11, v0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->user:Lorg/chromium/blink/mojom/PublicKeyCredentialUserEntity;

    iget-object v11, v11, Lorg/chromium/blink/mojom/PublicKeyCredentialUserEntity;->displayName:Ljava/lang/String;

    invoke-virtual {v2, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v10, v2}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    invoke-static {v7, v2}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    invoke-static {v6, v2}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    const/4 v6, 0x4

    invoke-static {v6, v2}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result v7

    iget-object v10, v0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->challenge:[B

    invoke-virtual {v2, v10}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-static {v7, v2}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    invoke-static {v9, v2}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result v7

    iget-object v10, v0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->publicKeyParameters:[Lorg/chromium/blink/mojom/PublicKeyCredentialParameters;

    array-length v11, v10

    const/4 v12, 0x0

    move v13, v12

    :goto_0
    const/4 v14, -0x7

    const/4 v15, 0x1

    if-ge v13, v11, :cond_1

    aget-object v9, v10, v13

    iget v6, v9, Lorg/chromium/blink/mojom/PublicKeyCredentialParameters;->algorithmIdentifier:I

    if-ne v6, v14, :cond_0

    iget v6, v9, Lorg/chromium/blink/mojom/PublicKeyCredentialParameters;->type:I

    if-nez v6, :cond_0

    move v6, v15

    goto :goto_1

    :cond_0
    add-int/lit8 v13, v13, 0x1

    const/4 v6, 0x4

    const/4 v9, 0x5

    goto :goto_0

    :cond_1
    move v6, v12

    :goto_1
    if-nez v6, :cond_3

    iget-object v9, v0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->publicKeyParameters:[Lorg/chromium/blink/mojom/PublicKeyCredentialParameters;

    array-length v9, v9

    if-nez v9, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    invoke-direct {v0}, Ljava/security/NoSuchAlgorithmException;-><init>()V

    throw v0

    :cond_3
    :goto_2
    if-nez v6, :cond_4

    invoke-virtual {v2, v12}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    :cond_4
    invoke-virtual {v2, v15}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static/range {p2 .. p2}, Lorg/chromium/components/webauthn/Fido2Api;->startLength(Landroid/os/Parcel;)I

    move-result v6

    invoke-static {v3, v2}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result v9

    invoke-static {v5, v2}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result v10

    invoke-static {v12}, Lorg/chromium/components/webauthn/Fido2Api;->credentialTypeToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v10, v2}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    invoke-static {v8, v2}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result v10

    invoke-virtual {v2, v14}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {v10, v2}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    invoke-static {v9, v2}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    invoke-static {v6, v2}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    :goto_3
    invoke-static {v7, v2}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    iget-object v6, v0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->timeout:Lorg/chromium/mojo_base/mojom/TimeDelta;

    if-eqz v6, :cond_5

    const/4 v6, 0x6

    invoke-static {v6, v2}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result v6

    iget-object v7, v0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->timeout:Lorg/chromium/mojo_base/mojom/TimeDelta;

    invoke-static {v7}, Lorg/chromium/components/webauthn/Fido2Api;->adjustTimeout(Lorg/chromium/mojo_base/mojom/TimeDelta;)D

    move-result-wide v9

    invoke-virtual {v2, v9, v10}, Landroid/os/Parcel;->writeDouble(D)V

    invoke-static {v6, v2}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    :cond_5
    iget-object v6, v0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->excludeCredentials:[Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;

    if-eqz v6, :cond_6

    array-length v6, v6

    if-eqz v6, :cond_6

    const/4 v6, 0x7

    invoke-static {v6, v2}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result v6

    iget-object v7, v0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->excludeCredentials:[Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;

    invoke-static {v7, v2}, Lorg/chromium/components/webauthn/Fido2Api;->appendCredentialListToParcel([Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;Landroid/os/Parcel;)V

    invoke-static {v6, v2}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    :cond_6
    iget-object v6, v0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->authenticatorSelection:Lorg/chromium/blink/mojom/AuthenticatorSelectionCriteria;

    if-eqz v6, :cond_9

    const/16 v6, 0x8

    invoke-static {v6, v2}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result v6

    invoke-static {v3, v2}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result v3

    iget-object v7, v0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->authenticatorSelection:Lorg/chromium/blink/mojom/AuthenticatorSelectionCriteria;

    iget v7, v7, Lorg/chromium/blink/mojom/AuthenticatorSelectionCriteria;->authenticatorAttachment:I

    invoke-static {v7}, Lorg/chromium/components/webauthn/Fido2Api;->attachmentToString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-static {v5, v2}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result v9

    invoke-virtual {v2, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v9, v2}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    :cond_7
    invoke-static {v8, v2}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result v7

    iget-object v8, v0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->authenticatorSelection:Lorg/chromium/blink/mojom/AuthenticatorSelectionCriteria;

    iget v8, v8, Lorg/chromium/blink/mojom/AuthenticatorSelectionCriteria;->residentKey:I

    if-ne v8, v5, :cond_8

    goto :goto_4

    :cond_8
    move v15, v12

    :goto_4
    invoke-virtual {v2, v15}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {v7, v2}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    const/4 v5, 0x4

    invoke-static {v5, v2}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result v5

    iget-object v7, v0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->authenticatorSelection:Lorg/chromium/blink/mojom/AuthenticatorSelectionCriteria;

    iget v7, v7, Lorg/chromium/blink/mojom/AuthenticatorSelectionCriteria;->userVerification:I

    invoke-static {v7}, Lorg/chromium/components/webauthn/Fido2Api;->userVerificationToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v5, v2}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    const/4 v5, 0x5

    invoke-static {v5, v2}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result v5

    iget-object v7, v0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->authenticatorSelection:Lorg/chromium/blink/mojom/AuthenticatorSelectionCriteria;

    iget v7, v7, Lorg/chromium/blink/mojom/AuthenticatorSelectionCriteria;->residentKey:I

    invoke-static {v7}, Lorg/chromium/components/webauthn/Fido2Api;->residentKeyToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v5, v2}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    invoke-static {v3, v2}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    invoke-static {v6, v2}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    :cond_9
    const/16 v3, 0xb

    invoke-static {v3, v2}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result v3

    iget v5, v0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->attestation:I

    invoke-static {v5}, Lorg/chromium/components/webauthn/Fido2Api;->attestationPreferenceToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v3, v2}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    iget-boolean v3, v0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->isPaymentCredentialCreation:Z

    if-nez v3, :cond_a

    iget-boolean v3, v0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->prfEnable:Z

    if-eqz v3, :cond_b

    :cond_a
    const/16 v3, 0xc

    invoke-static {v3, v2}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result v3

    invoke-static {v0, v2}, Lorg/chromium/components/webauthn/Fido2Api;->appendMakeCredentialExtensionsToParcel(Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;Landroid/os/Parcel;)V

    invoke-static {v3, v2}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    :cond_b
    const/16 v3, 0xd

    invoke-static {v3, v2}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result v3

    invoke-static {}, Lorg/chromium/components/webauthn/Fido2CredentialRequestJni;->get()Lorg/chromium/components/webauthn/Fido2CredentialRequest$Natives;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Struct;->serialize()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {v5, v0}, Lorg/chromium/components/webauthn/Fido2CredentialRequest$Natives;->createOptionsToJson(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v3, v2}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    if-eqz v1, :cond_c

    const/16 v0, 0xe

    invoke-static {v0, v2}, Lorg/chromium/components/webauthn/Fido2Api;->writeHeader(ILandroid/os/Parcel;)I

    move-result v0

    invoke-virtual {v1, v2, v12}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-static {v0, v2}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    :cond_c
    invoke-static {v4, v2}, Lorg/chromium/components/webauthn/Fido2Api;->writeLength(ILandroid/os/Parcel;)V

    return-void
.end method

.method private static attachmentToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "cross-platform"

    return-object p0

    :cond_1
    const-string p0, "platform"

    return-object p0
.end method

.method private static attestationPreferenceToString(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    const-string v1, "direct"

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "none"

    return-object p0

    :cond_0
    return-object v1

    :cond_1
    const-string p0, "indirect"

    return-object p0
.end method

.method private static concat([B[B)[B
    .locals 3

    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static credentialTypeToString(I)Ljava/lang/String;
    .locals 0

    const-string p0, "public-key"

    return-object p0
.end method

.method private static doesParcelUseLengthPrefix()Z
    .locals 3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v1
.end method

.method private static encodeId([B)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xb

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static hashPrfInput(Ljava/security/MessageDigest;[B)[B
    .locals 2

    invoke-virtual {p0}, Ljava/security/MessageDigest;->reset()V

    const-string v0, "WebAuthn PRF\u0000"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    return-object p0
.end method

.method private static hashPrfInputs(Lorg/chromium/blink/mojom/PrfValues;)[B
    .locals 2

    :try_start_0
    const-string v0, "SHA256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lorg/chromium/blink/mojom/PrfValues;->first:[B

    invoke-static {v0, v1}, Lorg/chromium/components/webauthn/Fido2Api;->hashPrfInput(Ljava/security/MessageDigest;[B)[B

    move-result-object v1

    iget-object p0, p0, Lorg/chromium/blink/mojom/PrfValues;->second:[B

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    invoke-static {v0, p0}, Lorg/chromium/components/webauthn/Fido2Api;->hashPrfInput(Ljava/security/MessageDigest;[B)[B

    move-result-object p0

    invoke-static {v1, p0}, Lorg/chromium/components/webauthn/Fido2Api;->concat([B[B)[B

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static parseAssertionResponse(Landroid/os/Parcel;)Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;
    .locals 9

    invoke-static {p0}, Lorg/chromium/components/webauthn/Fido2Api;->readHeader(Landroid/os/Parcel;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x4f45

    if-ne v1, v2, :cond_7

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, p0}, Lorg/chromium/components/webauthn/Fido2Api;->addLengthToParcelPosition(ILandroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v0, :cond_5

    invoke-static {p0}, Lorg/chromium/components/webauthn/Fido2Api;->readHeader(Landroid/os/Parcel;)Landroid/util/Pair;

    move-result-object v6

    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_4

    const/4 v8, 0x3

    if-eq v7, v8, :cond_3

    const/4 v8, 0x4

    if-eq v7, v8, :cond_2

    const/4 v8, 0x5

    if-eq v7, v8, :cond_1

    const/4 v8, 0x6

    if-eq v7, v8, :cond_0

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6, p0}, Lorg/chromium/components/webauthn/Fido2Api;->addLengthToParcelPosition(ILandroid/os/Parcel;)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    goto :goto_0

    :cond_5
    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    if-eqz v4, :cond_6

    new-instance p0, Lorg/chromium/blink/mojom/CommonCredentialInfo;

    invoke-direct {p0}, Lorg/chromium/blink/mojom/CommonCredentialInfo;-><init>()V

    iput-object v3, p0, Lorg/chromium/blink/mojom/CommonCredentialInfo;->authenticatorData:[B

    invoke-static {v1}, Lorg/chromium/components/webauthn/Fido2Api;->encodeId([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/blink/mojom/CommonCredentialInfo;->id:Ljava/lang/String;

    iput-object v1, p0, Lorg/chromium/blink/mojom/CommonCredentialInfo;->rawId:[B

    iput-object v2, p0, Lorg/chromium/blink/mojom/CommonCredentialInfo;->clientDataJson:[B

    new-instance v0, Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;-><init>()V

    iput-object p0, v0, Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;->info:Lorg/chromium/blink/mojom/CommonCredentialInfo;

    iput-object v4, v0, Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;->signature:[B

    iput-object v5, v0, Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;->userHandle:[B

    new-instance p0, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientOutputs;

    invoke-direct {p0}, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientOutputs;-><init>()V

    iput-object p0, v0, Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;->extensions:Lorg/chromium/blink/mojom/AuthenticationExtensionsClientOutputs;

    return-object v0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static parseAttestationResponse(Landroid/os/Parcel;)Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;
    .locals 8

    invoke-static {p0}, Lorg/chromium/components/webauthn/Fido2Api;->readHeader(Landroid/os/Parcel;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x4f45

    if-ne v1, v2, :cond_7

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, p0}, Lorg/chromium/components/webauthn/Fido2Api;->addLengthToParcelPosition(ILandroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x0

    new-array v1, v1, [I

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v0, :cond_4

    invoke-static {p0}, Lorg/chromium/components/webauthn/Fido2Api;->readHeader(Landroid/os/Parcel;)Landroid/util/Pair;

    move-result-object v5

    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_3

    const/4 v7, 0x3

    if-eq v6, v7, :cond_2

    const/4 v7, 0x4

    if-eq v6, v7, :cond_1

    const/4 v7, 0x5

    if-eq v6, v7, :cond_0

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5, p0}, Lorg/chromium/components/webauthn/Fido2Api;->addLengthToParcelPosition(ILandroid/os/Parcel;)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/chromium/components/webauthn/Fido2Api;->parseTransports(Landroid/os/Parcel;)[I

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    if-eqz v4, :cond_6

    new-instance p0, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;

    invoke-direct {p0}, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;-><init>()V

    new-instance v0, Lorg/chromium/blink/mojom/CommonCredentialInfo;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/CommonCredentialInfo;-><init>()V

    new-instance v5, Lorg/chromium/components/webauthn/Fido2Api$AttestationObjectParts;

    invoke-direct {v5}, Lorg/chromium/components/webauthn/Fido2Api$AttestationObjectParts;-><init>()V

    invoke-static {}, Lorg/chromium/components/webauthn/Fido2ApiJni;->get()Lorg/chromium/components/webauthn/Fido2Api$Natives;

    move-result-object v6

    invoke-interface {v6, v4, v5}, Lorg/chromium/components/webauthn/Fido2Api$Natives;->parseAttestationObject([BLorg/chromium/components/webauthn/Fido2Api$AttestationObjectParts;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, v5, Lorg/chromium/components/webauthn/Fido2Api$AttestationObjectParts;->coseAlgorithm:I

    iput v4, p0, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->publicKeyAlgo:I

    iget-object v4, v5, Lorg/chromium/components/webauthn/Fido2Api$AttestationObjectParts;->authenticatorData:[B

    iput-object v4, v0, Lorg/chromium/blink/mojom/CommonCredentialInfo;->authenticatorData:[B

    iget-object v4, v5, Lorg/chromium/components/webauthn/Fido2Api$AttestationObjectParts;->spki:[B

    iput-object v4, p0, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->publicKeyDer:[B

    iget-object v4, v5, Lorg/chromium/components/webauthn/Fido2Api$AttestationObjectParts;->attestationObject:[B

    iput-object v4, p0, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->attestationObject:[B

    iput-object v1, p0, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->transports:[I

    invoke-static {v2}, Lorg/chromium/components/webauthn/Fido2Api;->encodeId([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/blink/mojom/CommonCredentialInfo;->id:Ljava/lang/String;

    iput-object v2, v0, Lorg/chromium/blink/mojom/CommonCredentialInfo;->rawId:[B

    iput-object v3, v0, Lorg/chromium/blink/mojom/CommonCredentialInfo;->clientDataJson:[B

    iput-object v0, p0, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->info:Lorg/chromium/blink/mojom/CommonCredentialInfo;

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static parseCredPropsResponse(Landroid/os/Parcel;)Z
    .locals 6

    invoke-static {p0}, Lorg/chromium/components/webauthn/Fido2Api;->readHeader(Landroid/os/Parcel;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x4f45

    if-ne v1, v2, :cond_3

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, p0}, Lorg/chromium/components/webauthn/Fido2Api;->addLengthToParcelPosition(ILandroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_2

    invoke-static {p0}, Lorg/chromium/components/webauthn/Fido2Api;->readHeader(Landroid/os/Parcel;)Landroid/util/Pair;

    move-result-object v3

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3, p0}, Lorg/chromium/components/webauthn/Fido2Api;->addLengthToParcelPosition(ILandroid/os/Parcel;)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    move v2, v5

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static parseCredentialList(Landroid/os/Parcel;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/chromium/components/webauthn/WebauthnCredentialDetails;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_9

    new-instance v4, Lorg/chromium/components/webauthn/WebauthnCredentialDetails;

    invoke-direct {v4}, Lorg/chromium/components/webauthn/WebauthnCredentialDetails;-><init>()V

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_8

    sget-boolean v5, Lorg/chromium/components/webauthn/Fido2Api;->sParcelUsesLengthPrefixes:Z

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    invoke-static {p0}, Lorg/chromium/components/webauthn/Fido2Api;->readHeader(Landroid/os/Parcel;)Landroid/util/Pair;

    move-result-object v5

    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x4f45

    if-ne v6, v7, :cond_7

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5, p0}, Lorg/chromium/components/webauthn/Fido2Api;->addLengthToParcelPosition(ILandroid/os/Parcel;)I

    move-result v5

    const/4 v6, 0x1

    iput-boolean v6, v4, Lorg/chromium/components/webauthn/WebauthnCredentialDetails;->mIsDiscoverable:Z

    iput-boolean v2, v4, Lorg/chromium/components/webauthn/WebauthnCredentialDetails;->mIsPayment:Z

    :goto_1
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    if-ge v7, v5, :cond_3

    invoke-static {p0}, Lorg/chromium/components/webauthn/Fido2Api;->readHeader(Landroid/os/Parcel;)Landroid/util/Pair;

    move-result-object v7

    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7, p0}, Lorg/chromium/components/webauthn/Fido2Api;->addLengthToParcelPosition(ILandroid/os/Parcel;)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1

    move v7, v6

    goto :goto_2

    :cond_1
    move v7, v2

    :goto_2
    iput-boolean v7, v4, Lorg/chromium/components/webauthn/WebauthnCredentialDetails;->mIsPayment:Z

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2

    move v7, v6

    goto :goto_3

    :cond_2
    move v7, v2

    :goto_3
    iput-boolean v7, v4, Lorg/chromium/components/webauthn/WebauthnCredentialDetails;->mIsDiscoverable:Z

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    iput-object v7, v4, Lorg/chromium/components/webauthn/WebauthnCredentialDetails;->mCredentialId:[B

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    iput-object v7, v4, Lorg/chromium/components/webauthn/WebauthnCredentialDetails;->mUserId:[B

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lorg/chromium/components/webauthn/WebauthnCredentialDetails;->mUserDisplayName:Ljava/lang/String;

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lorg/chromium/components/webauthn/WebauthnCredentialDetails;->mUserName:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-object v5, v4, Lorg/chromium/components/webauthn/WebauthnCredentialDetails;->mCredentialId:[B

    if-eqz v5, :cond_6

    iget-boolean v5, v4, Lorg/chromium/components/webauthn/WebauthnCredentialDetails;->mIsDiscoverable:Z

    if-eqz v5, :cond_5

    iget-object v5, v4, Lorg/chromium/components/webauthn/WebauthnCredentialDetails;->mUserName:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, v4, Lorg/chromium/components/webauthn/WebauthnCredentialDetails;->mUserDisplayName:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, v4, Lorg/chromium/components/webauthn/WebauthnCredentialDetails;->mUserId:[B

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_5
    :goto_4
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_9
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseErrorResponse(Landroid/os/Parcel;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lorg/chromium/components/webauthn/Fido2Api;->readHeader(Landroid/os/Parcel;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x4f45

    if-ne v1, v2, :cond_4

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, p0}, Lorg/chromium/components/webauthn/Fido2Api;->addLengthToParcelPosition(ILandroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_2

    invoke-static {p0}, Lorg/chromium/components/webauthn/Fido2Api;->readHeader(Landroid/os/Parcel;)Landroid/util/Pair;

    move-result-object v3

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3, p0}, Lorg/chromium/components/webauthn/Fido2Api;->addLengthToParcelPosition(ILandroid/os/Parcel;)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static parseExtensionResponse(Landroid/os/Parcel;)Lorg/chromium/components/webauthn/Fido2Api$Extensions;
    .locals 6

    invoke-static {p0}, Lorg/chromium/components/webauthn/Fido2Api;->readHeader(Landroid/os/Parcel;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x4f45

    if-ne v1, v2, :cond_5

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, p0}, Lorg/chromium/components/webauthn/Fido2Api;->addLengthToParcelPosition(ILandroid/os/Parcel;)I

    move-result v0

    new-instance v1, Lorg/chromium/components/webauthn/Fido2Api$Extensions;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/chromium/components/webauthn/Fido2Api$Extensions;-><init>(I)V

    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_4

    invoke-static {p0}, Lorg/chromium/components/webauthn/Fido2Api;->readHeader(Landroid/os/Parcel;)Landroid/util/Pair;

    move-result-object v2

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v5, 0x3

    if-eq v3, v5, :cond_1

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2, p0}, Lorg/chromium/components/webauthn/Fido2Api;->addLengthToParcelPosition(ILandroid/os/Parcel;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/chromium/components/webauthn/Fido2Api;->parsePrfResponse(Landroid/os/Parcel;)Landroid/util/Pair;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/components/webauthn/Fido2Api$Extensions;->prf:Landroid/util/Pair;

    goto :goto_0

    :cond_1
    iput-boolean v4, v1, Lorg/chromium/components/webauthn/Fido2Api$Extensions;->hasCredProps:Z

    invoke-static {p0}, Lorg/chromium/components/webauthn/Fido2Api;->parseCredPropsResponse(Landroid/os/Parcel;)Z

    move-result v2

    iput-boolean v2, v1, Lorg/chromium/components/webauthn/Fido2Api$Extensions;->didCreateDiscoverableCredential:Z

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lorg/chromium/components/webauthn/Fido2Api;->parseUvmEntries(Landroid/os/Parcel;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/components/webauthn/Fido2Api$Extensions;->userVerificationMethods:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_4
    return-object v1

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static parseIntentResponse(Landroid/content/Intent;)Ljava/lang/Object;
    .locals 1

    const-string v0, "FIDO2_CREDENTIAL_EXTRA"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p0

    const-string v0, "Fido2Api"

    if-eqz p0, :cond_1

    invoke-static {p0}, Lorg/chromium/components/webauthn/Fido2Api;->parseResponse([B)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "Failed to parse FIDO2 API response"

    invoke-static {v0, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    const-string p0, "FIDO2 PendingIntent missing response"

    invoke-static {v0, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static parsePrfResponse(Landroid/os/Parcel;)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "[B>;"
        }
    .end annotation

    invoke-static {p0}, Lorg/chromium/components/webauthn/Fido2Api;->readHeader(Landroid/os/Parcel;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x4f45

    if-ne v1, v2, :cond_6

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, p0}, Lorg/chromium/components/webauthn/Fido2Api;->addLengthToParcelPosition(ILandroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    move v3, v1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_5

    invoke-static {p0}, Lorg/chromium/components/webauthn/Fido2Api;->readHeader(Landroid/os/Parcel;)Landroid/util/Pair;

    move-result-object v4

    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4, p0}, Lorg/chromium/components/webauthn/Fido2Api;->addLengthToParcelPosition(ILandroid/os/Parcel;)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v4, v2

    const/16 v5, 0x20

    if-eq v4, v5, :cond_1

    array-length v4, v2

    const/16 v5, 0x40

    if-ne v4, v5, :cond_3

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "bad PRF output length"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v3, v6

    goto :goto_0

    :cond_5
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static parseResponse([B)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-static {v0}, Lorg/chromium/components/webauthn/Fido2Api;->readHeader(Landroid/os/Parcel;)Landroid/util/Pair;

    move-result-object p0

    iget-object v1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v3, 0x4f45

    if-ne v1, v3, :cond_10

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0, v0}, Lorg/chromium/components/webauthn/Fido2Api;->addLengthToParcelPosition(ILandroid/os/Parcel;)I

    move-result p0

    const/4 v1, 0x0

    const/4 v3, -0x1

    move-object v4, v1

    move-object v5, v4

    move v6, v3

    move-object v3, v5

    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    if-ge v7, p0, :cond_3

    invoke-static {v0}, Lorg/chromium/components/webauthn/Fido2Api;->readHeader(Landroid/os/Parcel;)Landroid/util/Pair;

    move-result-object v7

    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7, v0}, Lorg/chromium/components/webauthn/Fido2Api;->addLengthToParcelPosition(ILandroid/os/Parcel;)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/chromium/components/webauthn/Fido2Api;->stringToAttachment(Ljava/lang/String;)I

    move-result v6

    goto :goto_0

    :pswitch_2
    invoke-static {v0}, Lorg/chromium/components/webauthn/Fido2Api;->parseExtensionResponse(Landroid/os/Parcel;)Lorg/chromium/components/webauthn/Fido2Api$Extensions;

    move-result-object v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_3
    invoke-static {v0}, Lorg/chromium/components/webauthn/Fido2Api;->parseErrorResponse(Landroid/os/Parcel;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-static {v0}, Lorg/chromium/components/webauthn/Fido2Api;->parseAssertionResponse(Landroid/os/Parcel;)Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_5
    invoke-static {v0}, Lorg/chromium/components/webauthn/Fido2Api;->parseAttestationResponse(Landroid/os/Parcel;)Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_3
    const-string p0, "Failed to convert response from JSON to Mojo object: %s"

    const-string v0, "Fido2Api"

    const/4 v7, 0x1

    if-eqz v1, :cond_9

    if-eqz v4, :cond_5

    invoke-static {}, Lorg/chromium/components/webauthn/Fido2CredentialRequestJni;->get()Lorg/chromium/components/webauthn/Fido2CredentialRequest$Natives;

    move-result-object v1

    invoke-interface {v1, v4}, Lorg/chromium/components/webauthn/Fido2CredentialRequest$Natives;->makeCredentialResponseFromJson(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_4

    :try_start_0
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->deserialize(Ljava/nio/ByteBuffer;)Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;

    move-result-object p0
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_4
    invoke-static {v0, p0, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_5
    if-ltz v6, :cond_6

    iput v6, v1, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->authenticatorAttachment:I

    :cond_6
    if-eqz v5, :cond_8

    iget-boolean p0, v5, Lorg/chromium/components/webauthn/Fido2Api$Extensions;->hasCredProps:Z

    if-eqz p0, :cond_7

    iput-boolean v7, v1, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->hasCredPropsRk:Z

    iget-boolean p0, v5, Lorg/chromium/components/webauthn/Fido2Api$Extensions;->didCreateDiscoverableCredential:Z

    iput-boolean p0, v1, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->credPropsRk:Z

    :cond_7
    iget-object p0, v5, Lorg/chromium/components/webauthn/Fido2Api$Extensions;->prf:Landroid/util/Pair;

    if-eqz p0, :cond_8

    iput-boolean v7, v1, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->echoPrf:Z

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iput-boolean p0, v1, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->prf:Z

    invoke-virtual {v5}, Lorg/chromium/components/webauthn/Fido2Api$Extensions;->getPrfResults()Lorg/chromium/blink/mojom/PrfValues;

    move-result-object p0

    iput-object p0, v1, Lorg/chromium/blink/mojom/MakeCredentialAuthenticatorResponse;->prfResults:Lorg/chromium/blink/mojom/PrfValues;

    :cond_8
    return-object v1

    :cond_9
    if-eqz v3, :cond_f

    if-eqz v4, :cond_b

    invoke-static {}, Lorg/chromium/components/webauthn/Fido2CredentialRequestJni;->get()Lorg/chromium/components/webauthn/Fido2CredentialRequest$Natives;

    move-result-object v1

    invoke-interface {v1, v4}, Lorg/chromium/components/webauthn/Fido2CredentialRequest$Natives;->getCredentialResponseFromJson(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_a

    :try_start_1
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;->deserialize(Ljava/nio/ByteBuffer;)Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;

    move-result-object p0
    :try_end_1
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_a
    invoke-static {v0, p0, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_b
    if-eqz v5, :cond_c

    iget-object p0, v5, Lorg/chromium/components/webauthn/Fido2Api$Extensions;->userVerificationMethods:Ljava/util/ArrayList;

    if-eqz p0, :cond_c

    iget-object v0, v3, Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;->extensions:Lorg/chromium/blink/mojom/AuthenticationExtensionsClientOutputs;

    iput-boolean v7, v0, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientOutputs;->echoUserVerificationMethods:Z

    new-array v1, v2, [Lorg/chromium/blink/mojom/UvmEntry;

    iput-object v1, v0, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientOutputs;->userVerificationMethods:[Lorg/chromium/blink/mojom/UvmEntry;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/chromium/blink/mojom/UvmEntry;

    iput-object p0, v0, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientOutputs;->userVerificationMethods:[Lorg/chromium/blink/mojom/UvmEntry;

    :cond_c
    if-eqz v5, :cond_d

    iget-object p0, v5, Lorg/chromium/components/webauthn/Fido2Api$Extensions;->prf:Landroid/util/Pair;

    if-eqz p0, :cond_d

    iget-object p0, v3, Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;->extensions:Lorg/chromium/blink/mojom/AuthenticationExtensionsClientOutputs;

    iput-boolean v7, p0, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientOutputs;->echoPrf:Z

    invoke-virtual {v5}, Lorg/chromium/components/webauthn/Fido2Api$Extensions;->getPrfResults()Lorg/chromium/blink/mojom/PrfValues;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/blink/mojom/AuthenticationExtensionsClientOutputs;->prfResults:Lorg/chromium/blink/mojom/PrfValues;

    :cond_d
    if-ltz v6, :cond_e

    iput v6, v3, Lorg/chromium/blink/mojom/GetAssertionAuthenticatorResponse;->authenticatorAttachment:I

    :cond_e
    return-object v3

    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseTransports(Landroid/os/Parcel;)[I
    .locals 7

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_6

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "usb"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    add-int/lit8 v5, v4, 0x1

    aput v2, v1, v4

    :goto_1
    move v4, v5

    goto :goto_3

    :cond_0
    const-string v6, "nfc"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v5, v4, 0x1

    const/4 v6, 0x1

    aput v6, v1, v4

    goto :goto_1

    :cond_1
    const-string v6, "ble"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v5, v4, 0x1

    const/4 v6, 0x2

    aput v6, v1, v4

    goto :goto_1

    :cond_2
    const-string v6, "cable"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "hybrid"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    const-string v6, "internal"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    add-int/lit8 v5, v4, 0x1

    const/4 v6, 0x4

    aput v6, v1, v4

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v5, v4, 0x1

    const/4 v6, 0x3

    aput v6, v1, v4

    goto :goto_1

    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    if-ne v4, v0, :cond_7

    return-object v1

    :cond_7
    new-array p0, v4, [I

    invoke-static {v1, v2, p0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method private static parseUvmEntries(Landroid/os/Parcel;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/chromium/blink/mojom/UvmEntry;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lorg/chromium/components/webauthn/Fido2Api;->readHeader(Landroid/os/Parcel;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x4f45

    if-ne v1, v2, :cond_4

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, p0}, Lorg/chromium/components/webauthn/Fido2Api;->addLengthToParcelPosition(ILandroid/os/Parcel;)I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_3

    invoke-static {p0}, Lorg/chromium/components/webauthn/Fido2Api;->readHeader(Landroid/os/Parcel;)Landroid/util/Pair;

    move-result-object v2

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2, p0}, Lorg/chromium/components/webauthn/Fido2Api;->addLengthToParcelPosition(ILandroid/os/Parcel;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    invoke-static {p0}, Lorg/chromium/components/webauthn/Fido2Api;->parseUvmEntry(Landroid/os/Parcel;)Lorg/chromium/blink/mojom/UvmEntry;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_3
    return-object v1

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static parseUvmEntry(Landroid/os/Parcel;)Lorg/chromium/blink/mojom/UvmEntry;
    .locals 5

    invoke-static {p0}, Lorg/chromium/components/webauthn/Fido2Api;->readHeader(Landroid/os/Parcel;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x4f45

    if-ne v1, v2, :cond_4

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, p0}, Lorg/chromium/components/webauthn/Fido2Api;->addLengthToParcelPosition(ILandroid/os/Parcel;)I

    move-result v0

    new-instance v1, Lorg/chromium/blink/mojom/UvmEntry;

    invoke-direct {v1}, Lorg/chromium/blink/mojom/UvmEntry;-><init>()V

    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_3

    invoke-static {p0}, Lorg/chromium/components/webauthn/Fido2Api;->readHeader(Landroid/os/Parcel;)Landroid/util/Pair;

    move-result-object v2

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2, p0}, Lorg/chromium/components/webauthn/Fido2Api;->addLengthToParcelPosition(ILandroid/os/Parcel;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-short v2, v2

    iput-short v2, v1, Lorg/chromium/blink/mojom/UvmEntry;->matcherProtectionType:S

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-short v2, v2

    iput-short v2, v1, Lorg/chromium/blink/mojom/UvmEntry;->keyProtectionType:S

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lorg/chromium/blink/mojom/UvmEntry;->userVerificationMethod:I

    goto :goto_0

    :cond_3
    return-object v1

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static readHeader(Landroid/os/Parcel;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const v1, 0xffff

    and-int v2, v0, v1

    shr-int/lit8 v0, v0, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    :cond_0
    new-instance p0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method private static residentKeyToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, "discouraged"

    return-object p0

    :cond_0
    const-string p0, "required"

    return-object p0

    :cond_1
    const-string p0, "preferred"

    return-object p0
.end method

.method private static startLength(Landroid/os/Parcel;)I
    .locals 2

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const v1, -0x22222223

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method

.method private static stringToAttachment(Ljava/lang/String;)I
    .locals 1

    const-string v0, "platform"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string v0, "cross-platform"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private static transportToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const-string p0, "usb"

    return-object p0

    :cond_0
    const-string p0, "internal"

    return-object p0

    :cond_1
    const-string p0, "cable"

    return-object p0

    :cond_2
    const-string p0, "ble"

    return-object p0

    :cond_3
    const-string p0, "nfc"

    return-object p0
.end method

.method private static userVerificationToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, "preferred"

    return-object p0

    :cond_0
    const-string p0, "discouraged"

    return-object p0

    :cond_1
    const-string p0, "required"

    return-object p0
.end method

.method private static writeHeader(ILandroid/os/Parcel;)I
    .locals 1

    const/high16 v0, -0x10000

    or-int/2addr p0, v0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {p1}, Lorg/chromium/components/webauthn/Fido2Api;->startLength(Landroid/os/Parcel;)I

    move-result p0

    return p0
.end method

.method private static writeLength(ILandroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int p0, v0, p0

    add-int/lit8 p0, p0, -0x4

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method private static writePrfInput(Lorg/chromium/blink/mojom/PrfValues;Landroid/os/Parcel;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/blink/mojom/PrfValues;->id:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-static {p0}, Lorg/chromium/components/webauthn/Fido2Api;->hashPrfInputs(Lorg/chromium/blink/mojom/PrfValues;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
