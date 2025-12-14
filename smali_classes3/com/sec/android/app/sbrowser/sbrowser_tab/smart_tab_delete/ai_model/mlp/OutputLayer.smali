.class public Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/OutputLayer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mInput:I

.field private final mOutput:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/OutputLayer;->mInput:I

    iput p2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/OutputLayer;->mOutput:I

    return-void
.end method

.method public static sigmoid([[D)[[D
    .locals 8

    array-length v0, p0

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    aput v2, v1, v2

    const/4 v2, 0x0

    aput v0, v1, v2

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v1, v2

    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    aget-object v3, v0, v1

    aget-object v4, p0, v1

    aget-wide v4, v4, v2

    neg-double v4, v4

    const-wide v6, 0x4005bf0a8b145769L    # Math.E

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v6

    div-double/2addr v6, v4

    aput-wide v6, v3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public outputLayer([[D[[D[D)[[D
    .locals 11

    array-length v0, p1

    iget v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/OutputLayer;->mOutput:I

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    const-wide/16 v3, 0x0

    move v5, v1

    :goto_1
    iget v6, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/OutputLayer;->mOutput:I

    if-ge v5, v6, :cond_1

    move v6, v1

    :goto_2
    iget v7, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/OutputLayer;->mInput:I

    if-ge v6, v7, :cond_0

    aget-object v7, p2, v5

    aget-wide v7, v7, v6

    aget-object v9, p1, v2

    aget-wide v9, v9, v6

    mul-double/2addr v7, v9

    add-double/2addr v3, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_0
    aget-object v6, v0, v2

    aget-wide v7, p3, v5

    add-double/2addr v7, v3

    aput-wide v7, v6, v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/OutputLayer;->sigmoid([[D)[[D

    move-result-object p0

    return-object p0
.end method
