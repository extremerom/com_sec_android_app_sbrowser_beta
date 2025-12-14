.class public final Lorg/chromium/network/mojom/HttpAuthDynamicParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public allowGssapiLibraryLoad:Z

.field public allowedSchemes:[Ljava/lang/String;

.field public androidNegotiateAccountType:Ljava/lang/String;

.field public basicOverHttpEnabled:Z

.field public delegateAllowlist:Ljava/lang/String;

.field public delegateByKdcPolicy:Z

.field public enableNegotiatePort:Z

.field public negotiateDisableCnameLookup:Z

.field public ntlmV2Enabled:Z

.field public patternsAllowedToUseAllSchemes:[Ljava/lang/String;

.field public serverAllowlist:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x38

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/network/mojom/HttpAuthDynamicParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/network/mojom/HttpAuthDynamicParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x38

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/chromium/network/mojom/HttpAuthDynamicParams;->delegateByKdcPolicy:Z

    iput-boolean p1, p0, Lorg/chromium/network/mojom/HttpAuthDynamicParams;->negotiateDisableCnameLookup:Z

    iput-boolean p1, p0, Lorg/chromium/network/mojom/HttpAuthDynamicParams;->enableNegotiatePort:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/chromium/network/mojom/HttpAuthDynamicParams;->ntlmV2Enabled:Z

    iput-boolean p1, p0, Lorg/chromium/network/mojom/HttpAuthDynamicParams;->allowGssapiLibraryLoad:Z

    iput-boolean p1, p0, Lorg/chromium/network/mojom/HttpAuthDynamicParams;->basicOverHttpEnabled:Z

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/HttpAuthDynamicParams;
    .locals 10

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v1, Lorg/chromium/network/mojom/HttpAuthDynamicParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v2, Lorg/chromium/network/mojom/HttpAuthDynamicParams;

    invoke-direct {v2, v1}, Lorg/chromium/network/mojom/HttpAuthDynamicParams;-><init>(I)V

    const/4 v1, 0x1

    const/16 v3, 0x8

    invoke-virtual {p0, v3, v1}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-nez v4, :cond_1

    iput-object v0, v2, Lorg/chromium/network/mojom/HttpAuthDynamicParams;->allowedSchemes:[Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v7, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v7, v7, [Ljava/lang/String;

    iput-object v7, v2, Lorg/chromium/network/mojom/HttpAuthDynamicParams;->allowedSchemes:[Ljava/lang/String;

    move v7, v6

    :goto_0
    iget v8, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v7, v8, :cond_2

    iget-object v8, v2, Lorg/chromium/network/mojom/HttpAuthDynamicParams;->allowedSchemes:[Ljava/lang/String;

    const/16 v9, 0x8

    invoke-static {v7, v9, v3, v4, v6}, Lcom/sec/android/app/sbrowser/autofill/password/k;->h(IIILorg/chromium/mojo/bindings/Decoder;Z)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/16 v0, 0x10

    invoke-virtual {p0, v0, v6}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v4

    iget v5, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, v2, Lorg/chromium/network/mojom/HttpAuthDynamicParams;->patternsAllowedToUseAllSchemes:[Ljava/lang/String;

    move v5, v6

    :goto_2
    iget v7, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v5, v7, :cond_3

    iget-object v7, v2, Lorg/chromium/network/mojom/HttpAuthDynamicParams;->patternsAllowedToUseAllSchemes:[Ljava/lang/String;

    const/16 v8, 0x8

    invoke-static {v5, v8, v3, v0, v6}, Lcom/sec/android/app/sbrowser/autofill/password/k;->h(IIILorg/chromium/mojo/bindings/Decoder;Z)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    const/16 v0, 0x18

    invoke-virtual {p0, v0, v6}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/network/mojom/HttpAuthDynamicParams;->serverAllowlist:Ljava/lang/String;

    const/16 v0, 0x20

    invoke-virtual {p0, v0, v6}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/network/mojom/HttpAuthDynamicParams;->delegateAllowlist:Ljava/lang/String;

    const/16 v0, 0x28

    invoke-virtual {p0, v0, v6}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v3

    iput-boolean v3, v2, Lorg/chromium/network/mojom/HttpAuthDynamicParams;->delegateByKdcPolicy:Z

    invoke-virtual {p0, v0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v1

    iput-boolean v1, v2, Lorg/chromium/network/mojom/HttpAuthDynamicParams;->negotiateDisableCnameLookup:Z

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v1

    iput-boolean v1, v2, Lorg/chromium/network/mojom/HttpAuthDynamicParams;->enableNegotiatePort:Z

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v1

    iput-boolean v1, v2, Lorg/chromium/network/mojom/HttpAuthDynamicParams;->ntlmV2Enabled:Z

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v1

    iput-boolean v1, v2, Lorg/chromium/network/mojom/HttpAuthDynamicParams;->allowGssapiLibraryLoad:Z

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v2, Lorg/chromium/network/mojom/HttpAuthDynamicParams;->basicOverHttpEnabled:Z

    const/16 v0, 0x30

    invoke-virtual {p0, v0, v6}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/network/mojom/HttpAuthDynamicParams;->androidNegotiateAccountType:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v2

    :goto_3
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 12

    sget-object v0, Lorg/chromium/network/mojom/HttpAuthDynamicParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/network/mojom/HttpAuthDynamicParams;->allowedSchemes:[Ljava/lang/String;

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/16 v10, 0x8

    const/4 v11, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1, v10, v2}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1

    :cond_0
    array-length v0, v0

    invoke-virtual {p1, v0, v10, v1}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v8, v11

    :goto_0
    iget-object v3, p0, Lorg/chromium/network/mojom/HttpAuthDynamicParams;->allowedSchemes:[Ljava/lang/String;

    array-length v4, v3

    if-ge v8, v4, :cond_1

    aget-object v6, v3, v8

    mul-int/lit8 v3, v8, 0x8

    const/4 v9, 0x1

    move v4, v10

    move-object v5, v0

    move v7, v11

    invoke-static/range {v3 .. v9}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v8

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/chromium/network/mojom/HttpAuthDynamicParams;->patternsAllowedToUseAllSchemes:[Ljava/lang/String;

    const/16 v3, 0x10

    if-nez v0, :cond_2

    invoke-virtual {p1, v3, v11}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_3

    :cond_2
    array-length v0, v0

    invoke-virtual {p1, v0, v3, v1}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v8, v11

    :goto_2
    iget-object v1, p0, Lorg/chromium/network/mojom/HttpAuthDynamicParams;->patternsAllowedToUseAllSchemes:[Ljava/lang/String;

    array-length v3, v1

    if-ge v8, v3, :cond_3

    aget-object v6, v1, v8

    mul-int/lit8 v3, v8, 0x8

    const/4 v9, 0x1

    move v4, v10

    move-object v5, v0

    move v7, v11

    invoke-static/range {v3 .. v9}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v8

    goto :goto_2

    :cond_3
    :goto_3
    iget-object v0, p0, Lorg/chromium/network/mojom/HttpAuthDynamicParams;->serverAllowlist:Ljava/lang/String;

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v11}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/HttpAuthDynamicParams;->delegateAllowlist:Ljava/lang/String;

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1, v11}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/HttpAuthDynamicParams;->delegateByKdcPolicy:Z

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1, v11}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/HttpAuthDynamicParams;->negotiateDisableCnameLookup:Z

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/HttpAuthDynamicParams;->enableNegotiatePort:Z

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/HttpAuthDynamicParams;->ntlmV2Enabled:Z

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/HttpAuthDynamicParams;->allowGssapiLibraryLoad:Z

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/HttpAuthDynamicParams;->basicOverHttpEnabled:Z

    const/4 v2, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-object p0, p0, Lorg/chromium/network/mojom/HttpAuthDynamicParams;->androidNegotiateAccountType:Ljava/lang/String;

    const/16 v0, 0x30

    invoke-virtual {p1, p0, v0, v11}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    return-void
.end method
