.class public Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslatorUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslatorUtil$ExtractionLevel;
    }
.end annotation


# static fields
.field static sOcrResultExtractionLevel:Ljava/lang/String; = "block"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public static synthetic a(Landroid/graphics/Rect;Lorg/json/JSONArray;Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$LineInfo;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslatorUtil;->lambda$createJSONFromOcrResultLineInfo$1(Landroid/graphics/Rect;Lorg/json/JSONArray;Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$LineInfo;)V

    return-void
.end method

.method public static synthetic b(Landroid/graphics/Rect;Lorg/json/JSONArray;Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$WordInfo;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslatorUtil;->lambda$createJSONFromOcrResultWordInfo$2(Landroid/graphics/Rect;Lorg/json/JSONArray;Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$WordInfo;)V

    return-void
.end method

.method public static synthetic c(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$BlockInfo;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslatorUtil;->lambda$isOcrResultInValid$3(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$BlockInfo;)Z

    move-result p0

    return p0
.end method

.method private static createFinalJSON(Lorg/json/JSONArray;Landroid/graphics/Rect;J)Ljava/lang/String;
    .locals 2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    sget-object v1, Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;->WORDS:Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p0, Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;->PROCESSING_TIME:Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sget-object p0, Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;->RESULT:Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "SUCCESS"

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    sget-object p2, Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;->WIDTH:Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p3

    invoke-virtual {p0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object p2, Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;->HEIGHT:Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object p1, Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;->SIZE:Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p0, Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;->TYPE:Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslatorUtil;->sOcrResultExtractionLevel:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Error while creating JSON "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImageTextTranslatorUtil"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "Error while creating JSON."

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslatorUtil;->dummyJsonObject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createJSONArrayFromOcrResult(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;Landroid/graphics/Rect;J)Ljava/lang/String;
    .locals 3
    .param p0    # Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslatorUtil;->sOcrResultExtractionLevel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "block"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v2, "word"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "line"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const-string p0, "No matching extraction level"

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslatorUtil;->dummyJsonObject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslatorUtil;->createJSONFromOcrResultBlockInfo(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;Landroid/graphics/Rect;J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslatorUtil;->createJSONFromOcrResultWordInfo(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;Landroid/graphics/Rect;J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslatorUtil;->createJSONFromOcrResultLineInfo(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;Landroid/graphics/Rect;J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x32aff4 -> :sswitch_2
        0x37c70a -> :sswitch_1
        0x597c48d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static createJSONFromOcrResultBlockInfo(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;Landroid/graphics/Rect;J)Ljava/lang/String;
    .locals 3
    .param p0    # Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;->getBlockInfoList()Ljava/util/List;

    move-result-object p0

    new-instance v1, Lcom/sec/android/app/sbrowser/image_text_translation/h;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v0, v2}, Lcom/sec/android/app/sbrowser/image_text_translation/h;-><init>(Landroid/graphics/Rect;Lorg/json/JSONArray;I)V

    invoke-interface {p0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    invoke-static {v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslatorUtil;->createFinalJSON(Lorg/json/JSONArray;Landroid/graphics/Rect;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static createJSONFromOcrResultLineInfo(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;Landroid/graphics/Rect;J)Ljava/lang/String;
    .locals 3
    .param p0    # Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;->getLineInfoList()Ljava/util/List;

    move-result-object p0

    new-instance v1, Lcom/sec/android/app/sbrowser/image_text_translation/h;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v0, v2}, Lcom/sec/android/app/sbrowser/image_text_translation/h;-><init>(Landroid/graphics/Rect;Lorg/json/JSONArray;I)V

    invoke-interface {p0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    invoke-static {v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslatorUtil;->createFinalJSON(Lorg/json/JSONArray;Landroid/graphics/Rect;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static createJSONFromOcrResultWordInfo(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;Landroid/graphics/Rect;J)Ljava/lang/String;
    .locals 3
    .param p0    # Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;->getWordInfoList()Ljava/util/List;

    move-result-object p0

    new-instance v1, Lcom/sec/android/app/sbrowser/image_text_translation/h;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lcom/sec/android/app/sbrowser/image_text_translation/h;-><init>(Landroid/graphics/Rect;Lorg/json/JSONArray;I)V

    invoke-interface {p0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    invoke-static {v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslatorUtil;->createFinalJSON(Lorg/json/JSONArray;Landroid/graphics/Rect;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createSuccessJsonObject()Ljava/lang/String;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    sget-object v1, Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;->RESULT:Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SUCCESS"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error while creating dummy JSON "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "ImageTextTranslatorUtil"

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->B(Lorg/json/JSONException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d(Landroid/graphics/Rect;Lorg/json/JSONArray;Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$BlockInfo;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslatorUtil;->lambda$createJSONFromOcrResultBlockInfo$0(Landroid/graphics/Rect;Lorg/json/JSONArray;Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$BlockInfo;)V

    return-void
.end method

.method public static dummyJsonObject(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    sget-object v1, Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;->RESULT:Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FAIL"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;->REASON:Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error while creating dummy JSON "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "ImageTextTranslatorUtil"

    invoke-static {p0, v1, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->B(Lorg/json/JSONException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getHeightAndWidth([Landroid/graphics/Point;)[D
    .locals 9
    .param p0    # [Landroid/graphics/Point;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    aget-object v1, p0, v0

    iget v1, v1, Landroid/graphics/Point;->x:I

    const/4 v2, 0x3

    aget-object v3, p0, v2

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-double v3, v1

    aget-object v1, p0, v0

    iget v1, v1, Landroid/graphics/Point;->y:I

    aget-object v2, p0, v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-double v1, v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    aget-object v3, p0, v0

    iget v3, v3, Landroid/graphics/Point;->x:I

    const/4 v4, 0x1

    aget-object v5, p0, v4

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-double v5, v3

    aget-object v3, p0, v0

    iget v3, v3, Landroid/graphics/Point;->y:I

    aget-object p0, p0, v4

    iget p0, p0, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result p0

    int-to-double v7, p0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    const/4 p0, 0x2

    new-array p0, p0, [D

    aput-wide v1, p0, v0

    aput-wide v5, p0, v4

    return-object p0
.end method

.method private static getRotationAngleInDegrees([Landroid/graphics/Point;)D
    .locals 8
    .param p0    # [Landroid/graphics/Point;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    aget-object v0, p0, v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    mul-int/lit8 v0, v0, -0x1

    const/4 v2, 0x3

    aget-object p0, p0, v2

    iget v2, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    mul-int/lit8 p0, p0, -0x1

    sub-int/2addr v1, v2

    sub-int/2addr v0, p0

    int-to-double v2, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v2, v4

    int-to-double v4, v0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    const-wide v4, 0x4066800000000000L    # 180.0

    mul-double/2addr v2, v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v6

    if-gez v0, :cond_0

    add-double/2addr v2, v4

    goto :goto_0

    :cond_0
    if-gez v1, :cond_1

    const-wide v0, 0x4076800000000000L    # 360.0

    add-double/2addr v2, v0

    :cond_1
    :goto_0
    return-wide v2
.end method

.method public static isOcrResultInValid(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;)Z
    .locals 2
    .param p0    # Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;->getBlockInfoList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/translation/g;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/scs/ai/translation/g;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static synthetic lambda$createJSONFromOcrResultBlockInfo$0(Landroid/graphics/Rect;Lorg/json/JSONArray;Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$BlockInfo;)V
    .locals 12

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    sget-object v1, Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;->LEFT:Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$BlockInfo;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    float-to-double v4, v2

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    sget-object v1, Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;->TOP:Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$BlockInfo;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    mul-double/2addr v2, v6

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$BlockInfo;->getPoly()[Landroid/graphics/Point;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslatorUtil;->getHeightAndWidth([Landroid/graphics/Point;)[D

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;->HEIGHT:Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v3, v1, v3

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v3, v8

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-double v10, v5

    div-double/2addr v3, v10

    mul-double/2addr v3, v6

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    sget-object v2, Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;->WIDTH:Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-wide v3, v1, v3

    mul-double/2addr v3, v8

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-double v8, p0

    div-double/2addr v3, v8

    mul-double/2addr v3, v6

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    sget-object p0, Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;->TEXT:Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$BlockInfo;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p0, Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;->ROTATION_ANGLE:Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$BlockInfo;->getPoly()[Landroid/graphics/Point;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslatorUtil;->getRotationAngleInDegrees([Landroid/graphics/Point;)D

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    sget-object p0, Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;->LINE_COUNT:Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$BlockInfo;->getLineInfo()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Error while setting values in JSON"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "ImageTextTranslatorUtil"

    invoke-static {p0, p2, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->B(Lorg/json/JSONException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-void
.end method

.method private static synthetic lambda$createJSONFromOcrResultLineInfo$1(Landroid/graphics/Rect;Lorg/json/JSONArray;Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$LineInfo;)V
    .locals 12

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    sget-object v1, Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;->LEFT:Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$LineInfo;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    float-to-double v4, v2

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    sget-object v1, Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;->TOP:Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$LineInfo;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    mul-double/2addr v2, v6

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$LineInfo;->getPoly()[Landroid/graphics/Point;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslatorUtil;->getHeightAndWidth([Landroid/graphics/Point;)[D

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;->HEIGHT:Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v3, v1, v3

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v3, v8

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-double v10, v5

    div-double/2addr v3, v10

    mul-double/2addr v3, v6

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    sget-object v2, Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;->WIDTH:Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-wide v3, v1, v3

    mul-double/2addr v3, v8

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-double v8, p0

    div-double/2addr v3, v8

    mul-double/2addr v3, v6

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    sget-object p0, Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;->TEXT:Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$LineInfo;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p0, Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;->ROTATION_ANGLE:Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$LineInfo;->getPoly()[Landroid/graphics/Point;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslatorUtil;->getRotationAngleInDegrees([Landroid/graphics/Point;)D

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Error while setting values in JSON"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "ImageTextTranslatorUtil"

    invoke-static {p0, p2, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->B(Lorg/json/JSONException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-void
.end method

.method private static synthetic lambda$createJSONFromOcrResultWordInfo$2(Landroid/graphics/Rect;Lorg/json/JSONArray;Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$WordInfo;)V
    .locals 12

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    sget-object v1, Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;->LEFT:Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$WordInfo;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    float-to-double v4, v2

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    sget-object v1, Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;->TOP:Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$WordInfo;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    mul-double/2addr v2, v6

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$WordInfo;->getPoly()[Landroid/graphics/Point;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslatorUtil;->getHeightAndWidth([Landroid/graphics/Point;)[D

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;->HEIGHT:Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v3, v1, v3

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v3, v8

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-double v10, v5

    div-double/2addr v3, v10

    mul-double/2addr v3, v6

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    sget-object v2, Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;->WIDTH:Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-wide v3, v1, v3

    mul-double/2addr v3, v8

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-double v8, p0

    div-double/2addr v3, v8

    mul-double/2addr v3, v6

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    sget-object p0, Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;->TEXT:Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$WordInfo;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p0, Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;->ROTATION_ANGLE:Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/image_text_translation/IttJsonKeys;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$WordInfo;->getPoly()[Landroid/graphics/Point;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslatorUtil;->getRotationAngleInDegrees([Landroid/graphics/Point;)D

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Error while setting values in JSON"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "ImageTextTranslatorUtil"

    invoke-static {p0, p2, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->B(Lorg/json/JSONException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-void
.end method

.method private static synthetic lambda$isOcrResultInValid$3(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$BlockInfo;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$BlockInfo;->getString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 7

    const-string v0, "ImageTextTranslatorUtil"

    const-string v1, "saveImage: It exist same "

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v5}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/itt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    move-result v5

    if-nez v5, :cond_0

    const-string p0, "saveImage: Dir is not created"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p0, v1, v3, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 p0, 0x1

    return p0

    :catchall_1
    move-exception p0

    move-object v3, p1

    goto :goto_5

    :catch_2
    move-exception p0

    move-object v3, p1

    goto :goto_1

    :catch_3
    move-object v3, p1

    goto :goto_3

    :cond_1
    :try_start_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return v2

    :goto_1
    :try_start_4
    const-string p1, "saveImage IOException"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_2

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    :catch_4
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    return v2

    :catch_5
    :goto_3
    :try_start_6
    const-string p0, "saveImage: File is not found"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v3, :cond_3

    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_4

    :catch_6
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_4
    return v2

    :goto_5
    if-eqz v3, :cond_4

    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_6

    :catch_7
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_6
    throw p0
.end method
