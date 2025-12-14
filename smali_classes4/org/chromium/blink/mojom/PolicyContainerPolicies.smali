.class public final Lorg/chromium/blink/mojom/PolicyContainerPolicies;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public allowCrossOriginIsolation:Z

.field public canNavigateTopWithoutUserGesture:Z

.field public contentSecurityPolicies:[Lorg/chromium/network/mojom/ContentSecurityPolicy;

.field public crossOriginEmbedderPolicy:Lorg/chromium/network/mojom/CrossOriginEmbedderPolicy;

.field public crossOriginIsolationEnabledByDip:Z

.field public ipAddressSpace:I

.field public isCredentialless:Z

.field public referrerPolicy:I

.field public sandboxFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x28

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/PolicyContainerPolicies;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/PolicyContainerPolicies;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 2

    const/16 v0, 0x28

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    const/4 p1, 0x1

    iput p1, p0, Lorg/chromium/blink/mojom/PolicyContainerPolicies;->referrerPolicy:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/blink/mojom/PolicyContainerPolicies;->isCredentialless:Z

    iput v0, p0, Lorg/chromium/blink/mojom/PolicyContainerPolicies;->sandboxFlags:I

    const/4 v1, 0x3

    iput v1, p0, Lorg/chromium/blink/mojom/PolicyContainerPolicies;->ipAddressSpace:I

    iput-boolean p1, p0, Lorg/chromium/blink/mojom/PolicyContainerPolicies;->canNavigateTopWithoutUserGesture:Z

    iput-boolean v0, p0, Lorg/chromium/blink/mojom/PolicyContainerPolicies;->allowCrossOriginIsolation:Z

    iput-boolean v0, p0, Lorg/chromium/blink/mojom/PolicyContainerPolicies;->crossOriginIsolationEnabledByDip:Z

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/PolicyContainerPolicies;
    .locals 8

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/blink/mojom/PolicyContainerPolicies;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/blink/mojom/PolicyContainerPolicies;

    invoke-direct {v1, v0}, Lorg/chromium/blink/mojom/PolicyContainerPolicies;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/network/mojom/CrossOriginEmbedderPolicy;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/CrossOriginEmbedderPolicy;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/blink/mojom/PolicyContainerPolicies;->crossOriginEmbedderPolicy:Lorg/chromium/network/mojom/CrossOriginEmbedderPolicy;

    const/16 v3, 0x10

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v3

    iput v3, v1, Lorg/chromium/blink/mojom/PolicyContainerPolicies;->referrerPolicy:I

    invoke-static {v3}, Lorg/chromium/network/mojom/ReferrerPolicy;->validate(I)V

    iget v3, v1, Lorg/chromium/blink/mojom/PolicyContainerPolicies;->referrerPolicy:I

    invoke-static {v3}, Lorg/chromium/network/mojom/ReferrerPolicy;->toKnownValue(I)I

    move-result v3

    iput v3, v1, Lorg/chromium/blink/mojom/PolicyContainerPolicies;->referrerPolicy:I

    const/16 v3, 0x14

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v1, Lorg/chromium/blink/mojom/PolicyContainerPolicies;->isCredentialless:Z

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v1, Lorg/chromium/blink/mojom/PolicyContainerPolicies;->canNavigateTopWithoutUserGesture:Z

    const/4 v4, 0x2

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v1, Lorg/chromium/blink/mojom/PolicyContainerPolicies;->allowCrossOriginIsolation:Z

    const/4 v4, 0x3

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v3

    iput-boolean v3, v1, Lorg/chromium/blink/mojom/PolicyContainerPolicies;->crossOriginIsolationEnabledByDip:Z

    const/16 v3, 0x18

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v4

    iget v5, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v5, v5, [Lorg/chromium/network/mojom/ContentSecurityPolicy;

    iput-object v5, v1, Lorg/chromium/blink/mojom/PolicyContainerPolicies;->contentSecurityPolicies:[Lorg/chromium/network/mojom/ContentSecurityPolicy;

    move v5, v2

    :goto_0
    iget v6, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v5, v6, :cond_1

    const/16 v6, 0x8

    invoke-static {v5, v6, v0, v3, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v6

    iget-object v7, v1, Lorg/chromium/blink/mojom/PolicyContainerPolicies;->contentSecurityPolicies:[Lorg/chromium/network/mojom/ContentSecurityPolicy;

    invoke-static {v6}, Lorg/chromium/network/mojom/ContentSecurityPolicy;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/ContentSecurityPolicy;

    move-result-object v6

    aput-object v6, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/PolicyContainerPolicies;->sandboxFlags:I

    invoke-static {v0}, Lorg/chromium/network/mojom/WebSandboxFlags;->validate(I)V

    iget v0, v1, Lorg/chromium/blink/mojom/PolicyContainerPolicies;->sandboxFlags:I

    invoke-static {v0}, Lorg/chromium/network/mojom/WebSandboxFlags;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/PolicyContainerPolicies;->sandboxFlags:I

    const/16 v0, 0x24

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/PolicyContainerPolicies;->ipAddressSpace:I

    invoke-static {v0}, Lorg/chromium/network/mojom/IpAddressSpace;->validate(I)V

    iget v0, v1, Lorg/chromium/blink/mojom/PolicyContainerPolicies;->ipAddressSpace:I

    invoke-static {v0}, Lorg/chromium/network/mojom/IpAddressSpace;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/PolicyContainerPolicies;->ipAddressSpace:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :goto_1
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 6

    sget-object v0, Lorg/chromium/blink/mojom/PolicyContainerPolicies;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/blink/mojom/PolicyContainerPolicies;->crossOriginEmbedderPolicy:Lorg/chromium/network/mojom/CrossOriginEmbedderPolicy;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v0, p0, Lorg/chromium/blink/mojom/PolicyContainerPolicies;->referrerPolicy:I

    const/16 v3, 0x10

    invoke-virtual {p1, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/PolicyContainerPolicies;->isCredentialless:Z

    const/16 v3, 0x14

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/PolicyContainerPolicies;->canNavigateTopWithoutUserGesture:Z

    const/4 v4, 0x1

    invoke-virtual {p1, v0, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/PolicyContainerPolicies;->allowCrossOriginIsolation:Z

    const/4 v4, 0x2

    invoke-virtual {p1, v0, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/PolicyContainerPolicies;->crossOriginIsolationEnabledByDip:Z

    const/4 v4, 0x3

    invoke-virtual {p1, v0, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/PolicyContainerPolicies;->contentSecurityPolicies:[Lorg/chromium/network/mojom/ContentSecurityPolicy;

    const/16 v3, 0x18

    if-nez v0, :cond_0

    invoke-virtual {p1, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1

    :cond_0
    array-length v0, v0

    const/4 v4, -0x1

    invoke-virtual {p1, v0, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lorg/chromium/blink/mojom/PolicyContainerPolicies;->contentSecurityPolicies:[Lorg/chromium/network/mojom/ContentSecurityPolicy;

    array-length v5, v4

    if-ge v3, v5, :cond_1

    aget-object v4, v4, v3

    mul-int/lit8 v5, v3, 0x8

    add-int/2addr v5, v1

    invoke-virtual {v0, v4, v5, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget v0, p0, Lorg/chromium/blink/mojom/PolicyContainerPolicies;->sandboxFlags:I

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget p0, p0, Lorg/chromium/blink/mojom/PolicyContainerPolicies;->ipAddressSpace:I

    const/16 v0, 0x24

    invoke-virtual {p1, p0, v0}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    return-void
.end method
