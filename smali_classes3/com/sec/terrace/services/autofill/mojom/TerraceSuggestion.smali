.class public final Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public additionalLabel:Ljava/lang/String;

.field public customIconUrl:Ljava/lang/String;

.field public fieldByFieldFillingTypeUsed:Ljava/lang/Integer;

.field public icon:I

.field public isIconAtStart:Z

.field public labels:[[Lcom/sec/terrace/services/autofill/mojom/TerraceText;

.field public mainText:Lcom/sec/terrace/services/autofill/mojom/TerraceText;

.field public minorText:Lcom/sec/terrace/services/autofill/mojom/TerraceText;

.field public payload:Lcom/sec/terrace/services/autofill/mojom/TerracePayload;

.field public suggestionType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x50

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x50

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    const-string p1, ""

    iput-object p1, p0, Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;->additionalLabel:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;->isIconAtStart:Z

    iput-object p1, p0, Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;->customIconUrl:Ljava/lang/String;

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;
    .locals 13

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v1, Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v2, Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;

    invoke-direct {v2, v1}, Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;-><init>(I)V

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v3

    iput v3, v2, Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;->suggestionType:I

    invoke-static {v3}, Lcom/sec/terrace/services/autofill/mojom/SuggestionType;->validate(I)V

    iget v3, v2, Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;->suggestionType:I

    invoke-static {v3}, Lcom/sec/terrace/services/autofill/mojom/SuggestionType;->toKnownValue(I)I

    move-result v3

    iput v3, v2, Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;->suggestionType:I

    const/16 v3, 0xc

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v3

    iput v3, v2, Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;->icon:I

    invoke-static {v3}, Lcom/sec/terrace/services/autofill/mojom/Icon;->validate(I)V

    iget v3, v2, Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;->icon:I

    invoke-static {v3}, Lcom/sec/terrace/services/autofill/mojom/Icon;->toKnownValue(I)I

    move-result v3

    iput v3, v2, Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;->icon:I

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v6

    iget v7, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v7, v7, [[Lcom/sec/terrace/services/autofill/mojom/TerraceText;

    iput-object v7, v2, Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;->labels:[[Lcom/sec/terrace/services/autofill/mojom/TerraceText;

    move v7, v4

    :goto_0
    iget v8, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v7, v8, :cond_2

    const/16 v8, 0x8

    invoke-static {v7, v8, v1, v3, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v8

    invoke-virtual {v8, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v9

    iget-object v10, v2, Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;->labels:[[Lcom/sec/terrace/services/autofill/mojom/TerraceText;

    iget v11, v9, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v11, v11, [Lcom/sec/terrace/services/autofill/mojom/TerraceText;

    aput-object v11, v10, v7

    move v10, v4

    :goto_1
    iget v11, v9, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v10, v11, :cond_1

    const/16 v11, 0x8

    invoke-static {v10, v11, v1, v8, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v11

    iget-object v12, v2, Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;->labels:[[Lcom/sec/terrace/services/autofill/mojom/TerraceText;

    aget-object v12, v12, v7

    invoke-static {v11}, Lcom/sec/terrace/services/autofill/mojom/TerraceText;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lcom/sec/terrace/services/autofill/mojom/TerraceText;

    move-result-object v11

    aput-object v11, v12, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    const/16 v1, 0x18

    invoke-virtual {p0, v1, v4}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;->additionalLabel:Ljava/lang/String;

    const/16 v1, 0x20

    invoke-static {p0, v1}, Lcom/sec/terrace/services/autofill/mojom/TerracePayload;->decode(Lorg/chromium/mojo/bindings/Decoder;I)Lcom/sec/terrace/services/autofill/mojom/TerracePayload;

    move-result-object v1

    iput-object v1, v2, Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;->payload:Lcom/sec/terrace/services/autofill/mojom/TerracePayload;

    const/16 v1, 0x30

    invoke-virtual {p0, v1, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/terrace/services/autofill/mojom/TerraceText;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lcom/sec/terrace/services/autofill/mojom/TerraceText;

    move-result-object v1

    iput-object v1, v2, Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;->mainText:Lcom/sec/terrace/services/autofill/mojom/TerraceText;

    const/16 v1, 0x38

    invoke-virtual {p0, v1, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/terrace/services/autofill/mojom/TerraceText;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lcom/sec/terrace/services/autofill/mojom/TerraceText;

    move-result-object v1

    iput-object v1, v2, Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;->minorText:Lcom/sec/terrace/services/autofill/mojom/TerraceText;

    const/16 v1, 0x40

    invoke-virtual {p0, v1, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v3

    iput-boolean v3, v2, Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;->isIconAtStart:Z

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Ljava/lang/Integer;

    const/16 v1, 0x44

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, v2, Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;->fieldByFieldFillingTypeUsed:Ljava/lang/Integer;

    goto :goto_2

    :cond_3
    iput-object v0, v2, Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;->fieldByFieldFillingTypeUsed:Ljava/lang/Integer;

    :goto_2
    const/16 v0, 0x48

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;->customIconUrl:Ljava/lang/String;
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
    .locals 9

    sget-object v0, Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget v0, p0, Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;->suggestionType:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;->icon:I

    const/16 v2, 0xc

    invoke-virtual {p1, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;->labels:[[Lcom/sec/terrace/services/autofill/mojom/TerraceText;

    const/16 v2, 0x10

    const/4 v3, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_3

    :cond_0
    array-length v0, v0

    const/4 v4, -0x1

    invoke-virtual {p1, v0, v2, v4}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v2, v3

    :goto_0
    iget-object v5, p0, Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;->labels:[[Lcom/sec/terrace/services/autofill/mojom/TerraceText;

    array-length v6, v5

    if-ge v2, v6, :cond_3

    aget-object v5, v5, v2

    if-nez v5, :cond_1

    mul-int/lit8 v5, v2, 0x8

    add-int/2addr v5, v1

    invoke-virtual {v0, v5, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_2

    :cond_1
    array-length v5, v5

    mul-int/lit8 v6, v2, 0x8

    add-int/2addr v6, v1

    invoke-virtual {v0, v5, v6, v4}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v5

    move v6, v3

    :goto_1
    iget-object v7, p0, Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;->labels:[[Lcom/sec/terrace/services/autofill/mojom/TerraceText;

    aget-object v7, v7, v2

    array-length v8, v7

    if-ge v6, v8, :cond_2

    aget-object v7, v7, v6

    mul-int/lit8 v8, v6, 0x8

    add-int/2addr v8, v1

    invoke-virtual {v5, v7, v8, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;->additionalLabel:Ljava/lang/String;

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;->payload:Lcom/sec/terrace/services/autofill/mojom/TerracePayload;

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Union;IZ)V

    iget-object v0, p0, Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;->mainText:Lcom/sec/terrace/services/autofill/mojom/TerraceText;

    const/16 v1, 0x30

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;->minorText:Lcom/sec/terrace/services/autofill/mojom/TerraceText;

    const/16 v1, 0x38

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-boolean v0, p0, Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;->isIconAtStart:Z

    const/16 v1, 0x40

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-object v0, p0, Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;->fieldByFieldFillingTypeUsed:Ljava/lang/Integer;

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    move v4, v2

    goto :goto_4

    :cond_4
    move v4, v3

    :goto_4
    if-eqz v4, :cond_5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_5

    :cond_5
    move v0, v3

    :goto_5
    invoke-virtual {p1, v4, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    const/16 v1, 0x44

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object p0, p0, Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;->customIconUrl:Ljava/lang/String;

    const/16 v0, 0x48

    invoke-virtual {p1, p0, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    return-void
.end method
