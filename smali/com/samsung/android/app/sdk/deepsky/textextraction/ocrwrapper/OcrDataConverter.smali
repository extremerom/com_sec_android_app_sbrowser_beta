.class public final Lcom/samsung/android/app/sdk/deepsky/textextraction/ocrwrapper/OcrDataConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0013\u0010\u0006\u001a\u00020\u0005*\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0013\u0010\n\u001a\u00020\t*\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0013\u0010\u000e\u001a\u00020\r*\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0013\u0010\u0012\u001a\u00020\u0011*\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0011\u0010\u0016\u001a\u00020\u0015*\u00020\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0011\u0010\u0019\u001a\u00020\u0018*\u00020\u0014\u00a2\u0006\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/ocrwrapper/OcrDataConverter;",
        "",
        "<init>",
        "()V",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$BlockInfo;",
        "Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$BlockInfo;",
        "toVexFwkOcrResultV2BlockInfo",
        "(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$BlockInfo;)Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$BlockInfo;",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$LineInfo;",
        "Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$LineInfo;",
        "toVexFwkOcrResultV2LineInfo",
        "(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$LineInfo;)Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$LineInfo;",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$WordInfo;",
        "Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$WordInfo;",
        "toVexFwkOcrResultV2WordInfo",
        "(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$WordInfo;)Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$WordInfo;",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$CharInfo;",
        "Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$CharInfo;",
        "toVexFwkOcrResultV2CharInfo",
        "(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$CharInfo;)Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$CharInfo;",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData;",
        "Lcom/samsung/android/imagetranslation/data/LttOcrResult;",
        "toLttOcrResult",
        "(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData;)Lcom/samsung/android/imagetranslation/data/LttOcrResult;",
        "Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2;",
        "toVexFwkOcrResultV2",
        "(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData;)Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2;",
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
.field public static final INSTANCE:Lcom/samsung/android/app/sdk/deepsky/textextraction/ocrwrapper/OcrDataConverter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/textextraction/ocrwrapper/OcrDataConverter;

    invoke-direct {v0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/ocrwrapper/OcrDataConverter;-><init>()V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/textextraction/ocrwrapper/OcrDataConverter;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/textextraction/ocrwrapper/OcrDataConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final toVexFwkOcrResultV2BlockInfo(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$BlockInfo;)Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$BlockInfo;
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$BlockInfo;->getLineList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$LineInfo;

    sget-object v2, Lcom/samsung/android/app/sdk/deepsky/textextraction/ocrwrapper/OcrDataConverter;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/textextraction/ocrwrapper/OcrDataConverter;

    invoke-direct {v2, v1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/ocrwrapper/OcrDataConverter;->toVexFwkOcrResultV2LineInfo(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$LineInfo;)Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$LineInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$BlockInfo;->getPoly()[Landroid/graphics/Point;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$BlockInfo;->isTabular()I

    move-result p1

    new-instance v1, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$BlockInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, p1, v2}, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$BlockInfo;-><init>(Ljava/util/List;[Landroid/graphics/Point;IF)V

    return-object v1
.end method

.method private final toVexFwkOcrResultV2CharInfo(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$CharInfo;)Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$CharInfo;
    .locals 2

    new-instance p0, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$CharInfo;

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$CharInfo;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$CharInfo;->getPoly()[Landroid/graphics/Point;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$CharInfo;-><init>(Ljava/lang/String;[Landroid/graphics/Point;F)V

    return-object p0
.end method

.method private final toVexFwkOcrResultV2LineInfo(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$LineInfo;)Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$LineInfo;
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$LineInfo;->getWordList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$WordInfo;

    sget-object v2, Lcom/samsung/android/app/sdk/deepsky/textextraction/ocrwrapper/OcrDataConverter;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/textextraction/ocrwrapper/OcrDataConverter;

    invoke-direct {v2, v1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/ocrwrapper/OcrDataConverter;->toVexFwkOcrResultV2WordInfo(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$WordInfo;)Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$WordInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$LineInfo;->getPoly()[Landroid/graphics/Point;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$LineInfo;->isCurved()Z

    move-result p1

    new-instance v1, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$LineInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, p1, v2}, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$LineInfo;-><init>(Ljava/util/List;[Landroid/graphics/Point;ZF)V

    return-object v1
.end method

.method private final toVexFwkOcrResultV2WordInfo(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$WordInfo;)Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$WordInfo;
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$WordInfo;->getCharList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$CharInfo;

    sget-object v2, Lcom/samsung/android/app/sdk/deepsky/textextraction/ocrwrapper/OcrDataConverter;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/textextraction/ocrwrapper/OcrDataConverter;

    invoke-direct {v2, v1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/ocrwrapper/OcrDataConverter;->toVexFwkOcrResultV2CharInfo(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$CharInfo;)Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$CharInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$WordInfo;->getPoly()[Landroid/graphics/Point;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$WordInfo;->getCurvedPoly()[Landroid/graphics/Point;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$WordInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, p1, v2}, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$WordInfo;-><init>(Ljava/util/List;[Landroid/graphics/Point;[Landroid/graphics/Point;F)V

    return-object v1
.end method


# virtual methods
.method public final toLttOcrResult(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData;)Lcom/samsung/android/imagetranslation/data/LttOcrResult;
    .locals 14
    .param p1    # Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData;->getBlockList()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$BlockInfo;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$BlockInfo;->getLineList()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$LineInfo;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$LineInfo;->getWordList()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, ""

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$WordInfo;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$WordInfo;->getCharList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$CharInfo;

    new-instance v11, Lcom/samsung/android/imagetranslation/data/LttOcrResult$CharInfo;

    invoke-virtual {v10}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$CharInfo;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$CharInfo;->getRect()Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v10}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$CharInfo;->getPoly()[Landroid/graphics/Point;

    move-result-object v10

    invoke-direct {v11, v12, v13, v10}, Lcom/samsung/android/imagetranslation/data/LttOcrResult$CharInfo;-><init>(Ljava/lang/String;Landroid/graphics/Rect;[Landroid/graphics/Point;)V

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_0
    new-instance v9, Lcom/samsung/android/imagetranslation/data/LttOcrResult$CharInfo;

    const-string v10, " "

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11, v11}, Lcom/samsung/android/imagetranslation/data/LttOcrResult$CharInfo;-><init>(Ljava/lang/String;Landroid/graphics/Rect;[Landroid/graphics/Point;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/samsung/android/imagetranslation/data/LttOcrResult$WordInfo;

    invoke-virtual {v6}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$WordInfo;->getRect()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v6}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$WordInfo;->getPoly()[Landroid/graphics/Point;

    move-result-object v6

    invoke-direct {v9, v8, v10, v6, v7}, Lcom/samsung/android/imagetranslation/data/LttOcrResult$WordInfo;-><init>(Ljava/util/ArrayList;Landroid/graphics/Rect;[Landroid/graphics/Point;Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    new-instance v5, Lcom/samsung/android/imagetranslation/data/LttOcrResult$LineInfo;

    invoke-virtual {v3}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$LineInfo;->getRect()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v3}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$LineInfo;->getPoly()[Landroid/graphics/Point;

    move-result-object v3

    invoke-direct {v5, v4, v6, v3, v7}, Lcom/samsung/android/imagetranslation/data/LttOcrResult$LineInfo;-><init>(Ljava/util/ArrayList;Landroid/graphics/Rect;[Landroid/graphics/Point;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_2
    new-instance v7, Lcom/samsung/android/imagetranslation/data/LttOcrResult$BlockInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$BlockInfo;->getRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$BlockInfo;->getPoly()[Landroid/graphics/Point;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$BlockInfo;->isTabular()I

    move-result v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/imagetranslation/data/LttOcrResult$BlockInfo;-><init>(Ljava/util/List;Landroid/graphics/Rect;[Landroid/graphics/Point;Ljava/lang/String;I)V

    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    new-instance p1, Lcom/samsung/android/imagetranslation/data/LttOcrResult;

    sget-object v0, Lfb/v;->a:Lfb/v;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/imagetranslation/data/LttOcrResult;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p1
.end method

.method public final toVexFwkOcrResultV2(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData;)Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2;
    .locals 2
    .param p1    # Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData;->getBlockList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$BlockInfo;

    sget-object v1, Lcom/samsung/android/app/sdk/deepsky/textextraction/ocrwrapper/OcrDataConverter;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/textextraction/ocrwrapper/OcrDataConverter;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/ocrwrapper/OcrDataConverter;->toVexFwkOcrResultV2BlockInfo(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$BlockInfo;)Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$BlockInfo;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object p0, Lfb/v;->a:Lfb/v;

    new-instance v0, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2;-><init>(Ljava/util/List;Ljava/util/List;Z)V

    return-object v0
.end method
