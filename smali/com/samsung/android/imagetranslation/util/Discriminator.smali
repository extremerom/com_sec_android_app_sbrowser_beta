.class public Lcom/samsung/android/imagetranslation/util/Discriminator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "Discriminator"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateScore(Ljava/util/List;)D
    .locals 13
    .param p0    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/imagetranslation/data/LttOcrResult$BlockInfo;",
            ">;)D"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/imagetranslation/util/Discriminator;->getWeightedRules()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    move-wide v5, v3

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le1/b;

    iget-object v8, v7, Le1/b;->b:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    add-double/2addr v3, v8

    iget-object v8, v7, Le1/b;->a:Ljava/lang/Object;

    move-object v9, v8

    check-cast v9, Lcom/samsung/android/imagetranslation/util/Rule;

    invoke-interface {v9, p0}, Lcom/samsung/android/imagetranslation/util/Rule;->getScore(Ljava/util/List;)D

    move-result-wide v9

    iget-object v7, v7, Le1/b;->b:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    mul-double/2addr v11, v9

    add-double/2addr v5, v11

    sget-object v7, Lcom/samsung/android/imagetranslation/util/Discriminator;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v8, Lcom/samsung/android/imagetranslation/util/Rule;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " weighted score : "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/imagetranslation/common/LTTLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    cmpl-double p0, v3, v1

    if-lez p0, :cond_1

    div-double v1, v5, v3

    :cond_1
    sget-object p0, Lcom/samsung/android/imagetranslation/util/Discriminator;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "score: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/imagetranslation/common/LTTLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v1
.end method

.method private static getWeightedRules()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le1/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Le1/b;

    new-instance v1, Lcom/samsung/android/imagetranslation/util/WordCountRule;

    invoke-direct {v1}, Lcom/samsung/android/imagetranslation/util/WordCountRule;-><init>()V

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Le1/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Le1/b;

    new-instance v3, Lcom/samsung/android/imagetranslation/util/LineWidthRule;

    invoke-direct {v3}, Lcom/samsung/android/imagetranslation/util/LineWidthRule;-><init>()V

    invoke-direct {v1, v3, v2}, Le1/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static isDocument(Lcom/samsung/android/imagetranslation/data/LttOcrResult;)Z
    .locals 4
    .param p0    # Lcom/samsung/android/imagetranslation/data/LttOcrResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/samsung/android/imagetranslation/data/LttOcrResult;->getBlockInfoList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/imagetranslation/util/Discriminator;->calculateScore(Ljava/util/List;)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isParagraph(Landroid/content/Context;Lcom/samsung/android/imagetranslation/data/LttOcrResult$BlockInfo;)Z
    .locals 6
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/samsung/android/imagetranslation/data/LttOcrResult$BlockInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/imagetranslation/util/Discriminator;->calculateScore(Ljava/util/List;)D

    move-result-wide v0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v0, v4

    if-gtz v0, :cond_1

    invoke-static {p0, p1}, Lcom/samsung/android/imagetranslation/util/Discriminator;->isShortSentence(Landroid/content/Context;Lcom/samsung/android/imagetranslation/data/LttOcrResult$BlockInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :cond_1
    :goto_0
    return v2
.end method

.method public static isParagraph(Lcom/samsung/android/imagetranslation/data/LttOcrResult$BlockInfo;)Z
    .locals 7
    .param p0    # Lcom/samsung/android/imagetranslation/data/LttOcrResult$BlockInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/imagetranslation/util/Discriminator;->calculateScore(Ljava/util/List;)D

    move-result-wide v3

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    cmpl-double p0, v3, v5

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method public static isShortSentence(Landroid/content/Context;Lcom/samsung/android/imagetranslation/data/LttOcrResult$BlockInfo;)Z
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/samsung/android/imagetranslation/data/LttOcrResult$BlockInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/samsung/android/imagetranslation/util/BlockInfoUtil;->getWordCount(Lcom/samsung/android/imagetranslation/data/LttOcrResult$BlockInfo;)I

    move-result v0

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v0, Lcom/samsung/android/imagetranslation/util/NLPAnalyzer;

    invoke-direct {v0, p0}, Lcom/samsung/android/imagetranslation/util/NLPAnalyzer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/imagetranslation/util/NLPAnalyzer;->isSentenceBlock(Lcom/samsung/android/imagetranslation/data/LttOcrResult$BlockInfo;)Z

    move-result p0

    return p0
.end method
