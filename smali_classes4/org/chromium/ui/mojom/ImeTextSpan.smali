.class public final Lorg/chromium/ui/mojom/ImeTextSpan;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public backgroundColor:I

.field public endOffset:I

.field public interimCharSelection:Z

.field public removeOnFinishComposing:Z

.field public startOffset:I

.field public suggestionHighlightColor:I

.field public suggestions:[Ljava/lang/String;

.field public textColor:I

.field public thickness:I

.field public type:I

.field public underlineColor:I

.field public underlineStyle:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x38

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/ui/mojom/ImeTextSpan;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/ui/mojom/ImeTextSpan;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x38

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/ui/mojom/ImeTextSpan;
    .locals 8

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/ui/mojom/ImeTextSpan;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/ui/mojom/ImeTextSpan;

    invoke-direct {v1, v0}, Lorg/chromium/ui/mojom/ImeTextSpan;-><init>(I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/ui/mojom/ImeTextSpan;->type:I

    invoke-static {v2}, Lorg/chromium/ui/mojom/ImeTextSpanType;->validate(I)V

    iget v2, v1, Lorg/chromium/ui/mojom/ImeTextSpan;->type:I

    invoke-static {v2}, Lorg/chromium/ui/mojom/ImeTextSpanType;->toKnownValue(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/ui/mojom/ImeTextSpan;->type:I

    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/ui/mojom/ImeTextSpan;->startOffset:I

    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/ui/mojom/ImeTextSpan;->endOffset:I

    const/16 v2, 0x14

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/ui/mojom/ImeTextSpan;->underlineColor:I

    const/16 v2, 0x18

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/ui/mojom/ImeTextSpan;->thickness:I

    invoke-static {v2}, Lorg/chromium/ui/mojom/ImeTextSpanThickness;->validate(I)V

    iget v2, v1, Lorg/chromium/ui/mojom/ImeTextSpan;->thickness:I

    invoke-static {v2}, Lorg/chromium/ui/mojom/ImeTextSpanThickness;->toKnownValue(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/ui/mojom/ImeTextSpan;->thickness:I

    const/16 v2, 0x1c

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/ui/mojom/ImeTextSpan;->underlineStyle:I

    invoke-static {v2}, Lorg/chromium/ui/mojom/ImeTextSpanUnderlineStyle;->validate(I)V

    iget v2, v1, Lorg/chromium/ui/mojom/ImeTextSpan;->underlineStyle:I

    invoke-static {v2}, Lorg/chromium/ui/mojom/ImeTextSpanUnderlineStyle;->toKnownValue(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/ui/mojom/ImeTextSpan;->underlineStyle:I

    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/ui/mojom/ImeTextSpan;->textColor:I

    const/16 v2, 0x24

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/ui/mojom/ImeTextSpan;->backgroundColor:I

    const/16 v2, 0x28

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/ui/mojom/ImeTextSpan;->suggestionHighlightColor:I

    const/16 v2, 0x2c

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v1, Lorg/chromium/ui/mojom/ImeTextSpan;->removeOnFinishComposing:Z

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v2

    iput-boolean v2, v1, Lorg/chromium/ui/mojom/ImeTextSpan;->interimCharSelection:Z

    const/16 v2, 0x30

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v4

    iget v5, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, v1, Lorg/chromium/ui/mojom/ImeTextSpan;->suggestions:[Ljava/lang/String;

    move v5, v3

    :goto_0
    iget v6, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v5, v6, :cond_1

    iget-object v6, v1, Lorg/chromium/ui/mojom/ImeTextSpan;->suggestions:[Ljava/lang/String;

    const/16 v7, 0x8

    invoke-static {v5, v7, v0, v2, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->h(IIILorg/chromium/mojo/bindings/Decoder;Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :goto_1
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 10

    sget-object v0, Lorg/chromium/ui/mojom/ImeTextSpan;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget v0, p0, Lorg/chromium/ui/mojom/ImeTextSpan;->type:I

    const/16 v8, 0x8

    invoke-virtual {p1, v0, v8}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/ui/mojom/ImeTextSpan;->startOffset:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/ui/mojom/ImeTextSpan;->endOffset:I

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/ui/mojom/ImeTextSpan;->underlineColor:I

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/ui/mojom/ImeTextSpan;->thickness:I

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/ui/mojom/ImeTextSpan;->underlineStyle:I

    const/16 v1, 0x1c

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/ui/mojom/ImeTextSpan;->textColor:I

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/ui/mojom/ImeTextSpan;->backgroundColor:I

    const/16 v1, 0x24

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/ui/mojom/ImeTextSpan;->suggestionHighlightColor:I

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-boolean v0, p0, Lorg/chromium/ui/mojom/ImeTextSpan;->removeOnFinishComposing:Z

    const/16 v1, 0x2c

    const/4 v9, 0x0

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/ui/mojom/ImeTextSpan;->interimCharSelection:Z

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-object v0, p0, Lorg/chromium/ui/mojom/ImeTextSpan;->suggestions:[Ljava/lang/String;

    const/16 v1, 0x30

    if-nez v0, :cond_0

    invoke-virtual {p1, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1

    :cond_0
    array-length v0, v0

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    move v6, v9

    :goto_0
    iget-object v0, p0, Lorg/chromium/ui/mojom/ImeTextSpan;->suggestions:[Ljava/lang/String;

    array-length v1, v0

    if-ge v6, v1, :cond_1

    aget-object v4, v0, v6

    mul-int/lit8 v1, v6, 0x8

    const/4 v7, 0x1

    move v2, v8

    move-object v3, p1

    move v5, v9

    invoke-static/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v6

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
