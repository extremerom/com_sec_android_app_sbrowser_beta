.class public final Lorg/chromium/network/mojom/ParsedHeaders;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public acceptCh:[I

.field public allowCrossOriginEventReporting:Z

.field public allowCspFrom:Lorg/chromium/network/mojom/AllowCspFromHeaderValue;

.field public availLanguage:[Ljava/lang/String;

.field public clientHintsIgnoredDueToClearSiteDataHeader:Z

.field public contentLanguage:[Ljava/lang/String;

.field public contentSecurityPolicy:[Lorg/chromium/network/mojom/ContentSecurityPolicy;

.field public cookieIndices:[Ljava/lang/String;

.field public criticalCh:[I

.field public crossOriginEmbedderPolicy:Lorg/chromium/network/mojom/CrossOriginEmbedderPolicy;

.field public crossOriginOpenerPolicy:Lorg/chromium/network/mojom/CrossOriginOpenerPolicy;

.field public documentIsolationPolicy:Lorg/chromium/network/mojom/DocumentIsolationPolicy;

.field public linkHeaders:[Lorg/chromium/network/mojom/LinkHeader;

.field public noVarySearchWithParseError:Lorg/chromium/network/mojom/NoVarySearchWithParseError;

.field public observeBrowsingTopics:Z

.field public originAgentCluster:I

.field public reportingEndpoints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public supportsLoadingMode:[I

.field public timingAllowOrigin:Lorg/chromium/network/mojom/TimingAllowOrigin;

.field public xfo:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0xa8

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/network/mojom/ParsedHeaders;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/network/mojom/ParsedHeaders;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0xa8

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/chromium/network/mojom/ParsedHeaders;->xfo:I

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/ParsedHeaders;
    .locals 14

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v1, Lorg/chromium/network/mojom/ParsedHeaders;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v2, Lorg/chromium/network/mojom/ParsedHeaders;

    invoke-direct {v2, v1}, Lorg/chromium/network/mojom/ParsedHeaders;-><init>(I)V

    const/16 v1, 0x8

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v6

    iget v7, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v7, v7, [Lorg/chromium/network/mojom/ContentSecurityPolicy;

    iput-object v7, v2, Lorg/chromium/network/mojom/ParsedHeaders;->contentSecurityPolicy:[Lorg/chromium/network/mojom/ContentSecurityPolicy;

    move v7, v3

    :goto_0
    iget v8, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v7, v8, :cond_1

    const/16 v8, 0x8

    invoke-static {v7, v8, v1, v4, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v8

    iget-object v9, v2, Lorg/chromium/network/mojom/ParsedHeaders;->contentSecurityPolicy:[Lorg/chromium/network/mojom/ContentSecurityPolicy;

    invoke-static {v8}, Lorg/chromium/network/mojom/ContentSecurityPolicy;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/ContentSecurityPolicy;

    move-result-object v8

    aput-object v8, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_f

    :cond_1
    const/16 v4, 0x10

    invoke-static {p0, v4}, Lorg/chromium/network/mojom/AllowCspFromHeaderValue;->decode(Lorg/chromium/mojo/bindings/Decoder;I)Lorg/chromium/network/mojom/AllowCspFromHeaderValue;

    move-result-object v6

    iput-object v6, v2, Lorg/chromium/network/mojom/ParsedHeaders;->allowCspFrom:Lorg/chromium/network/mojom/AllowCspFromHeaderValue;

    const/16 v6, 0x20

    invoke-virtual {p0, v6, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v6

    invoke-static {v6}, Lorg/chromium/network/mojom/CrossOriginEmbedderPolicy;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/CrossOriginEmbedderPolicy;

    move-result-object v6

    iput-object v6, v2, Lorg/chromium/network/mojom/ParsedHeaders;->crossOriginEmbedderPolicy:Lorg/chromium/network/mojom/CrossOriginEmbedderPolicy;

    const/16 v6, 0x28

    invoke-virtual {p0, v6, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v6

    invoke-static {v6}, Lorg/chromium/network/mojom/CrossOriginOpenerPolicy;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/CrossOriginOpenerPolicy;

    move-result-object v6

    iput-object v6, v2, Lorg/chromium/network/mojom/ParsedHeaders;->crossOriginOpenerPolicy:Lorg/chromium/network/mojom/CrossOriginOpenerPolicy;

    const/16 v6, 0x30

    invoke-virtual {p0, v6, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v6

    invoke-static {v6}, Lorg/chromium/network/mojom/DocumentIsolationPolicy;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/DocumentIsolationPolicy;

    move-result-object v6

    iput-object v6, v2, Lorg/chromium/network/mojom/ParsedHeaders;->documentIsolationPolicy:Lorg/chromium/network/mojom/DocumentIsolationPolicy;

    const/16 v6, 0x38

    invoke-virtual {p0, v6}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v6

    iput v6, v2, Lorg/chromium/network/mojom/ParsedHeaders;->originAgentCluster:I

    invoke-static {v6}, Lorg/chromium/network/mojom/OriginAgentClusterValue;->validate(I)V

    iget v6, v2, Lorg/chromium/network/mojom/ParsedHeaders;->originAgentCluster:I

    invoke-static {v6}, Lorg/chromium/network/mojom/OriginAgentClusterValue;->toKnownValue(I)I

    move-result v6

    iput v6, v2, Lorg/chromium/network/mojom/ParsedHeaders;->originAgentCluster:I

    const/16 v6, 0x3c

    invoke-virtual {p0, v6, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v7

    iput-boolean v7, v2, Lorg/chromium/network/mojom/ParsedHeaders;->clientHintsIgnoredDueToClearSiteDataHeader:Z

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v8

    iput-boolean v8, v2, Lorg/chromium/network/mojom/ParsedHeaders;->observeBrowsingTopics:Z

    const/4 v8, 0x2

    invoke-virtual {p0, v6, v8}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v6

    iput-boolean v6, v2, Lorg/chromium/network/mojom/ParsedHeaders;->allowCrossOriginEventReporting:Z

    const/16 v6, 0x40

    invoke-virtual {p0, v6, v7, v5}, Lorg/chromium/mojo/bindings/Decoder;->readInts(III)[I

    move-result-object v6

    iput-object v6, v2, Lorg/chromium/network/mojom/ParsedHeaders;->acceptCh:[I

    if-eqz v6, :cond_2

    move v6, v3

    :goto_1
    iget-object v8, v2, Lorg/chromium/network/mojom/ParsedHeaders;->acceptCh:[I

    array-length v9, v8

    if-ge v6, v9, :cond_2

    aget v8, v8, v6

    invoke-static {v8}, Lorg/chromium/network/mojom/WebClientHintsType;->validate(I)V

    iget-object v8, v2, Lorg/chromium/network/mojom/ParsedHeaders;->acceptCh:[I

    aget v9, v8, v6

    invoke-static {v9}, Lorg/chromium/network/mojom/WebClientHintsType;->toKnownValue(I)I

    move-result v9

    aput v9, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    const/16 v6, 0x48

    invoke-virtual {p0, v6, v7, v5}, Lorg/chromium/mojo/bindings/Decoder;->readInts(III)[I

    move-result-object v6

    iput-object v6, v2, Lorg/chromium/network/mojom/ParsedHeaders;->criticalCh:[I

    if-eqz v6, :cond_3

    move v6, v3

    :goto_2
    iget-object v8, v2, Lorg/chromium/network/mojom/ParsedHeaders;->criticalCh:[I

    array-length v9, v8

    if-ge v6, v9, :cond_3

    aget v8, v8, v6

    invoke-static {v8}, Lorg/chromium/network/mojom/WebClientHintsType;->validate(I)V

    iget-object v8, v2, Lorg/chromium/network/mojom/ParsedHeaders;->criticalCh:[I

    aget v9, v8, v6

    invoke-static {v9}, Lorg/chromium/network/mojom/WebClientHintsType;->toKnownValue(I)I

    move-result v9

    aput v9, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    const/16 v6, 0x50

    invoke-virtual {p0, v6}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v6

    iput v6, v2, Lorg/chromium/network/mojom/ParsedHeaders;->xfo:I

    invoke-static {v6}, Lorg/chromium/network/mojom/XFrameOptionsValue;->validate(I)V

    iget v6, v2, Lorg/chromium/network/mojom/ParsedHeaders;->xfo:I

    invoke-static {v6}, Lorg/chromium/network/mojom/XFrameOptionsValue;->toKnownValue(I)I

    move-result v6

    iput v6, v2, Lorg/chromium/network/mojom/ParsedHeaders;->xfo:I

    const/16 v6, 0x58

    invoke-virtual {p0, v6, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v8

    iget v9, v8, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v9, v9, [Lorg/chromium/network/mojom/LinkHeader;

    iput-object v9, v2, Lorg/chromium/network/mojom/ParsedHeaders;->linkHeaders:[Lorg/chromium/network/mojom/LinkHeader;

    move v9, v3

    :goto_3
    iget v10, v8, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v9, v10, :cond_4

    const/16 v10, 0x8

    invoke-static {v9, v10, v1, v6, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v10

    iget-object v11, v2, Lorg/chromium/network/mojom/ParsedHeaders;->linkHeaders:[Lorg/chromium/network/mojom/LinkHeader;

    invoke-static {v10}, Lorg/chromium/network/mojom/LinkHeader;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/LinkHeader;

    move-result-object v10

    aput-object v10, v11, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_4
    const/16 v6, 0x60

    invoke-static {p0, v6}, Lorg/chromium/network/mojom/TimingAllowOrigin;->decode(Lorg/chromium/mojo/bindings/Decoder;I)Lorg/chromium/network/mojom/TimingAllowOrigin;

    move-result-object v6

    iput-object v6, v2, Lorg/chromium/network/mojom/ParsedHeaders;->timingAllowOrigin:Lorg/chromium/network/mojom/TimingAllowOrigin;

    const/16 v6, 0x70

    invoke-virtual {p0, v6, v3, v5}, Lorg/chromium/mojo/bindings/Decoder;->readInts(III)[I

    move-result-object v6

    iput-object v6, v2, Lorg/chromium/network/mojom/ParsedHeaders;->supportsLoadingMode:[I

    move v6, v3

    :goto_4
    iget-object v8, v2, Lorg/chromium/network/mojom/ParsedHeaders;->supportsLoadingMode:[I

    array-length v9, v8

    if-ge v6, v9, :cond_5

    aget v8, v8, v6

    invoke-static {v8}, Lorg/chromium/network/mojom/LoadingMode;->validate(I)V

    iget-object v8, v2, Lorg/chromium/network/mojom/ParsedHeaders;->supportsLoadingMode:[I

    aget v9, v8, v6

    invoke-static {v9}, Lorg/chromium/network/mojom/LoadingMode;->toKnownValue(I)I

    move-result v9

    aput v9, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_5
    const/16 v6, 0x78

    invoke-virtual {p0, v6, v7}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v6

    if-nez v6, :cond_6

    iput-object v0, v2, Lorg/chromium/network/mojom/ParsedHeaders;->reportingEndpoints:Ljava/util/Map;

    goto :goto_8

    :cond_6
    invoke-virtual {v6}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForMap()V

    invoke-virtual {v6, v1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v8

    invoke-virtual {v8, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v9

    iget v10, v9, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v11, v10, [Ljava/lang/String;

    move v12, v3

    :goto_5
    iget v13, v9, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v12, v13, :cond_7

    const/16 v13, 0x8

    invoke-static {v12, v13, v1, v8, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->h(IIILorg/chromium/mojo/bindings/Decoder;Z)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_7
    invoke-virtual {v6, v4, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-virtual {v4, v10}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v6

    iget v8, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v8, v8, [Ljava/lang/String;

    move v9, v3

    :goto_6
    iget v12, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v9, v12, :cond_8

    const/16 v12, 0x8

    invoke-static {v9, v12, v1, v4, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->h(IIILorg/chromium/mojo/bindings/Decoder;Z)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_8
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v2, Lorg/chromium/network/mojom/ParsedHeaders;->reportingEndpoints:Ljava/util/Map;

    move v4, v3

    :goto_7
    if-ge v4, v10, :cond_9

    iget-object v6, v2, Lorg/chromium/network/mojom/ParsedHeaders;->reportingEndpoints:Ljava/util/Map;

    aget-object v9, v11, v4

    aget-object v12, v8, v4

    invoke-interface {v6, v9, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_9
    :goto_8
    const/16 v4, 0x80

    invoke-virtual {p0, v4, v7}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    if-nez v4, :cond_a

    iput-object v0, v2, Lorg/chromium/network/mojom/ParsedHeaders;->cookieIndices:[Ljava/lang/String;

    goto :goto_a

    :cond_a
    invoke-virtual {v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v6

    iget v8, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v8, v8, [Ljava/lang/String;

    iput-object v8, v2, Lorg/chromium/network/mojom/ParsedHeaders;->cookieIndices:[Ljava/lang/String;

    move v8, v3

    :goto_9
    iget v9, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v8, v9, :cond_b

    iget-object v9, v2, Lorg/chromium/network/mojom/ParsedHeaders;->cookieIndices:[Ljava/lang/String;

    const/16 v10, 0x8

    invoke-static {v8, v10, v1, v4, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->h(IIILorg/chromium/mojo/bindings/Decoder;Z)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_b
    :goto_a
    const/16 v4, 0x88

    invoke-virtual {p0, v4, v7}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    if-nez v4, :cond_c

    iput-object v0, v2, Lorg/chromium/network/mojom/ParsedHeaders;->availLanguage:[Ljava/lang/String;

    goto :goto_c

    :cond_c
    invoke-virtual {v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v6

    iget v8, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v8, v8, [Ljava/lang/String;

    iput-object v8, v2, Lorg/chromium/network/mojom/ParsedHeaders;->availLanguage:[Ljava/lang/String;

    move v8, v3

    :goto_b
    iget v9, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v8, v9, :cond_d

    iget-object v9, v2, Lorg/chromium/network/mojom/ParsedHeaders;->availLanguage:[Ljava/lang/String;

    const/16 v10, 0x8

    invoke-static {v8, v10, v1, v4, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->h(IIILorg/chromium/mojo/bindings/Decoder;Z)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    :cond_d
    :goto_c
    const/16 v4, 0x90

    invoke-virtual {p0, v4, v7}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    if-nez v4, :cond_e

    iput-object v0, v2, Lorg/chromium/network/mojom/ParsedHeaders;->contentLanguage:[Ljava/lang/String;

    goto :goto_e

    :cond_e
    invoke-virtual {v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v5, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, v2, Lorg/chromium/network/mojom/ParsedHeaders;->contentLanguage:[Ljava/lang/String;

    move v5, v3

    :goto_d
    iget v6, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v5, v6, :cond_f

    iget-object v6, v2, Lorg/chromium/network/mojom/ParsedHeaders;->contentLanguage:[Ljava/lang/String;

    const/16 v7, 0x8

    invoke-static {v5, v7, v1, v4, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->h(IIILorg/chromium/mojo/bindings/Decoder;Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_f
    :goto_e
    const/16 v0, 0x98

    invoke-static {p0, v0}, Lorg/chromium/network/mojom/NoVarySearchWithParseError;->decode(Lorg/chromium/mojo/bindings/Decoder;I)Lorg/chromium/network/mojom/NoVarySearchWithParseError;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/network/mojom/ParsedHeaders;->noVarySearchWithParseError:Lorg/chromium/network/mojom/NoVarySearchWithParseError;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v2

    :goto_f
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 20

    move-object/from16 v0, p0

    sget-object v1, Lorg/chromium/network/mojom/ParsedHeaders;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v1

    iget-object v2, v0, Lorg/chromium/network/mojom/ParsedHeaders;->contentSecurityPolicy:[Lorg/chromium/network/mojom/ContentSecurityPolicy;

    const/4 v3, -0x1

    const/16 v11, 0x8

    const/4 v12, 0x0

    if-nez v2, :cond_0

    invoke-virtual {v1, v11, v12}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1

    :cond_0
    array-length v2, v2

    invoke-virtual {v1, v2, v11, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    move v4, v12

    :goto_0
    iget-object v5, v0, Lorg/chromium/network/mojom/ParsedHeaders;->contentSecurityPolicy:[Lorg/chromium/network/mojom/ContentSecurityPolicy;

    array-length v6, v5

    if-ge v4, v6, :cond_1

    aget-object v5, v5, v4

    mul-int/lit8 v6, v4, 0x8

    add-int/2addr v6, v11

    invoke-virtual {v2, v5, v6, v12}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v2, v0, Lorg/chromium/network/mojom/ParsedHeaders;->allowCspFrom:Lorg/chromium/network/mojom/AllowCspFromHeaderValue;

    const/16 v13, 0x10

    const/4 v14, 0x1

    invoke-virtual {v1, v2, v13, v14}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Union;IZ)V

    iget-object v2, v0, Lorg/chromium/network/mojom/ParsedHeaders;->crossOriginEmbedderPolicy:Lorg/chromium/network/mojom/CrossOriginEmbedderPolicy;

    const/16 v4, 0x20

    invoke-virtual {v1, v2, v4, v12}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v2, v0, Lorg/chromium/network/mojom/ParsedHeaders;->crossOriginOpenerPolicy:Lorg/chromium/network/mojom/CrossOriginOpenerPolicy;

    const/16 v4, 0x28

    invoke-virtual {v1, v2, v4, v12}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v2, v0, Lorg/chromium/network/mojom/ParsedHeaders;->documentIsolationPolicy:Lorg/chromium/network/mojom/DocumentIsolationPolicy;

    const/16 v4, 0x30

    invoke-virtual {v1, v2, v4, v12}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v2, v0, Lorg/chromium/network/mojom/ParsedHeaders;->originAgentCluster:I

    const/16 v4, 0x38

    invoke-virtual {v1, v2, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-boolean v2, v0, Lorg/chromium/network/mojom/ParsedHeaders;->clientHintsIgnoredDueToClearSiteDataHeader:Z

    const/16 v4, 0x3c

    invoke-virtual {v1, v2, v4, v12}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/network/mojom/ParsedHeaders;->observeBrowsingTopics:Z

    invoke-virtual {v1, v2, v4, v14}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/network/mojom/ParsedHeaders;->allowCrossOriginEventReporting:Z

    const/4 v5, 0x2

    invoke-virtual {v1, v2, v4, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-object v2, v0, Lorg/chromium/network/mojom/ParsedHeaders;->acceptCh:[I

    const/16 v4, 0x40

    invoke-virtual {v1, v2, v4, v14, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode([IIII)V

    iget-object v2, v0, Lorg/chromium/network/mojom/ParsedHeaders;->criticalCh:[I

    const/16 v4, 0x48

    invoke-virtual {v1, v2, v4, v14, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode([IIII)V

    iget v2, v0, Lorg/chromium/network/mojom/ParsedHeaders;->xfo:I

    const/16 v4, 0x50

    invoke-virtual {v1, v2, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v2, v0, Lorg/chromium/network/mojom/ParsedHeaders;->linkHeaders:[Lorg/chromium/network/mojom/LinkHeader;

    const/16 v4, 0x58

    if-nez v2, :cond_2

    invoke-virtual {v1, v4, v12}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_3

    :cond_2
    array-length v2, v2

    invoke-virtual {v1, v2, v4, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    move v4, v12

    :goto_2
    iget-object v5, v0, Lorg/chromium/network/mojom/ParsedHeaders;->linkHeaders:[Lorg/chromium/network/mojom/LinkHeader;

    array-length v6, v5

    if-ge v4, v6, :cond_3

    aget-object v5, v5, v4

    mul-int/lit8 v6, v4, 0x8

    add-int/2addr v6, v11

    invoke-virtual {v2, v5, v6, v12}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    iget-object v2, v0, Lorg/chromium/network/mojom/ParsedHeaders;->timingAllowOrigin:Lorg/chromium/network/mojom/TimingAllowOrigin;

    const/16 v4, 0x60

    invoke-virtual {v1, v2, v4, v14}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Union;IZ)V

    iget-object v2, v0, Lorg/chromium/network/mojom/ParsedHeaders;->supportsLoadingMode:[I

    const/16 v4, 0x70

    invoke-virtual {v1, v2, v4, v12, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode([IIII)V

    iget-object v2, v0, Lorg/chromium/network/mojom/ParsedHeaders;->reportingEndpoints:Ljava/util/Map;

    const/16 v4, 0x78

    if-nez v2, :cond_4

    invoke-virtual {v1, v4, v14}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto/16 :goto_7

    :cond_4
    invoke-virtual {v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encoderForMap(I)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    iget-object v4, v0, Lorg/chromium/network/mojom/ParsedHeaders;->reportingEndpoints:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v15

    new-array v10, v15, [Ljava/lang/String;

    new-array v9, v15, [Ljava/lang/String;

    iget-object v4, v0, Lorg/chromium/network/mojom/ParsedHeaders;->reportingEndpoints:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v12

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v10, v5

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v9, v5

    add-int/2addr v5, v14

    goto :goto_4

    :cond_5
    invoke-virtual {v2, v15, v11, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v16

    move v8, v12

    :goto_5
    if-ge v8, v15, :cond_6

    aget-object v7, v10, v8

    mul-int/lit8 v4, v8, 0x8

    const/16 v17, 0x1

    move v5, v11

    move-object/from16 v6, v16

    move/from16 v18, v8

    move v8, v12

    move-object/from16 v19, v9

    move/from16 v9, v18

    move-object/from16 v18, v10

    move/from16 v10, v17

    invoke-static/range {v4 .. v10}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v8

    move-object/from16 v10, v18

    move-object/from16 v9, v19

    goto :goto_5

    :cond_6
    move-object/from16 v19, v9

    invoke-virtual {v2, v15, v13, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    move v9, v12

    :goto_6
    if-ge v9, v15, :cond_7

    aget-object v7, v19, v9

    mul-int/lit8 v4, v9, 0x8

    const/4 v10, 0x1

    move v5, v11

    move-object v6, v2

    move v8, v12

    invoke-static/range {v4 .. v10}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v9

    goto :goto_6

    :cond_7
    :goto_7
    iget-object v2, v0, Lorg/chromium/network/mojom/ParsedHeaders;->cookieIndices:[Ljava/lang/String;

    const/16 v4, 0x80

    if-nez v2, :cond_8

    invoke-virtual {v1, v4, v14}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_9

    :cond_8
    array-length v2, v2

    invoke-virtual {v1, v2, v4, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    move v9, v12

    :goto_8
    iget-object v4, v0, Lorg/chromium/network/mojom/ParsedHeaders;->cookieIndices:[Ljava/lang/String;

    array-length v5, v4

    if-ge v9, v5, :cond_9

    aget-object v7, v4, v9

    mul-int/lit8 v4, v9, 0x8

    const/4 v10, 0x1

    move v5, v11

    move-object v6, v2

    move v8, v12

    invoke-static/range {v4 .. v10}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v9

    goto :goto_8

    :cond_9
    :goto_9
    iget-object v2, v0, Lorg/chromium/network/mojom/ParsedHeaders;->availLanguage:[Ljava/lang/String;

    const/16 v4, 0x88

    if-nez v2, :cond_a

    invoke-virtual {v1, v4, v14}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_b

    :cond_a
    array-length v2, v2

    invoke-virtual {v1, v2, v4, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    move v9, v12

    :goto_a
    iget-object v4, v0, Lorg/chromium/network/mojom/ParsedHeaders;->availLanguage:[Ljava/lang/String;

    array-length v5, v4

    if-ge v9, v5, :cond_b

    aget-object v7, v4, v9

    mul-int/lit8 v4, v9, 0x8

    const/4 v10, 0x1

    move v5, v11

    move-object v6, v2

    move v8, v12

    invoke-static/range {v4 .. v10}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v9

    goto :goto_a

    :cond_b
    :goto_b
    iget-object v2, v0, Lorg/chromium/network/mojom/ParsedHeaders;->contentLanguage:[Ljava/lang/String;

    const/16 v4, 0x90

    if-nez v2, :cond_c

    invoke-virtual {v1, v4, v14}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_d

    :cond_c
    array-length v2, v2

    invoke-virtual {v1, v2, v4, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    move v9, v12

    :goto_c
    iget-object v3, v0, Lorg/chromium/network/mojom/ParsedHeaders;->contentLanguage:[Ljava/lang/String;

    array-length v4, v3

    if-ge v9, v4, :cond_d

    aget-object v7, v3, v9

    mul-int/lit8 v4, v9, 0x8

    const/4 v10, 0x1

    move v5, v11

    move-object v6, v2

    move v8, v12

    invoke-static/range {v4 .. v10}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v9

    goto :goto_c

    :cond_d
    :goto_d
    iget-object v0, v0, Lorg/chromium/network/mojom/ParsedHeaders;->noVarySearchWithParseError:Lorg/chromium/network/mojom/NoVarySearchWithParseError;

    const/16 v2, 0x98

    invoke-virtual {v1, v0, v2, v14}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Union;IZ)V

    return-void
.end method
