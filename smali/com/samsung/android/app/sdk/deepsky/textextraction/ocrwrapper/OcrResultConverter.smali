.class public final Lcom/samsung/android/app/sdk/deepsky/textextraction/ocrwrapper/OcrResultConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001b\u0010\u0008\u001a\u00020\u0007*\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001b\u0010\u000c\u001a\u00020\u000b*\u00020\n2\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001b\u0010\u0010\u001a\u00020\u000f*\u00020\u000e2\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u001b\u0010\u0014\u001a\u00020\u0013*\u00020\u00122\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J%\u0010\u0019\u001a\u00020\u00052\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u00162\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ+\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u00162\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u00162\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ+\u0010#\u001a\u00020\"*\u00020\u001d2\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010!\u001a\u00020 \u00a2\u0006\u0004\u0008#\u0010$J1\u0010(\u001a\u00020\"*\u00020\"2\u0006\u0010\u001f\u001a\u00020\u001e2\u000c\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020&0%2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008(\u0010)\u00a8\u0006*"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/ocrwrapper/OcrResultConverter;",
        "",
        "<init>",
        "()V",
        "Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;",
        "Landroid/graphics/Rect;",
        "validRect",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$BlockInfo;",
        "toOcrResultBlockInfo",
        "(Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;Landroid/graphics/Rect;)Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$BlockInfo;",
        "Lcom/samsung/android/sdk/ocr/OCRResult$LineData;",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$LineInfo;",
        "toOcrResultLineInfo",
        "(Lcom/samsung/android/sdk/ocr/OCRResult$LineData;Landroid/graphics/Rect;)Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$LineInfo;",
        "Lcom/samsung/android/sdk/ocr/OCRResult$WordData;",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$WordInfo;",
        "toOcrResultWordInfo",
        "(Lcom/samsung/android/sdk/ocr/OCRResult$WordData;Landroid/graphics/Rect;)Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$WordInfo;",
        "Lcom/samsung/android/sdk/ocr/OCRResult$CharData;",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$CharInfo;",
        "toOcrResultCharInfo",
        "(Lcom/samsung/android/sdk/ocr/OCRResult$CharData;Landroid/graphics/Rect;)Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$CharInfo;",
        "",
        "Landroid/graphics/Point;",
        "pointArray",
        "getTranslatedRect",
        "([Landroid/graphics/Point;Landroid/graphics/Rect;)Landroid/graphics/Rect;",
        "getTranslatedPoly",
        "([Landroid/graphics/Point;Landroid/graphics/Rect;)[Landroid/graphics/Point;",
        "Lcom/samsung/android/sdk/ocr/OCRResult;",
        "Landroid/content/Context;",
        "context",
        "",
        "extractTextOnly",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;",
        "toOcrResult",
        "(Lcom/samsung/android/sdk/ocr/OCRResult;Landroid/content/Context;Landroid/graphics/Rect;Z)Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;",
        "",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/EntityType;",
        "entityTypes",
        "withEntityInfo",
        "(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;Landroid/content/Context;Ljava/util/List;Landroid/graphics/Rect;)Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;",
        "deepsky-sdk-textextraction-8.5.6_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final INSTANCE:Lcom/samsung/android/app/sdk/deepsky/textextraction/ocrwrapper/OcrResultConverter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/textextraction/ocrwrapper/OcrResultConverter;

    invoke-direct {v0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/ocrwrapper/OcrResultConverter;-><init>()V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/textextraction/ocrwrapper/OcrResultConverter;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/textextraction/ocrwrapper/OcrResultConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getTranslatedPoly([Landroid/graphics/Point;Landroid/graphics/Rect;)[Landroid/graphics/Point;
    .locals 7

    new-instance p0, Ljava/util/ArrayList;

    array-length v0, p1

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    new-instance v4, Landroid/graphics/Point;

    iget v5, v3, Landroid/graphics/Point;->x:I

    iget v6, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v6, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v6

    invoke-direct {v4, v5, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {p0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-array p1, v1, [Landroid/graphics/Point;

    invoke-interface {p0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/graphics/Point;

    return-object p0
.end method

.method private final getTranslatedRect([Landroid/graphics/Point;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 7

    array-length p0, p1

    if-eqz p0, :cond_b

    const/4 p0, 0x0

    aget-object v0, p1, p0

    iget v0, v0, Landroid/graphics/Point;->x:I

    array-length v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-gt v2, v1, :cond_1

    move v3, v2

    :goto_0
    aget-object v4, p1, v3

    iget v4, v4, Landroid/graphics/Point;->x:I

    if-le v0, v4, :cond_0

    move v0, v4

    :cond_0
    if-eq v3, v1, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget v1, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    array-length v1, p1

    if-eqz v1, :cond_a

    aget-object v1, p1, p0

    iget v1, v1, Landroid/graphics/Point;->y:I

    array-length v3, p1

    sub-int/2addr v3, v2

    if-gt v2, v3, :cond_3

    move v4, v2

    :goto_1
    aget-object v5, p1, v4

    iget v5, v5, Landroid/graphics/Point;->y:I

    if-le v1, v5, :cond_2

    move v1, v5

    :cond_2
    if-eq v4, v3, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    iget v3, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v3

    array-length v3, p1

    if-eqz v3, :cond_9

    aget-object v3, p1, p0

    iget v3, v3, Landroid/graphics/Point;->x:I

    array-length v4, p1

    sub-int/2addr v4, v2

    if-gt v2, v4, :cond_5

    move v5, v2

    :goto_2
    aget-object v6, p1, v5

    iget v6, v6, Landroid/graphics/Point;->x:I

    if-ge v3, v6, :cond_4

    move v3, v6

    :cond_4
    if-eq v5, v4, :cond_5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    iget v4, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    array-length v4, p1

    if-eqz v4, :cond_8

    aget-object p0, p1, p0

    iget p0, p0, Landroid/graphics/Point;->y:I

    array-length v4, p1

    sub-int/2addr v4, v2

    if-gt v2, v4, :cond_7

    :goto_3
    aget-object v5, p1, v2

    iget v5, v5, Landroid/graphics/Point;->y:I

    if-ge p0, v5, :cond_6

    move p0, v5

    :cond_6
    if-eq v2, v4, :cond_7

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    iget p1, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, p1

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v0, v1, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    :cond_8
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_9
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_a
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_b
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method private final toOcrResultBlockInfo(Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;Landroid/graphics/Rect;)Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$BlockInfo;
    .locals 4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;->getLineDataList()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "getLineDataList(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/ocr/OCRResult$LineData;

    sget-object v3, Lcom/samsung/android/app/sdk/deepsky/textextraction/ocrwrapper/OcrResultConverter;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/textextraction/ocrwrapper/OcrResultConverter;

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-direct {v3, v2, p2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/ocrwrapper/OcrResultConverter;->toOcrResultLineInfo(Lcom/samsung/android/sdk/ocr/OCRResult$LineData;Landroid/graphics/Rect;)Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$LineInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;->getRect()[Landroid/graphics/Point;

    move-result-object v0

    const-string v2, "getRect(...)"

    invoke-static {v0, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/ocrwrapper/OcrResultConverter;->getTranslatedRect([Landroid/graphics/Point;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;->getRect()[Landroid/graphics/Point;

    move-result-object p1

    invoke-static {p1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/ocrwrapper/OcrResultConverter;->getTranslatedPoly([Landroid/graphics/Point;Landroid/graphics/Rect;)[Landroid/graphics/Point;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$BlockInfo;

    invoke-direct {p1, v1, v0, p0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$BlockInfo;-><init>(Ljava/util/List;Landroid/graphics/Rect;[Landroid/graphics/Point;)V

    return-object p1
.end method

.method private final toOcrResultCharInfo(Lcom/samsung/android/sdk/ocr/OCRResult$CharData;Landroid/graphics/Rect;)Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$CharInfo;
    .locals 4

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$CharInfo;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ocr/OCRResult$CharData;->getText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getText(...)"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ocr/OCRResult$CharData;->getRect()[Landroid/graphics/Point;

    move-result-object v2

    const-string v3, "getRect(...)"

    invoke-static {v2, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2, p2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/ocrwrapper/OcrResultConverter;->getTranslatedRect([Landroid/graphics/Point;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ocr/OCRResult$CharData;->getRect()[Landroid/graphics/Point;

    move-result-object p1

    invoke-static {p1, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/ocrwrapper/OcrResultConverter;->getTranslatedPoly([Landroid/graphics/Point;Landroid/graphics/Rect;)[Landroid/graphics/Point;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$CharInfo;-><init>(Ljava/lang/String;Landroid/graphics/Rect;[Landroid/graphics/Point;)V

    return-object v0
.end method

.method private final toOcrResultLineInfo(Lcom/samsung/android/sdk/ocr/OCRResult$LineData;Landroid/graphics/Rect;)Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$LineInfo;
    .locals 4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ocr/OCRResult$LineData;->getWordDataList()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "getWordDataList(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/ocr/OCRResult$WordData;

    sget-object v3, Lcom/samsung/android/app/sdk/deepsky/textextraction/ocrwrapper/OcrResultConverter;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/textextraction/ocrwrapper/OcrResultConverter;

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-direct {v3, v2, p2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/ocrwrapper/OcrResultConverter;->toOcrResultWordInfo(Lcom/samsung/android/sdk/ocr/OCRResult$WordData;Landroid/graphics/Rect;)Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$WordInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ocr/OCRResult$LineData;->getRect()[Landroid/graphics/Point;

    move-result-object v0

    const-string v2, "getRect(...)"

    invoke-static {v0, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/ocrwrapper/OcrResultConverter;->getTranslatedRect([Landroid/graphics/Point;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ocr/OCRResult$LineData;->getRect()[Landroid/graphics/Point;

    move-result-object p1

    invoke-static {p1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/ocrwrapper/OcrResultConverter;->getTranslatedPoly([Landroid/graphics/Point;Landroid/graphics/Rect;)[Landroid/graphics/Point;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$LineInfo;

    invoke-direct {p1, v1, v0, p0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$LineInfo;-><init>(Ljava/util/List;Landroid/graphics/Rect;[Landroid/graphics/Point;)V

    return-object p1
.end method

.method private final toOcrResultWordInfo(Lcom/samsung/android/sdk/ocr/OCRResult$WordData;Landroid/graphics/Rect;)Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$WordInfo;
    .locals 4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ocr/OCRResult$WordData;->getCharDataList()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "getCharDataList(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/ocr/OCRResult$CharData;

    sget-object v3, Lcom/samsung/android/app/sdk/deepsky/textextraction/ocrwrapper/OcrResultConverter;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/textextraction/ocrwrapper/OcrResultConverter;

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-direct {v3, v2, p2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/ocrwrapper/OcrResultConverter;->toOcrResultCharInfo(Lcom/samsung/android/sdk/ocr/OCRResult$CharData;Landroid/graphics/Rect;)Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$CharInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ocr/OCRResult$WordData;->getRect()[Landroid/graphics/Point;

    move-result-object v0

    const-string v2, "getRect(...)"

    invoke-static {v0, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/ocrwrapper/OcrResultConverter;->getTranslatedRect([Landroid/graphics/Point;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ocr/OCRResult$WordData;->getRect()[Landroid/graphics/Point;

    move-result-object p1

    invoke-static {p1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/ocrwrapper/OcrResultConverter;->getTranslatedPoly([Landroid/graphics/Point;Landroid/graphics/Rect;)[Landroid/graphics/Point;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$WordInfo;

    invoke-direct {p1, v1, v0, p0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$WordInfo;-><init>(Ljava/util/List;Landroid/graphics/Rect;[Landroid/graphics/Point;)V

    return-object p1
.end method


# virtual methods
.method public final toOcrResult(Lcom/samsung/android/sdk/ocr/OCRResult;Landroid/content/Context;Landroid/graphics/Rect;Z)Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;
    .locals 7
    .param p1    # Lcom/samsung/android/sdk/ocr/OCRResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "validRect"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ocr/OCRResult;->getBlockDataList()Ljava/util/ArrayList;

    move-result-object p1

    const-string v0, "getBlockDataList(...)"

    invoke-static {p1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;

    sget-object v1, Lcom/samsung/android/app/sdk/deepsky/textextraction/ocrwrapper/OcrResultConverter;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/textextraction/ocrwrapper/OcrResultConverter;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-direct {v1, v0, p3}, Lcom/samsung/android/app/sdk/deepsky/textextraction/ocrwrapper/OcrResultConverter;->toOcrResultBlockInfo(Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;Landroid/graphics/Rect;)Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$BlockInfo;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILtb/f;)V

    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    sget-object p4, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/EntityType;->Companion:Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/EntityType$Companion;

    invoke-virtual {p4}, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/EntityType$Companion;->listOfEntityType()Ljava/util/List;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p4, p3}, Lcom/samsung/android/app/sdk/deepsky/textextraction/ocrwrapper/OcrResultConverter;->withEntityInfo(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;Landroid/content/Context;Ljava/util/List;Landroid/graphics/Rect;)Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public final withEntityInfo(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;Landroid/content/Context;Ljava/util/List;Landroid/graphics/Rect;)Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;
    .locals 17
    .param p1    # Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/EntityType;",
            ">;",
            "Landroid/graphics/Rect;",
            ")",
            "Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "<this>"

    invoke-static {v0, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "context"

    invoke-static {v1, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "entityTypes"

    invoke-static {v2, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor;

    new-instance v4, Lcom/samsung/android/app/sdk/deepsky/textextraction/textclassification/TextClassificationHelper;

    invoke-direct {v4, v1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/textclassification/TextClassificationHelper;-><init>(Landroid/content/Context;)V

    move-object/from16 v1, p4

    invoke-virtual {v3, v0, v2, v1, v4}, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/OcrEntityExtractor;->extractEntity(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;Ljava/util/List;Landroid/graphics/Rect;Lcom/samsung/android/app/sdk/deepsky/textextraction/textclassification/TextClassificationHelper;)Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/EntityExtractionResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/EntityExtractionResult;->getItems()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/EntityItem;

    invoke-virtual {v5}, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/EntityItem;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/EntityItem;->getType()Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/EntityType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/EntityType;->getTypeId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/EntityItem;->getRectList()Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    const/4 v9, 0x0

    new-array v10, v9, [Landroid/graphics/Rect;

    invoke-interface {v6, v10}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    check-cast v10, [Landroid/graphics/Rect;

    invoke-virtual {v5}, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/EntityItem;->getPolyList()Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    new-array v11, v9, [[Landroid/graphics/Point;

    invoke-interface {v6, v11}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    move-object v11, v6

    check-cast v11, [[Landroid/graphics/Point;

    invoke-virtual {v5}, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/EntityItem;->getPolyList()Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    new-instance v12, Ljava/util/ArrayList;

    invoke-static {v6, v4}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Landroid/graphics/Point;

    new-instance v14, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$UnderlineInfo;

    new-instance v15, Landroid/graphics/PointF;

    const/16 v16, 0x3

    aget-object v4, v13, v16

    invoke-direct {v15, v4}, Landroid/graphics/PointF;-><init>(Landroid/graphics/Point;)V

    new-instance v4, Landroid/graphics/PointF;

    const/16 v16, 0x2

    aget-object v13, v13, v16

    invoke-direct {v4, v13}, Landroid/graphics/PointF;-><init>(Landroid/graphics/Point;)V

    invoke-direct {v14, v15, v4}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$UnderlineInfo;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v4, 0xa

    goto :goto_1

    :cond_0
    new-array v4, v9, [Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$UnderlineInfo;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$UnderlineInfo;

    invoke-virtual {v5}, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/EntityItem;->getScore()F

    move-result v12

    invoke-virtual {v5}, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/EntityItem;->getActions()Ljava/util/List;

    move-result-object v13

    new-instance v5, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$EntityInfo;

    move-object v6, v5

    move-object v9, v10

    move-object v10, v11

    move-object v11, v4

    invoke-direct/range {v6 .. v13}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$EntityInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[Landroid/graphics/Rect;[[Landroid/graphics/Point;[Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$UnderlineInfo;FLjava/util/List;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v4, 0xa

    goto/16 :goto_0

    :cond_1
    invoke-static {v3}, Lfb/n;->i0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;->getBlockInfoList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/entity/EntityExtractionResult;->getLanguageTags()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v0, v2, v1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-object v3
.end method
