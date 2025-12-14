.class public final Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public appidExclude:Ljava/lang/String;

.field public attestation:I

.field public attestationFormats:[Ljava/lang/String;

.field public authenticatorSelection:Lorg/chromium/blink/mojom/AuthenticatorSelectionCriteria;

.field public challenge:[B

.field public credBlob:[B

.field public credProps:Z

.field public enforceProtectionPolicy:Z

.field public excludeCredentials:[Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;

.field public hints:[I

.field public hmacCreateSecret:Z

.field public isConditional:Z

.field public isPaymentCredentialCreation:Z

.field public largeBlobEnable:I

.field public minPinLengthRequested:Z

.field public paymentBrowserBoundKeyParameters:[Lorg/chromium/blink/mojom/PublicKeyCredentialParameters;

.field public prfEnable:Z

.field public prfInput:Lorg/chromium/blink/mojom/PrfValues;

.field public protectionPolicy:I

.field public publicKeyParameters:[Lorg/chromium/blink/mojom/PublicKeyCredentialParameters;

.field public relyingParty:Lorg/chromium/blink/mojom/PublicKeyCredentialRpEntity;

.field public remoteDesktopClientOverride:Lorg/chromium/blink/mojom/RemoteDesktopClientOverride;

.field public supplementalPubKeys:Lorg/chromium/blink/mojom/SupplementalPubKeysRequest;

.field public timeout:Lorg/chromium/mojo_base/mojom/TimeDelta;

.field public user:Lorg/chromium/blink/mojom/PublicKeyCredentialUserEntity;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x90

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x90

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->minPinLengthRequested:Z

    iput-boolean p1, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->isConditional:Z

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;
    .locals 11

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v1, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v2, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;

    invoke-direct {v2, v1}, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;-><init>(I)V

    const/16 v1, 0x8

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/blink/mojom/PublicKeyCredentialRpEntity;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/PublicKeyCredentialRpEntity;

    move-result-object v4

    iput-object v4, v2, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->relyingParty:Lorg/chromium/blink/mojom/PublicKeyCredentialRpEntity;

    const/16 v4, 0x10

    invoke-virtual {p0, v4, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/blink/mojom/PublicKeyCredentialUserEntity;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/PublicKeyCredentialUserEntity;

    move-result-object v4

    iput-object v4, v2, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->user:Lorg/chromium/blink/mojom/PublicKeyCredentialUserEntity;

    const/16 v4, 0x18

    const/4 v5, -0x1

    invoke-virtual {p0, v4, v3, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBytes(III)[B

    move-result-object v4

    iput-object v4, v2, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->challenge:[B

    const/16 v4, 0x20

    invoke-virtual {p0, v4, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-virtual {v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v6

    iget v7, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v7, v7, [Lorg/chromium/blink/mojom/PublicKeyCredentialParameters;

    iput-object v7, v2, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->publicKeyParameters:[Lorg/chromium/blink/mojom/PublicKeyCredentialParameters;

    move v7, v3

    :goto_0
    iget v8, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v7, v8, :cond_1

    const/16 v8, 0x8

    invoke-static {v7, v8, v1, v4, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v8

    iget-object v9, v2, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->publicKeyParameters:[Lorg/chromium/blink/mojom/PublicKeyCredentialParameters;

    invoke-static {v8}, Lorg/chromium/blink/mojom/PublicKeyCredentialParameters;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/PublicKeyCredentialParameters;

    move-result-object v8

    aput-object v8, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_1
    const/16 v4, 0x28

    const/4 v6, 0x1

    invoke-virtual {p0, v4, v6}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/mojo_base/mojom/TimeDelta;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/TimeDelta;

    move-result-object v4

    iput-object v4, v2, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->timeout:Lorg/chromium/mojo_base/mojom/TimeDelta;

    const/16 v4, 0x30

    invoke-virtual {p0, v4, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-virtual {v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v7

    iget v8, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v8, v8, [Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;

    iput-object v8, v2, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->excludeCredentials:[Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;

    move v8, v3

    :goto_1
    iget v9, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v8, v9, :cond_2

    const/16 v9, 0x8

    invoke-static {v8, v9, v1, v4, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v9

    iget-object v10, v2, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->excludeCredentials:[Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;

    invoke-static {v9}, Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;

    move-result-object v9

    aput-object v9, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    const/16 v4, 0x38

    invoke-virtual {p0, v4, v6}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/blink/mojom/AuthenticatorSelectionCriteria;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/AuthenticatorSelectionCriteria;

    move-result-object v4

    iput-object v4, v2, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->authenticatorSelection:Lorg/chromium/blink/mojom/AuthenticatorSelectionCriteria;

    const/16 v4, 0x40

    invoke-virtual {p0, v4, v3, v5}, Lorg/chromium/mojo/bindings/Decoder;->readInts(III)[I

    move-result-object v4

    iput-object v4, v2, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->hints:[I

    move v4, v3

    :goto_2
    iget-object v7, v2, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->hints:[I

    array-length v8, v7

    if-ge v4, v8, :cond_3

    aget v7, v7, v4

    invoke-static {v7}, Lorg/chromium/blink/mojom/Hint;->validate(I)V

    iget-object v7, v2, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->hints:[I

    aget v8, v7, v4

    invoke-static {v8}, Lorg/chromium/blink/mojom/Hint;->toKnownValue(I)I

    move-result v8

    aput v8, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    const/16 v4, 0x48

    invoke-virtual {p0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v4

    iput v4, v2, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->attestation:I

    invoke-static {v4}, Lorg/chromium/blink/mojom/AttestationConveyancePreference;->validate(I)V

    iget v4, v2, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->attestation:I

    invoke-static {v4}, Lorg/chromium/blink/mojom/AttestationConveyancePreference;->toKnownValue(I)I

    move-result v4

    iput v4, v2, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->attestation:I

    const/16 v4, 0x4c

    invoke-virtual {p0, v4, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v7

    iput-boolean v7, v2, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->hmacCreateSecret:Z

    invoke-virtual {p0, v4, v6}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v7

    iput-boolean v7, v2, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->prfEnable:Z

    const/4 v7, 0x2

    invoke-virtual {p0, v4, v7}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v7

    iput-boolean v7, v2, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->enforceProtectionPolicy:Z

    const/4 v7, 0x3

    invoke-virtual {p0, v4, v7}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v7

    iput-boolean v7, v2, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->credProps:Z

    const/4 v7, 0x4

    invoke-virtual {p0, v4, v7}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v7

    iput-boolean v7, v2, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->isPaymentCredentialCreation:Z

    const/4 v7, 0x5

    invoke-virtual {p0, v4, v7}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v7

    iput-boolean v7, v2, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->minPinLengthRequested:Z

    const/4 v7, 0x6

    invoke-virtual {p0, v4, v7}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v2, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->isConditional:Z

    const/16 v4, 0x50

    invoke-virtual {p0, v4, v6}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/blink/mojom/PrfValues;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/PrfValues;

    move-result-object v4

    iput-object v4, v2, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->prfInput:Lorg/chromium/blink/mojom/PrfValues;

    const/16 v4, 0x58

    invoke-virtual {p0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v4

    iput v4, v2, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->protectionPolicy:I

    invoke-static {v4}, Lorg/chromium/blink/mojom/ProtectionPolicy;->validate(I)V

    iget v4, v2, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->protectionPolicy:I

    invoke-static {v4}, Lorg/chromium/blink/mojom/ProtectionPolicy;->toKnownValue(I)I

    move-result v4

    iput v4, v2, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->protectionPolicy:I

    const/16 v4, 0x5c

    invoke-virtual {p0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v4

    iput v4, v2, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->largeBlobEnable:I

    invoke-static {v4}, Lorg/chromium/blink/mojom/LargeBlobSupport;->validate(I)V

    iget v4, v2, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->largeBlobEnable:I

    invoke-static {v4}, Lorg/chromium/blink/mojom/LargeBlobSupport;->toKnownValue(I)I

    move-result v4

    iput v4, v2, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->largeBlobEnable:I

    const/16 v4, 0x60

    invoke-virtual {p0, v4, v6}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->appidExclude:Ljava/lang/String;

    const/16 v4, 0x68

    invoke-virtual {p0, v4, v6, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBytes(III)[B

    move-result-object v4

    iput-object v4, v2, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->credBlob:[B

    const/16 v4, 0x70

    invoke-virtual {p0, v4, v6}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/blink/mojom/RemoteDesktopClientOverride;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/RemoteDesktopClientOverride;

    move-result-object v4

    iput-object v4, v2, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->remoteDesktopClientOverride:Lorg/chromium/blink/mojom/RemoteDesktopClientOverride;

    const/16 v4, 0x78

    invoke-virtual {p0, v4, v6}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/blink/mojom/SupplementalPubKeysRequest;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/SupplementalPubKeysRequest;

    move-result-object v4

    iput-object v4, v2, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->supplementalPubKeys:Lorg/chromium/blink/mojom/SupplementalPubKeysRequest;

    const/16 v4, 0x80

    invoke-virtual {p0, v4, v6}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    if-nez v4, :cond_4

    iput-object v0, v2, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->paymentBrowserBoundKeyParameters:[Lorg/chromium/blink/mojom/PublicKeyCredentialParameters;

    goto :goto_4

    :cond_4
    invoke-virtual {v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v6, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v6, v6, [Lorg/chromium/blink/mojom/PublicKeyCredentialParameters;

    iput-object v6, v2, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->paymentBrowserBoundKeyParameters:[Lorg/chromium/blink/mojom/PublicKeyCredentialParameters;

    move v6, v3

    :goto_3
    iget v7, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v6, v7, :cond_5

    const/16 v7, 0x8

    invoke-static {v6, v7, v1, v4, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v7

    iget-object v8, v2, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->paymentBrowserBoundKeyParameters:[Lorg/chromium/blink/mojom/PublicKeyCredentialParameters;

    invoke-static {v7}, Lorg/chromium/blink/mojom/PublicKeyCredentialParameters;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/PublicKeyCredentialParameters;

    move-result-object v7

    aput-object v7, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    const/16 v0, 0x88

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v4

    iget v5, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, v2, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->attestationFormats:[Ljava/lang/String;

    move v5, v3

    :goto_5
    iget v6, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v5, v6, :cond_6

    iget-object v6, v2, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->attestationFormats:[Ljava/lang/String;

    const/16 v7, 0x8

    invoke-static {v5, v7, v1, v0, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->h(IIILorg/chromium/mojo/bindings/Decoder;Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_6
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v2

    :goto_6
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;
    .locals 2

    new-instance v0, Lorg/chromium/mojo/bindings/Message;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, p0, v1}, Lorg/chromium/mojo/bindings/Message;-><init>(Ljava/nio/ByteBuffer;Ljava/util/List;)V

    invoke-static {v0}, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;

    move-result-object p0

    return-object p0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;
    .locals 1

    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 10

    sget-object v0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->relyingParty:Lorg/chromium/blink/mojom/PublicKeyCredentialRpEntity;

    const/16 v8, 0x8

    const/4 v9, 0x0

    invoke-virtual {p1, v0, v8, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->user:Lorg/chromium/blink/mojom/PublicKeyCredentialUserEntity;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->challenge:[B

    const/16 v1, 0x18

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, v9, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode([BIII)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->publicKeyParameters:[Lorg/chromium/blink/mojom/PublicKeyCredentialParameters;

    const/16 v1, 0x20

    if-nez v0, :cond_0

    invoke-virtual {p1, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1

    :cond_0
    array-length v0, v0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v1, v9

    :goto_0
    iget-object v3, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->publicKeyParameters:[Lorg/chromium/blink/mojom/PublicKeyCredentialParameters;

    array-length v4, v3

    if-ge v1, v4, :cond_1

    aget-object v3, v3, v1

    mul-int/lit8 v4, v1, 0x8

    add-int/2addr v4, v8

    invoke-virtual {v0, v3, v4, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->timeout:Lorg/chromium/mojo_base/mojom/TimeDelta;

    const/16 v1, 0x28

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->excludeCredentials:[Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;

    const/16 v1, 0x30

    if-nez v0, :cond_2

    invoke-virtual {p1, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_3

    :cond_2
    array-length v0, v0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v1, v9

    :goto_2
    iget-object v4, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->excludeCredentials:[Lorg/chromium/blink/mojom/PublicKeyCredentialDescriptor;

    array-length v5, v4

    if-ge v1, v5, :cond_3

    aget-object v4, v4, v1

    mul-int/lit8 v5, v1, 0x8

    add-int/2addr v5, v8

    invoke-virtual {v0, v4, v5, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    iget-object v0, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->authenticatorSelection:Lorg/chromium/blink/mojom/AuthenticatorSelectionCriteria;

    const/16 v1, 0x38

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->hints:[I

    const/16 v1, 0x40

    invoke-virtual {p1, v0, v1, v9, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode([IIII)V

    iget v0, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->attestation:I

    const/16 v1, 0x48

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->hmacCreateSecret:Z

    const/16 v1, 0x4c

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->prfEnable:Z

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->enforceProtectionPolicy:Z

    const/4 v4, 0x2

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->credProps:Z

    const/4 v4, 0x3

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->isPaymentCredentialCreation:Z

    const/4 v4, 0x4

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->minPinLengthRequested:Z

    const/4 v4, 0x5

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->isConditional:Z

    const/4 v4, 0x6

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->prfInput:Lorg/chromium/blink/mojom/PrfValues;

    const/16 v1, 0x50

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v0, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->protectionPolicy:I

    const/16 v1, 0x58

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->largeBlobEnable:I

    const/16 v1, 0x5c

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->appidExclude:Ljava/lang/String;

    const/16 v1, 0x60

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->credBlob:[B

    const/16 v1, 0x68

    invoke-virtual {p1, v0, v1, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode([BIII)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->remoteDesktopClientOverride:Lorg/chromium/blink/mojom/RemoteDesktopClientOverride;

    const/16 v1, 0x70

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->supplementalPubKeys:Lorg/chromium/blink/mojom/SupplementalPubKeysRequest;

    const/16 v1, 0x78

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->paymentBrowserBoundKeyParameters:[Lorg/chromium/blink/mojom/PublicKeyCredentialParameters;

    const/16 v1, 0x80

    if-nez v0, :cond_4

    invoke-virtual {p1, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_5

    :cond_4
    array-length v0, v0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v1, v9

    :goto_4
    iget-object v3, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->paymentBrowserBoundKeyParameters:[Lorg/chromium/blink/mojom/PublicKeyCredentialParameters;

    array-length v4, v3

    if-ge v1, v4, :cond_5

    aget-object v3, v3, v1

    mul-int/lit8 v4, v1, 0x8

    add-int/2addr v4, v8

    invoke-virtual {v0, v3, v4, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    iget-object v0, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->attestationFormats:[Ljava/lang/String;

    const/16 v1, 0x88

    if-nez v0, :cond_6

    invoke-virtual {p1, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_7

    :cond_6
    array-length v0, v0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    move v6, v9

    :goto_6
    iget-object v0, p0, Lorg/chromium/blink/mojom/PublicKeyCredentialCreationOptions;->attestationFormats:[Ljava/lang/String;

    array-length v1, v0

    if-ge v6, v1, :cond_7

    aget-object v4, v0, v6

    mul-int/lit8 v1, v6, 0x8

    const/4 v7, 0x1

    move v2, v8

    move-object v3, p1

    move v5, v9

    invoke-static/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v6

    goto :goto_6

    :cond_7
    :goto_7
    return-void
.end method
