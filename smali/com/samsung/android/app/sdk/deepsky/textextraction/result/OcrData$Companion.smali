.class public final Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0013\u0010\u0006\u001a\u00020\u0005*\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0013\u0010\n\u001a\u00020\t*\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0013\u0010\u000e\u001a\u00020\r*\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0013\u0010\u0012\u001a\u00020\u0011*\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0017\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u0014H\u0000\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u001b\u001a\u00020\u001a8\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001cR\u0014\u0010\u001e\u001a\u00020\u001a8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001cR\u0014\u0010\u001f\u001a\u00020\u001a8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010\u001cR\u0014\u0010 \u001a\u00020\u001a8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008 \u0010\u001c\u00a8\u0006!"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$Companion;",
        "",
        "<init>",
        "()V",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$BlockInfo;",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$BlockInfo;",
        "toOcrDataBlockInfo",
        "(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$BlockInfo;)Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$BlockInfo;",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$LineInfo;",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$LineInfo;",
        "toOcrDataLineInfo",
        "(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$LineInfo;)Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$LineInfo;",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$WordInfo;",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$WordInfo;",
        "toOcrDataWordInfo",
        "(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$WordInfo;)Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$WordInfo;",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$CharInfo;",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$CharInfo;",
        "toOcrDataCharInfo",
        "(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$CharInfo;)Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$CharInfo;",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;",
        "ocrResult",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData;",
        "fromOcrResult$deepsky_sdk_textextraction_8_5_6_release",
        "(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;)Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData;",
        "fromOcrResult",
        "",
        "OCR_DATA_VERSION",
        "Ljava/lang/String;",
        "BLOCK_SEPARATOR",
        "LINE_SEPARATOR",
        "WORD_SEPARATOR",
        "CHAR_SEPARATOR",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ltb/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$Companion;-><init>()V

    return-void
.end method

.method private final toOcrDataBlockInfo(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$BlockInfo;)Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$BlockInfo;
    .locals 7

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$BlockInfo;->getLineInfo()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$LineInfo;

    sget-object v2, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData;->Companion:Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$Companion;

    invoke-direct {v2, v0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$Companion;->toOcrDataLineInfo(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$LineInfo;)Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$LineInfo;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$BlockInfo;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$BlockInfo;->getPoly()[Landroid/graphics/Point;

    move-result-object v3

    new-instance p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$BlockInfo;

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$BlockInfo;-><init>(Ljava/util/List;Landroid/graphics/Rect;[Landroid/graphics/Point;IILtb/f;)V

    return-object p0
.end method

.method private final toOcrDataCharInfo(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$CharInfo;)Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$CharInfo;
    .locals 2

    new-instance p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$CharInfo;

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$CharInfo;->getString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$CharInfo;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$CharInfo;->getPoly()[Landroid/graphics/Point;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$CharInfo;-><init>(Ljava/lang/String;Landroid/graphics/Rect;[Landroid/graphics/Point;)V

    return-object p0
.end method

.method private final toOcrDataLineInfo(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$LineInfo;)Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$LineInfo;
    .locals 7

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$LineInfo;->getWordInfo()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$WordInfo;

    sget-object v2, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData;->Companion:Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$Companion;

    invoke-direct {v2, v0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$Companion;->toOcrDataWordInfo(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$WordInfo;)Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$WordInfo;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$LineInfo;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$LineInfo;->getPoly()[Landroid/graphics/Point;

    move-result-object v3

    new-instance p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$LineInfo;

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$LineInfo;-><init>(Ljava/util/List;Landroid/graphics/Rect;[Landroid/graphics/Point;ZILtb/f;)V

    return-object p0
.end method

.method private final toOcrDataWordInfo(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$WordInfo;)Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$WordInfo;
    .locals 7

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$WordInfo;->getCharInfo()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$CharInfo;

    sget-object v2, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData;->Companion:Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$Companion;

    invoke-direct {v2, v0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$Companion;->toOcrDataCharInfo(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$CharInfo;)Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$CharInfo;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$WordInfo;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$WordInfo;->getPoly()[Landroid/graphics/Point;

    move-result-object v3

    new-instance p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$WordInfo;

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$WordInfo;-><init>(Ljava/util/List;Landroid/graphics/Rect;[Landroid/graphics/Point;[Landroid/graphics/Point;ILtb/f;)V

    return-object p0
.end method


# virtual methods
.method public final fromOcrResult$deepsky_sdk_textextraction_8_5_6_release(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;)Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData;
    .locals 6
    .param p1    # Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "ocrResult"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;->getBlockInfoList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 p1, 0xa

    invoke-static {p0, p1}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result p1

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$BlockInfo;

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData;->Companion:Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$Companion;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$Companion;->toOcrDataBlockInfo(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$BlockInfo;)Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$BlockInfo;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData;

    const-string v1, "1.0"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData;-><init>(Ljava/lang/String;Ljava/util/List;Landroid/graphics/Rect;ILtb/f;)V

    return-object p0
.end method
