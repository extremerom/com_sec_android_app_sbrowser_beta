.class public final Lorg/chromium/blink/mojom/AiLanguageModelCreateOptions;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public expectedInputs:[Lorg/chromium/blink/mojom/AiLanguageModelExpectedInput;

.field public initialPrompts:[Lorg/chromium/blink/mojom/AiLanguageModelPrompt;

.field public samplingParams:Lorg/chromium/blink/mojom/AiLanguageModelSamplingParams;

.field public systemPrompt:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x28

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/AiLanguageModelCreateOptions;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/AiLanguageModelCreateOptions;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x28

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/AiLanguageModelCreateOptions;
    .locals 11

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v1, Lorg/chromium/blink/mojom/AiLanguageModelCreateOptions;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v2, Lorg/chromium/blink/mojom/AiLanguageModelCreateOptions;

    invoke-direct {v2, v1}, Lorg/chromium/blink/mojom/AiLanguageModelCreateOptions;-><init>(I)V

    const/4 v1, 0x1

    const/16 v3, 0x8

    invoke-virtual {p0, v3, v1}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/blink/mojom/AiLanguageModelSamplingParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/AiLanguageModelSamplingParams;

    move-result-object v4

    iput-object v4, v2, Lorg/chromium/blink/mojom/AiLanguageModelCreateOptions;->samplingParams:Lorg/chromium/blink/mojom/AiLanguageModelSamplingParams;

    const/16 v4, 0x10

    invoke-virtual {p0, v4, v1}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lorg/chromium/blink/mojom/AiLanguageModelCreateOptions;->systemPrompt:Ljava/lang/String;

    const/16 v4, 0x18

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    const/4 v6, -0x1

    invoke-virtual {v4, v6}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v7

    iget v8, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v8, v8, [Lorg/chromium/blink/mojom/AiLanguageModelPrompt;

    iput-object v8, v2, Lorg/chromium/blink/mojom/AiLanguageModelCreateOptions;->initialPrompts:[Lorg/chromium/blink/mojom/AiLanguageModelPrompt;

    move v8, v5

    :goto_0
    iget v9, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v8, v9, :cond_1

    const/16 v9, 0x8

    invoke-static {v8, v9, v3, v4, v5}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v9

    iget-object v10, v2, Lorg/chromium/blink/mojom/AiLanguageModelCreateOptions;->initialPrompts:[Lorg/chromium/blink/mojom/AiLanguageModelPrompt;

    invoke-static {v9}, Lorg/chromium/blink/mojom/AiLanguageModelPrompt;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/AiLanguageModelPrompt;

    move-result-object v9

    aput-object v9, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_1
    const/16 v4, 0x20

    invoke-virtual {p0, v4, v1}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v1

    if-nez v1, :cond_2

    iput-object v0, v2, Lorg/chromium/blink/mojom/AiLanguageModelCreateOptions;->expectedInputs:[Lorg/chromium/blink/mojom/AiLanguageModelExpectedInput;

    goto :goto_2

    :cond_2
    invoke-virtual {v1, v6}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v4, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v4, v4, [Lorg/chromium/blink/mojom/AiLanguageModelExpectedInput;

    iput-object v4, v2, Lorg/chromium/blink/mojom/AiLanguageModelCreateOptions;->expectedInputs:[Lorg/chromium/blink/mojom/AiLanguageModelExpectedInput;

    move v4, v5

    :goto_1
    iget v6, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v4, v6, :cond_3

    const/16 v6, 0x8

    invoke-static {v4, v6, v3, v1, v5}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v6

    iget-object v7, v2, Lorg/chromium/blink/mojom/AiLanguageModelCreateOptions;->expectedInputs:[Lorg/chromium/blink/mojom/AiLanguageModelExpectedInput;

    invoke-static {v6}, Lorg/chromium/blink/mojom/AiLanguageModelExpectedInput;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/AiLanguageModelExpectedInput;

    move-result-object v6

    aput-object v6, v7, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v2

    :goto_3
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 8

    sget-object v0, Lorg/chromium/blink/mojom/AiLanguageModelCreateOptions;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/blink/mojom/AiLanguageModelCreateOptions;->samplingParams:Lorg/chromium/blink/mojom/AiLanguageModelSamplingParams;

    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/AiLanguageModelCreateOptions;->systemPrompt:Ljava/lang/String;

    const/16 v3, 0x10

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/AiLanguageModelCreateOptions;->initialPrompts:[Lorg/chromium/blink/mojom/AiLanguageModelPrompt;

    const/4 v3, -0x1

    const/16 v4, 0x18

    const/4 v5, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1, v4, v5}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1

    :cond_0
    array-length v0, v0

    invoke-virtual {p1, v0, v4, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v4, v5

    :goto_0
    iget-object v6, p0, Lorg/chromium/blink/mojom/AiLanguageModelCreateOptions;->initialPrompts:[Lorg/chromium/blink/mojom/AiLanguageModelPrompt;

    array-length v7, v6

    if-ge v4, v7, :cond_1

    aget-object v6, v6, v4

    mul-int/lit8 v7, v4, 0x8

    add-int/2addr v7, v1

    invoke-virtual {v0, v6, v7, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/chromium/blink/mojom/AiLanguageModelCreateOptions;->expectedInputs:[Lorg/chromium/blink/mojom/AiLanguageModelExpectedInput;

    const/16 v4, 0x20

    if-nez v0, :cond_2

    invoke-virtual {p1, v4, v2}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_3

    :cond_2
    array-length v0, v0

    invoke-virtual {p1, v0, v4, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    move v0, v5

    :goto_2
    iget-object v2, p0, Lorg/chromium/blink/mojom/AiLanguageModelCreateOptions;->expectedInputs:[Lorg/chromium/blink/mojom/AiLanguageModelExpectedInput;

    array-length v3, v2

    if-ge v0, v3, :cond_3

    aget-object v2, v2, v0

    mul-int/lit8 v3, v0, 0x8

    add-int/2addr v3, v1

    invoke-virtual {p1, v2, v3, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method
