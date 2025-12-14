.class public Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/HiddenLayer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mInput:I

.field private final mOutput:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/HiddenLayer;->mInput:I

    iput p2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/HiddenLayer;->mOutput:I

    return-void
.end method

.method private relu([[D)[[D
    .locals 9

    array-length v0, p1

    iget v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/HiddenLayer;->mOutput:I

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

    if-ge v2, v3, :cond_1

    move v3, v1

    :goto_1
    iget v4, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/HiddenLayer;->mOutput:I

    if-ge v3, v4, :cond_0

    aget-object v4, v0, v2

    aget-object v5, p1, v2

    aget-wide v5, v5, v3

    const-wide/16 v7, 0x0

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public forward([[D[D[[D)[[D
    .locals 12

    array-length v0, p1

    iget v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/HiddenLayer;->mOutput:I

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_2

    move v4, v1

    :goto_1
    iget v5, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/HiddenLayer;->mOutput:I

    if-ge v4, v5, :cond_1

    const-wide/16 v5, 0x0

    move v7, v1

    :goto_2
    iget v8, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/HiddenLayer;->mInput:I

    if-ge v7, v8, :cond_0

    aget-object v8, p3, v4

    aget-wide v8, v8, v7

    aget-object v10, p1, v3

    aget-wide v10, v10, v7

    mul-double/2addr v8, v10

    add-double/2addr v5, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_0
    aget-wide v7, p2, v4

    add-double/2addr v5, v7

    aget-object v7, v2, v3

    aput-wide v5, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/HiddenLayer;->relu([[D)[[D

    move-result-object p0

    return-object p0
.end method
