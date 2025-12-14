.class public final Lcom/samsung/android/app/sdk/deepsky/textextraction/result/EntityData$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/sdk/deepsky/textextraction/result/EntityData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0000\u00a2\u0006\u0002\u0008\u0008J\u000c\u0010\t\u001a\u00020\n*\u00020\u000bH\u0002\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/result/EntityData$Companion;",
        "",
        "<init>",
        "()V",
        "fromOcrResult",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/result/EntityData;",
        "ocrResult",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;",
        "fromOcrResult$deepsky_sdk_textextraction_8_5_6_release",
        "toEntityDataEntityInfo",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/result/EntityData$EntityInfo;",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$EntityInfo;",
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

    invoke-direct {p0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/EntityData$Companion;-><init>()V

    return-void
.end method

.method private final toEntityDataEntityInfo(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$EntityInfo;)Lcom/samsung/android/app/sdk/deepsky/textextraction/result/EntityData$EntityInfo;
    .locals 10

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$EntityInfo;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$EntityInfo;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$EntityInfo;->getRects()[Landroid/graphics/Rect;

    move-result-object p0

    invoke-static {p0}, Lfb/l;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$EntityInfo;->getPolys()[[Landroid/graphics/Point;

    move-result-object p0

    invoke-static {p0}, Lfb/l;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$EntityInfo;->getUnderlines()[Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$UnderlineInfo;

    move-result-object p0

    new-instance v5, Ljava/util/ArrayList;

    array-length v0, p0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    array-length v0, p0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v0, :cond_2

    aget-object v7, p0, v6

    new-instance v8, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/EntityData$UnderlineInfo;

    invoke-virtual {v7}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$UnderlineInfo;->getStart()Landroid/graphics/PointF;

    move-result-object v9

    if-nez v9, :cond_0

    new-instance v9, Landroid/graphics/PointF;

    invoke-direct {v9}, Landroid/graphics/PointF;-><init>()V

    :cond_0
    invoke-virtual {v7}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$UnderlineInfo;->getStop()Landroid/graphics/PointF;

    move-result-object v7

    if-nez v7, :cond_1

    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7}, Landroid/graphics/PointF;-><init>()V

    :cond_1
    invoke-direct {v8, v9, v7}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/EntityData$UnderlineInfo;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    invoke-interface {v5, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$EntityInfo;->getScore()F

    move-result v6

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$EntityInfo;->getActions()Ljava/util/List;

    move-result-object v7

    new-instance p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/EntityData$EntityInfo;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/EntityData$EntityInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;FLjava/util/List;)V

    return-object p0
.end method


# virtual methods
.method public final fromOcrResult$deepsky_sdk_textextraction_8_5_6_release(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;)Lcom/samsung/android/app/sdk/deepsky/textextraction/result/EntityData;
    .locals 4
    .param p1    # Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "ocrResult"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;->getEntityInfoList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$EntityInfo;

    sget-object v3, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/EntityData;->Companion:Lcom/samsung/android/app/sdk/deepsky/textextraction/result/EntityData$Companion;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/EntityData$Companion;->toEntityDataEntityInfo(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$EntityInfo;)Lcom/samsung/android/app/sdk/deepsky/textextraction/result/EntityData$EntityInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/util/OcrUtil;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/textextraction/util/OcrUtil;

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;->getBlockInfoList()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$BlockInfo;

    invoke-virtual {v1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$BlockInfo;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/util/OcrUtil;->calculateBoundingRect(Ljava/util/List;)Landroid/graphics/Rect;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/EntityData;

    invoke-direct {p1, v0, p0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/EntityData;-><init>(Ljava/util/List;Landroid/graphics/Rect;)V

    return-object p1
.end method
