.class public Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mBiasL1:[D

.field private mBiasL2:[D

.field private mBiasL3:[D

.field private final mContext:Landroid/content/Context;

.field private mHiddenLayer1:Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/HiddenLayer;

.field private mHiddenLayer2:Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/HiddenLayer;

.field private mHiddenLayerNeurons:I

.field private mInputParameters:I

.field private mMBiasL1:[D

.field private mMBiasL2:[D

.field private mMBiasL3:[D

.field private mMWeightL1:[[D

.field private mMWeightL2:[[D

.field private mMWeightL3:[[D

.field private mOutputLayer:Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/OutputLayer;

.field private mOutputNeuron:I

.field private mTimestamp:I

.field private mVBiasL1:[D

.field private mVBiasL2:[D

.field private mVBiasL3:[D

.field private mVWeightL1:[[D

.field private mVWeightL2:[[D

.field private mVWeightL3:[[D

.field private mWeightL1:[[D

.field private mWeightL2:[[D

.field private mWeightL3:[[D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->initLayers()V

    return-void
.end method

.method private applyAdamOptimizer([[D[[D[[D[D[D[DID)V
    .locals 29

    move-object/from16 v0, p0

    move/from16 v1, p7

    iget v2, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mTimestamp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mTimestamp:I

    const/4 v3, 0x0

    :goto_0
    iget v4, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mHiddenLayerNeurons:I

    const-wide v5, 0x3f50624dd2f1aa00L    # 0.0010000000000000009

    const-wide v7, 0x3fb9999999999998L    # 0.09999999999999998

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    const-wide v11, 0x3feccccccccccccdL    # 0.9

    const-wide v13, 0x3feff7ced916872bL    # 0.999

    if-ge v3, v4, :cond_1

    const/4 v4, 0x0

    :goto_1
    iget v2, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mInputParameters:I

    if-ge v4, v2, :cond_0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mMWeightL1:[[D

    aget-object v2, v2, v3

    aget-wide v17, v2, v4

    mul-double v17, v17, v11

    aget-object v19, p1, v3

    aget-wide v20, v19, v4

    mul-double v20, v20, v7

    int-to-double v7, v1

    div-double v20, v20, v7

    add-double v20, v20, v17

    aput-wide v20, v2, v4

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mVWeightL1:[[D

    aget-object v15, v15, v3

    aget-wide v20, v15, v4

    mul-double v20, v20, v13

    aget-wide v23, v19, v4

    mul-double v25, v5, v23

    div-double v25, v25, v7

    mul-double v25, v25, v23

    div-double v25, v25, v7

    add-double v25, v25, v20

    aput-wide v25, v15, v4

    aget-wide v7, v2, v4

    iget v2, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mTimestamp:I

    int-to-double v5, v2

    invoke-static {v11, v12, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    sub-double v5, v9, v5

    div-double/2addr v7, v5

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mVWeightL1:[[D

    aget-object v2, v2, v3

    aget-wide v5, v2, v4

    iget v2, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mTimestamp:I

    int-to-double v11, v2

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    sub-double v11, v9, v11

    div-double/2addr v5, v11

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mWeightL1:[[D

    aget-object v2, v2, v3

    aget-wide v11, v2, v4

    mul-double v7, v7, p8

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    const-wide v17, 0x3e7ad7f29abcaf48L    # 1.0E-7

    add-double v5, v5, v17

    div-double/2addr v7, v5

    sub-double/2addr v11, v7

    aput-wide v11, v2, v4

    add-int/lit8 v4, v4, 0x1

    const-wide v5, 0x3f50624dd2f1aa00L    # 0.0010000000000000009

    const-wide v7, 0x3fb9999999999998L    # 0.09999999999999998

    const-wide v11, 0x3feccccccccccccdL    # 0.9

    goto :goto_1

    :cond_0
    iget-object v2, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mMBiasL1:[D

    aget-wide v4, v2, v3

    const-wide v6, 0x3feccccccccccccdL    # 0.9

    mul-double v11, v6, v4

    aget-wide v4, p4, v3

    const-wide v6, 0x3fb9999999999998L    # 0.09999999999999998

    mul-double v7, v6, v4

    int-to-double v4, v1

    div-double/2addr v7, v4

    add-double/2addr v7, v11

    aput-wide v7, v2, v3

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mVBiasL1:[D

    aget-wide v7, v6, v3

    mul-double/2addr v7, v13

    aget-wide v11, p4, v3

    const-wide v15, 0x3f50624dd2f1aa00L    # 0.0010000000000000009

    mul-double/2addr v15, v11

    div-double/2addr v15, v4

    mul-double/2addr v15, v11

    div-double/2addr v15, v4

    add-double/2addr v15, v7

    aput-wide v15, v6, v3

    aget-wide v4, v2, v3

    iget v2, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mTimestamp:I

    int-to-double v6, v2

    const-wide v11, 0x3feccccccccccccdL    # 0.9

    invoke-static {v11, v12, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    sub-double v6, v9, v6

    div-double/2addr v4, v6

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mVBiasL1:[D

    aget-wide v6, v2, v3

    iget v2, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mTimestamp:I

    int-to-double v11, v2

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    sub-double/2addr v9, v11

    div-double/2addr v6, v9

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mBiasL1:[D

    aget-wide v8, v2, v3

    mul-double v4, v4, p8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    const-wide v10, 0x3e7ad7f29abcaf48L    # 1.0E-7

    add-double/2addr v6, v10

    div-double/2addr v4, v6

    sub-double/2addr v8, v4

    aput-wide v8, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_2
    iget v3, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mHiddenLayerNeurons:I

    if-ge v2, v3, :cond_3

    const/4 v3, 0x0

    :goto_3
    iget v4, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mHiddenLayerNeurons:I

    if-ge v3, v4, :cond_2

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mMWeightL2:[[D

    aget-object v4, v4, v2

    aget-wide v5, v4, v3

    const-wide v7, 0x3feccccccccccccdL    # 0.9

    mul-double v11, v7, v5

    aget-object v5, p2, v2

    aget-wide v6, v5, v3

    const-wide v21, 0x3fb9999999999998L    # 0.09999999999999998

    mul-double v7, v21, v6

    int-to-double v9, v1

    div-double/2addr v7, v9

    add-double/2addr v7, v11

    aput-wide v7, v4, v3

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mVWeightL2:[[D

    aget-object v6, v6, v2

    aget-wide v7, v6, v3

    mul-double/2addr v7, v13

    aget-wide v11, v5, v3

    const-wide v15, 0x3f50624dd2f1aa00L    # 0.0010000000000000009

    mul-double v25, v15, v11

    div-double v25, v25, v9

    mul-double v25, v25, v11

    div-double v25, v25, v9

    add-double v25, v25, v7

    aput-wide v25, v6, v3

    aget-wide v4, v4, v3

    iget v6, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mTimestamp:I

    int-to-double v6, v6

    const-wide v8, 0x3feccccccccccccdL    # 0.9

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double v6, v8, v6

    div-double/2addr v4, v6

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mVWeightL2:[[D

    aget-object v6, v6, v2

    aget-wide v6, v6, v3

    iget v10, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mTimestamp:I

    int-to-double v10, v10

    invoke-static {v13, v14, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    sub-double v10, v8, v10

    div-double/2addr v6, v10

    iget-object v8, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mWeightL2:[[D

    aget-object v8, v8, v2

    aget-wide v9, v8, v3

    mul-double v4, v4, p8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    const-wide v11, 0x3e7ad7f29abcaf48L    # 1.0E-7

    add-double/2addr v6, v11

    div-double/2addr v4, v6

    sub-double/2addr v9, v4

    aput-wide v9, v8, v3

    add-int/lit8 v3, v3, 0x1

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    goto :goto_3

    :cond_2
    iget-object v3, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mMBiasL2:[D

    aget-wide v4, v3, v2

    const-wide v6, 0x3feccccccccccccdL    # 0.9

    mul-double v11, v6, v4

    aget-wide v4, p5, v2

    const-wide v6, 0x3fb9999999999998L    # 0.09999999999999998

    mul-double/2addr v4, v6

    int-to-double v6, v1

    div-double/2addr v4, v6

    add-double/2addr v4, v11

    aput-wide v4, v3, v2

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mVBiasL2:[D

    aget-wide v8, v4, v2

    mul-double/2addr v8, v13

    aget-wide v10, p5, v2

    const-wide v15, 0x3f50624dd2f1aa00L    # 0.0010000000000000009

    mul-double v25, v15, v10

    div-double v25, v25, v6

    mul-double v25, v25, v10

    div-double v25, v25, v6

    add-double v25, v25, v8

    aput-wide v25, v4, v2

    aget-wide v3, v3, v2

    iget v5, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mTimestamp:I

    int-to-double v5, v5

    const-wide v7, 0x3feccccccccccccdL    # 0.9

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    sub-double v9, v7, v5

    div-double/2addr v3, v9

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mVBiasL2:[D

    aget-wide v5, v5, v2

    iget v9, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mTimestamp:I

    int-to-double v9, v9

    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    sub-double v9, v7, v9

    div-double/2addr v5, v9

    iget-object v7, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mBiasL2:[D

    aget-wide v8, v7, v2

    mul-double v3, v3, p8

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    const-wide v10, 0x3e7ad7f29abcaf48L    # 1.0E-7

    add-double/2addr v5, v10

    div-double/2addr v3, v5

    sub-double/2addr v8, v3

    aput-wide v8, v7, v2

    add-int/lit8 v2, v2, 0x1

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_4
    iget v3, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mOutputNeuron:I

    if-ge v2, v3, :cond_5

    const/4 v3, 0x0

    :goto_5
    iget v4, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mHiddenLayerNeurons:I

    if-ge v3, v4, :cond_4

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mMWeightL3:[[D

    aget-object v4, v4, v2

    aget-wide v5, v4, v3

    const-wide v7, 0x3feccccccccccccdL    # 0.9

    mul-double v11, v7, v5

    aget-object v5, p3, v2

    aget-wide v6, v5, v3

    const-wide v8, 0x3fb9999999999998L    # 0.09999999999999998

    mul-double/2addr v6, v8

    int-to-double v8, v1

    div-double/2addr v6, v8

    add-double/2addr v6, v11

    aput-wide v6, v4, v3

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mVWeightL3:[[D

    aget-object v6, v6, v2

    aget-wide v10, v6, v3

    mul-double/2addr v10, v13

    aget-wide v25, v5, v3

    const-wide v15, 0x3f50624dd2f1aa00L    # 0.0010000000000000009

    mul-double v27, v15, v25

    div-double v27, v27, v8

    mul-double v27, v27, v25

    div-double v27, v27, v8

    add-double v27, v27, v10

    aput-wide v27, v6, v3

    aget-wide v4, v4, v3

    iget v6, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mTimestamp:I

    int-to-double v6, v6

    const-wide v8, 0x3feccccccccccccdL    # 0.9

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double v6, v8, v6

    div-double/2addr v4, v6

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mVWeightL3:[[D

    aget-object v6, v6, v2

    aget-wide v6, v6, v3

    iget v10, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mTimestamp:I

    int-to-double v10, v10

    invoke-static {v13, v14, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    sub-double v10, v8, v10

    div-double/2addr v6, v10

    iget-object v8, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mWeightL3:[[D

    aget-object v8, v8, v2

    aget-wide v9, v8, v3

    mul-double v4, v4, p8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    const-wide v11, 0x3e7ad7f29abcaf48L    # 1.0E-7

    add-double/2addr v6, v11

    div-double/2addr v4, v6

    sub-double/2addr v9, v4

    aput-wide v9, v8, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_4
    iget-object v3, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mMBiasL3:[D

    aget-wide v4, v3, v2

    const-wide v6, 0x3feccccccccccccdL    # 0.9

    mul-double v11, v6, v4

    aget-wide v4, p6, v2

    const-wide v6, 0x3fb9999999999998L    # 0.09999999999999998

    mul-double/2addr v4, v6

    int-to-double v8, v1

    div-double/2addr v4, v8

    add-double/2addr v4, v11

    aput-wide v4, v3, v2

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mVBiasL3:[D

    aget-wide v10, v4, v2

    mul-double/2addr v10, v13

    aget-wide v21, p6, v2

    const-wide v15, 0x3f50624dd2f1aa00L    # 0.0010000000000000009

    mul-double v25, v15, v21

    div-double v25, v25, v8

    mul-double v25, v25, v21

    div-double v25, v25, v8

    add-double v25, v25, v10

    aput-wide v25, v4, v2

    aget-wide v3, v3, v2

    iget v5, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mTimestamp:I

    int-to-double v8, v5

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    sub-double v8, v19, v8

    div-double/2addr v3, v8

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mVBiasL3:[D

    aget-wide v8, v5, v2

    iget v5, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mTimestamp:I

    int-to-double v6, v5

    invoke-static {v13, v14, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    sub-double v5, v19, v5

    div-double/2addr v8, v5

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mBiasL3:[D

    aget-wide v6, v5, v2

    mul-double v3, v3, p8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    const-wide v17, 0x3e7ad7f29abcaf48L    # 1.0E-7

    add-double v8, v8, v17

    div-double/2addr v3, v8

    sub-double/2addr v6, v3

    aput-wide v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    :cond_5
    return-void
.end method

.method private backpropagation([[[D[[D[[DD)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    aget-object v3, p1, v2

    const/4 v4, 0x1

    aget-object v5, p1, v4

    const/4 v6, 0x2

    aget-object v7, p1, v6

    array-length v8, v1

    iget v9, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mOutputNeuron:I

    new-array v10, v6, [I

    aput v9, v10, v4

    aput v8, v10, v2

    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[D

    iget v11, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mOutputNeuron:I

    iget v12, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mHiddenLayerNeurons:I

    new-array v13, v6, [I

    aput v12, v13, v4

    aput v11, v13, v2

    invoke-static {v9, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[D

    iget v12, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mOutputNeuron:I

    new-array v12, v12, [D

    iget v13, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mHiddenLayerNeurons:I

    new-array v14, v6, [I

    aput v13, v14, v4

    aput v8, v14, v2

    invoke-static {v9, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[D

    iget v14, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mHiddenLayerNeurons:I

    new-array v15, v6, [I

    aput v14, v15, v4

    aput v8, v15, v2

    invoke-static {v9, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [[D

    iget v15, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mHiddenLayerNeurons:I

    move-object/from16 v16, v3

    new-array v3, v6, [I

    aput v15, v3, v4

    aput v15, v3, v2

    invoke-static {v9, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    iget v15, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mHiddenLayerNeurons:I

    new-array v2, v15, [D

    move-object/from16 p1, v3

    new-array v3, v6, [I

    aput v15, v3, v4

    const/4 v15, 0x0

    aput v8, v3, v15

    invoke-static {v9, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    iget v15, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mHiddenLayerNeurons:I

    move-object/from16 v17, v3

    new-array v3, v6, [I

    aput v15, v3, v4

    const/4 v15, 0x0

    aput v8, v3, v15

    invoke-static {v9, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    iget v15, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mHiddenLayerNeurons:I

    move-object/from16 v18, v3

    iget v3, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mInputParameters:I

    new-array v6, v6, [I

    aput v3, v6, v4

    const/4 v3, 0x0

    aput v15, v6, v3

    invoke-static {v9, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[D

    iget v6, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mHiddenLayerNeurons:I

    new-array v6, v6, [D

    move v9, v3

    :goto_0
    if-ge v9, v8, :cond_8

    move v15, v3

    :goto_1
    iget v3, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mOutputNeuron:I

    if-ge v15, v3, :cond_1

    aget-object v3, v10, v9

    aget-object v19, v7, v9

    aget-wide v19, v19, v15

    aget-object v21, v1, v9

    aget-wide v21, v21, v15

    sub-double v19, v19, v21

    aput-wide v19, v3, v15

    aget-wide v21, v12, v15

    add-double v21, v21, v19

    aput-wide v21, v12, v15

    const/4 v3, 0x0

    :goto_2
    iget v1, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mHiddenLayerNeurons:I

    if-ge v3, v1, :cond_0

    aget-object v1, v11, v15

    aget-wide v19, v1, v3

    aget-object v21, v10, v9

    aget-wide v21, v21, v15

    aget-object v23, v5, v9

    aget-wide v23, v23, v3

    mul-double v21, v21, v23

    add-double v21, v21, v19

    aput-wide v21, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p2

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_3
    iget v3, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mHiddenLayerNeurons:I

    const-wide/16 v19, 0x0

    if-ge v1, v3, :cond_4

    aget-object v3, v13, v9

    aput-wide v19, v3, v1

    const/4 v3, 0x0

    :goto_4
    iget v15, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mOutputNeuron:I

    if-ge v3, v15, :cond_2

    aget-object v15, v13, v9

    aget-wide v19, v15, v1

    aget-object v21, v10, v9

    aget-wide v21, v21, v3

    move-object/from16 v23, v7

    iget-object v7, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mWeightL3:[[D

    aget-object v7, v7, v3

    aget-wide v24, v7, v1

    mul-double v21, v21, v24

    add-double v21, v21, v19

    aput-wide v21, v15, v1

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v7, v23

    goto :goto_4

    :cond_2
    move-object/from16 v23, v7

    aget-object v3, v14, v9

    aget-object v7, v13, v9

    aget-wide v19, v7, v1

    aget-object v7, v5, v9

    move v15, v8

    aget-wide v7, v7, v1

    invoke-direct {v0, v7, v8}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->reluDerivative(D)D

    move-result-wide v7

    mul-double v19, v19, v7

    aput-wide v19, v3, v1

    aget-wide v7, v2, v1

    aget-object v3, v14, v9

    aget-wide v19, v3, v1

    add-double v7, v7, v19

    aput-wide v7, v2, v1

    const/4 v3, 0x0

    :goto_5
    iget v7, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mHiddenLayerNeurons:I

    if-ge v3, v7, :cond_3

    aget-object v7, p1, v1

    aget-wide v19, v7, v3

    aget-object v8, v14, v9

    aget-wide v21, v8, v1

    aget-object v8, v16, v9

    aget-wide v24, v8, v3

    mul-double v21, v21, v24

    add-double v21, v21, v19

    aput-wide v21, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_3
    add-int/lit8 v1, v1, 0x1

    move v8, v15

    move-object/from16 v7, v23

    goto :goto_3

    :cond_4
    move-object/from16 v23, v7

    move v15, v8

    const/4 v1, 0x0

    :goto_6
    iget v3, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mHiddenLayerNeurons:I

    if-ge v1, v3, :cond_7

    aget-object v3, v17, v9

    aput-wide v19, v3, v1

    const/4 v3, 0x0

    :goto_7
    iget v7, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mHiddenLayerNeurons:I

    if-ge v3, v7, :cond_5

    aget-object v7, v17, v9

    aget-wide v21, v7, v1

    aget-object v8, v14, v9

    aget-wide v24, v8, v3

    iget-object v8, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mWeightL2:[[D

    aget-object v8, v8, v3

    aget-wide v26, v8, v1

    mul-double v24, v24, v26

    add-double v24, v24, v21

    aput-wide v24, v7, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_5
    aget-object v3, v18, v9

    aget-object v7, v17, v9

    aget-wide v7, v7, v1

    aget-object v21, v16, v9

    move-object/from16 v22, v13

    move-object/from16 v24, v14

    aget-wide v13, v21, v1

    invoke-direct {v0, v13, v14}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->reluDerivative(D)D

    move-result-wide v13

    mul-double/2addr v7, v13

    aput-wide v7, v3, v1

    aget-wide v7, v6, v1

    aget-object v3, v18, v9

    aget-wide v13, v3, v1

    add-double/2addr v7, v13

    aput-wide v7, v6, v1

    const/4 v3, 0x0

    :goto_8
    iget v7, v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mInputParameters:I

    if-ge v3, v7, :cond_6

    aget-object v7, v4, v1

    aget-wide v13, v7, v3

    aget-object v8, v18, v9

    aget-wide v25, v8, v1

    aget-object v8, p3, v9

    aget-wide v27, v8, v3

    mul-double v25, v25, v27

    add-double v25, v25, v13

    aput-wide v25, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_6
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v13, v22

    move-object/from16 v14, v24

    goto :goto_6

    :cond_7
    move-object/from16 v22, v13

    move-object/from16 v24, v14

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p2

    move v8, v15

    move-object/from16 v7, v23

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_8
    move v15, v8

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v5, v2

    move-object/from16 v2, p1

    move-object v3, v11

    move-object v4, v6

    move-object v6, v12

    move v7, v15

    move-wide/from16 v8, p4

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->applyAdamOptimizer([[D[[D[[D[D[D[DID)V

    return-void
.end method

.method private createMiniBatches([[DI)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[DI)",
            "Ljava/util/List<",
            "[[D>;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p1

    aget-object p1, p1, v1

    array-length p1, p1

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_2

    add-int v4, v3, p2

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    sub-int v6, v5, v3

    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x1

    aput p1, v7, v8

    aput v6, v7, v1

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[D

    move v7, v3

    :goto_2
    if-ge v7, v5, :cond_1

    sub-int v8, v7, v3

    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [D

    aput-object v9, v6, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v4

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method private forwardPropagation([[D)[[[D
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mHiddenLayer1:Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/HiddenLayer;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mBiasL1:[D

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mWeightL1:[[D

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/HiddenLayer;->forward([[D[D[[D)[[D

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mHiddenLayer2:Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/HiddenLayer;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mBiasL2:[D

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mWeightL2:[[D

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/HiddenLayer;->forward([[D[D[[D)[[D

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mOutputLayer:Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/OutputLayer;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mWeightL3:[[D

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mBiasL3:[D

    invoke-virtual {v1, v0, v2, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/OutputLayer;->outputLayer([[D[[D[D)[[D

    move-result-object p0

    filled-new-array {p1, v0, p0}, [[[D

    move-result-object p0

    return-object p0
.end method

.method private init()V
    .locals 7

    iget v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mHiddenLayerNeurons:I

    iget v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mInputParameters:I

    const/4 v2, 0x2

    new-array v3, v2, [I

    const/4 v4, 0x1

    aput v1, v3, v4

    const/4 v1, 0x0

    aput v0, v3, v1

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mWeightL1:[[D

    iget v3, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mHiddenLayerNeurons:I

    new-array v5, v2, [I

    aput v3, v5, v4

    aput v3, v5, v1

    invoke-static {v0, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mWeightL2:[[D

    iget v3, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mOutputNeuron:I

    iget v5, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mHiddenLayerNeurons:I

    new-array v6, v2, [I

    aput v5, v6, v4

    aput v3, v6, v1

    invoke-static {v0, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mWeightL3:[[D

    iget v3, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mHiddenLayerNeurons:I

    new-array v5, v3, [D

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mBiasL1:[D

    new-array v5, v3, [D

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mBiasL2:[D

    iget v5, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mOutputNeuron:I

    new-array v5, v5, [D

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mBiasL3:[D

    iget v5, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mInputParameters:I

    new-array v6, v2, [I

    aput v5, v6, v4

    aput v3, v6, v1

    invoke-static {v0, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mMWeightL1:[[D

    iget v3, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mHiddenLayerNeurons:I

    iget v5, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mInputParameters:I

    new-array v6, v2, [I

    aput v5, v6, v4

    aput v3, v6, v1

    invoke-static {v0, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mVWeightL1:[[D

    iget v3, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mHiddenLayerNeurons:I

    new-array v5, v2, [I

    aput v3, v5, v4

    aput v3, v5, v1

    invoke-static {v0, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mMWeightL2:[[D

    iget v3, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mHiddenLayerNeurons:I

    new-array v5, v2, [I

    aput v3, v5, v4

    aput v3, v5, v1

    invoke-static {v0, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mVWeightL2:[[D

    iget v3, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mOutputNeuron:I

    iget v5, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mHiddenLayerNeurons:I

    new-array v6, v2, [I

    aput v5, v6, v4

    aput v3, v6, v1

    invoke-static {v0, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mMWeightL3:[[D

    iget v3, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mOutputNeuron:I

    iget v5, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mHiddenLayerNeurons:I

    new-array v2, v2, [I

    aput v5, v2, v4

    aput v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mVWeightL3:[[D

    iget v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mHiddenLayerNeurons:I

    new-array v1, v0, [D

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mMBiasL1:[D

    new-array v1, v0, [D

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mVBiasL1:[D

    new-array v1, v0, [D

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mMBiasL2:[D

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mVBiasL2:[D

    iget v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mOutputNeuron:I

    new-array v1, v0, [D

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mMBiasL3:[D

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mVBiasL3:[D

    return-void
.end method

.method private initLayers()V
    .locals 3

    const/16 v0, 0x1b

    iput v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mInputParameters:I

    const/16 v1, 0x20

    iput v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mHiddenLayerNeurons:I

    const/4 v2, 0x1

    iput v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mOutputNeuron:I

    new-instance v2, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/HiddenLayer;

    invoke-direct {v2, v0, v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/HiddenLayer;-><init>(II)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mHiddenLayer1:Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/HiddenLayer;

    new-instance v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/HiddenLayer;

    iget v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mHiddenLayerNeurons:I

    invoke-direct {v0, v1, v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/HiddenLayer;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mHiddenLayer2:Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/HiddenLayer;

    new-instance v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/OutputLayer;

    iget v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mHiddenLayerNeurons:I

    iget v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mOutputNeuron:I

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/OutputLayer;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mOutputLayer:Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/OutputLayer;

    return-void
.end method

.method private initWeightBias()V
    .locals 12

    const-string v0, "Error while closing buffer reader "

    const-string v1, "Error while closing file reader "

    const-string v2, "MultiLayerPerceptron"

    const-string v3, "/MLP_Weights_Bias_Sub.json"

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->init()V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/MLP_Weights_Bias.json"

    invoke-static {v4, v5}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    :try_start_0
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    const-string v11, "MLP_Weights_Bias.json"

    invoke-virtual {v10, v11}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v9, v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v9}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->isFileValid(Ljava/io/File;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->checkIfFileWrittenCorrectly(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_9

    :catch_0
    move-exception p0

    goto/16 :goto_8

    :cond_0
    :goto_0
    const-string v5, "initWeightBias: Reading from substitute file"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v9}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->isFileValid(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->checkIfFileWrittenCorrectly(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v7, v4

    goto :goto_3

    :catchall_1
    move-exception p0

    :goto_1
    move-object v7, v3

    goto/16 :goto_9

    :catch_1
    move-exception p0

    :goto_2
    move-object v7, v3

    goto/16 :goto_8

    :cond_2
    :try_start_3
    const-string v3, "initWeightBias: Using weights from assets file"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v3, v7

    move-object v7, v8

    :goto_3
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_4
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :catchall_2
    move-exception p0

    move-object v8, v7

    goto :goto_1

    :catch_2
    move-exception p0

    move-object v8, v7

    goto :goto_2

    :cond_3
    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    const-string v9, "L1_Weights"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-direct {p0, v8}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->readWeights(Lorg/json/JSONArray;)[[D

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mWeightL1:[[D

    goto :goto_5

    :cond_5
    const-string v9, "L2_Weights"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-direct {p0, v8}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->readWeights(Lorg/json/JSONArray;)[[D

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mWeightL2:[[D

    goto :goto_5

    :cond_6
    const-string v9, "L3_Weights"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-direct {p0, v8}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->readWeights(Lorg/json/JSONArray;)[[D

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mWeightL3:[[D

    goto :goto_5

    :cond_7
    const-string v9, "L1_Bias"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-direct {p0, v8}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->readParams(Lorg/json/JSONArray;)[D

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mBiasL1:[D

    goto :goto_5

    :cond_8
    const-string v9, "L2_Bias"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-direct {p0, v8}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->readParams(Lorg/json/JSONArray;)[D

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mBiasL2:[D

    goto :goto_5

    :cond_9
    const-string v9, "L3_Bias"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-direct {p0, v8}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->readParams(Lorg/json/JSONArray;)[D

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mBiasL3:[D

    goto :goto_5

    :cond_a
    const-string v9, "L1_MWeights"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-direct {p0, v8}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->readWeights(Lorg/json/JSONArray;)[[D

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mMWeightL1:[[D

    goto :goto_5

    :cond_b
    const-string v9, "L1_VWeights"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-direct {p0, v8}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->readWeights(Lorg/json/JSONArray;)[[D

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mVWeightL1:[[D

    goto/16 :goto_5

    :cond_c
    const-string v9, "L2_MWeights"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-direct {p0, v8}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->readWeights(Lorg/json/JSONArray;)[[D

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mMWeightL2:[[D

    goto/16 :goto_5

    :cond_d
    const-string v9, "L2_VWeights"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-direct {p0, v8}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->readWeights(Lorg/json/JSONArray;)[[D

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mVWeightL2:[[D

    goto/16 :goto_5

    :cond_e
    const-string v9, "L3_MWeights"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-direct {p0, v8}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->readWeights(Lorg/json/JSONArray;)[[D

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mMWeightL3:[[D

    goto/16 :goto_5

    :cond_f
    const-string v9, "L3_VWeights"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-direct {p0, v8}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->readWeights(Lorg/json/JSONArray;)[[D

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mVWeightL3:[[D

    goto/16 :goto_5

    :cond_10
    const-string v9, "L1_MBias"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-direct {p0, v8}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->readParams(Lorg/json/JSONArray;)[D

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mMBiasL1:[D

    goto/16 :goto_5

    :cond_11
    const-string v9, "L1_VBias"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-direct {p0, v8}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->readParams(Lorg/json/JSONArray;)[D

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mVBiasL1:[D

    goto/16 :goto_5

    :cond_12
    const-string v9, "L2_MBias"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-direct {p0, v8}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->readParams(Lorg/json/JSONArray;)[D

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mMBiasL2:[D

    goto/16 :goto_5

    :cond_13
    const-string v9, "L2_VBias"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    invoke-direct {p0, v8}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->readParams(Lorg/json/JSONArray;)[D

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mVBiasL2:[D

    goto/16 :goto_5

    :cond_14
    const-string v9, "L3_MBias"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    invoke-direct {p0, v8}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->readParams(Lorg/json/JSONArray;)[D

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mMBiasL3:[D

    goto/16 :goto_5

    :cond_15
    const-string v9, "L3_VBias"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-direct {p0, v8}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->readParams(Lorg/json/JSONArray;)[D

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mVBiasL3:[D
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/16 :goto_5

    :cond_16
    if-eqz v3, :cond_17

    :try_start_5
    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_6

    :catch_3
    move-exception p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    :goto_6
    :try_start_6
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_7

    :catch_4
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    return-void

    :catchall_3
    move-exception p0

    move-object v8, v7

    goto :goto_9

    :catch_5
    move-exception p0

    move-object v8, v7

    :goto_8
    :try_start_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while reading weights/params from json "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_9
    if-eqz v7, :cond_18

    :try_start_8
    invoke-virtual {v7}, Ljava/io/Reader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_a

    :catch_6
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    :goto_a
    if-eqz v8, :cond_19

    :try_start_9
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_b

    :catch_7
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    :goto_b
    throw p0
.end method

.method private isFileValid(Ljava/io/File;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private predict([[D)[[D
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->forwardPropagation([[D)[[[D

    move-result-object p0

    const/4 p1, 0x2

    aget-object p0, p0, p1

    return-object p0
.end method

.method private readParams(Lorg/json/JSONArray;)[D
    .locals 4

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p0

    new-array v0, p0, [D

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private readWeights(Lorg/json/JSONArray;)[[D
    .locals 8

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    aput p0, v2, v0

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    move v3, v0

    :goto_0
    if-ge v3, p0, :cond_1

    move v4, v0

    :goto_1
    if-ge v4, v1, :cond_0

    aget-object v5, v2, v3

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v6

    aput-wide v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private reluDerivative(D)D
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double p0, p1, v0

    if-lez p0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :cond_0
    return-wide v0
.end method

.method private train(Ljava/util/List;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[[D>;",
            "Ljava/util/List<",
            "[[D>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mTimestamp:I

    const-wide v1, 0x3f847ae147ae147bL    # 0.01

    move v9, v0

    :goto_0
    const/16 v3, 0x12c

    if-ge v9, v3, :cond_1

    move v10, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v10, v3, :cond_0

    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->forwardPropagation([[D)[[[D

    move-result-object v4

    invoke-interface {p2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, [[D

    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, [[D

    move-object v3, p0

    move-wide v7, v1

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->backpropagation([[[D[[D[[DD)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_0
    const-wide v3, 0x3fee666666666666L    # 0.95

    mul-double/2addr v1, v3

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateParamsToJson(Lorg/json/JSONObject;[DLjava/lang/String;)V
    .locals 3

    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    aget-wide v1, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {p1, p3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Error while updating params to json "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MultiLayerPerceptron"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private updateWeightBiasToJson()Z
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "MultiLayerPerceptron"

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "updateWeightBiasToJson: Could not make directory"

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/MLP_Weights_Bias.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->writeToFile(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->checkIfFileWrittenCorrectly(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "updateWeightBiasToJson: Main File written successfully"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/MLP_Weights_Bias_Sub.json"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->writeToFile(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->checkIfFileWrittenCorrectly(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->writeToSubstituteFile()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v3
.end method

.method private updateWeightToJson(Lorg/json/JSONObject;[[DLjava/lang/String;)V
    .locals 6

    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    :try_start_0
    array-length v3, p2

    if-ge v2, v3, :cond_1

    move v3, v1

    :goto_1
    aget-object v4, p2, v1

    array-length v4, v4

    if-ge v3, v4, :cond_0

    aget-object v4, p2, v2

    aget-wide v4, v4, v3

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Error while updating weights to json "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MultiLayerPerceptron"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method


# virtual methods
.method public calculateImportanceInGroup(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->initWeightBias()V

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    const/16 v3, 0x1b

    aput v3, v1, v2

    const/4 v3, 0x0

    aput v0, v1, v3

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v4

    new-array v4, v4, [I

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v3

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;

    invoke-static {v7}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteUtils;->getInputParameters(Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;)[D

    move-result-object v8

    aput-object v8, v0, v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getTabId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getTabUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v6

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->getTabId()I

    move-result v7

    aput v7, v4, v6

    add-int/2addr v6, v2

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteUtils;->normalize([[D)[[D

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->predict([[D)[[D

    move-result-object p0

    move v0, v3

    :goto_1
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    aget v1, v4, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;

    aget-object v2, p0, v0

    aget-wide v5, v2, v3

    if-eqz v1, :cond_2

    invoke-virtual {v1, v5, v6}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteEntity;->setNonImportanceMLPJava(D)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-object p1
.end method

.method public checkIfFileWrittenCorrectly(Ljava/lang/String;)Z
    .locals 6

    const-string v0, "Error while closing buffer reader "

    const-string v1, "MultiLayerPerceptron"

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->isFileValid(Ljava/io/File;)Z

    move-result p0

    const/4 v2, 0x0

    if-nez p0, :cond_0

    return v2

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v3, v4

    goto :goto_4

    :catch_0
    move-exception p0

    move-object v3, v4

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 p0, 0x1

    return p0

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p0

    :goto_2
    :try_start_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error during checkIfFileWrittenCorrectly: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_2

    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_3
    return v2

    :goto_4
    if-eqz v3, :cond_3

    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_5
    throw p0
.end method

.method public retrain([[F)Z
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "retrain called with entries: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p1

    const-string v2, "MultiLayerPerceptron"

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    array-length v0, p1

    iget v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mInputParameters:I

    const/4 v2, 0x2

    new-array v3, v2, [I

    const/4 v4, 0x1

    aput v1, v3, v4

    const/4 v1, 0x0

    aput v0, v3, v1

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    array-length v5, p1

    iget v6, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mOutputNeuron:I

    new-array v2, v2, [I

    aput v6, v2, v4

    aput v5, v2, v1

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v2, v1

    :goto_0
    array-length v5, p1

    if-ge v2, v5, :cond_1

    move v5, v1

    :goto_1
    aget-object v6, p1, v1

    array-length v7, v6

    sub-int/2addr v7, v4

    if-ge v5, v7, :cond_0

    aget-object v6, v3, v2

    aget-object v7, p1, v2

    aget v7, v7, v5

    float-to-double v7, v7

    aput-wide v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    aget-object v5, v0, v2

    aget-object v7, p1, v2

    array-length v6, v6

    sub-int/2addr v6, v4

    aget v6, v7, v6

    float-to-double v6, v6

    aput-wide v6, v5, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/smart_tab_delete/SmartTabDeleteUtils;->normalize([[D)[[D

    move-result-object p1

    const/16 v1, 0x64

    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->createMiniBatches([[DI)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->createMiniBatches([[DI)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->initWeightBias()V

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->train(Ljava/util/List;Ljava/util/List;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->updateWeightBiasToJson()Z

    move-result p0

    return p0
.end method

.method public writeToFile(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    :goto_0
    :try_start_1
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v0, "application/json"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mContext:Landroid/content/Context;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v2, p1, v0, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mWeightL1:[[D

    const-string v2, "L1_Weights"

    invoke-direct {p0, p1, v0, v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->updateWeightToJson(Lorg/json/JSONObject;[[DLjava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mWeightL2:[[D

    const-string v2, "L2_Weights"

    invoke-direct {p0, p1, v0, v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->updateWeightToJson(Lorg/json/JSONObject;[[DLjava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mWeightL3:[[D

    const-string v2, "L3_Weights"

    invoke-direct {p0, p1, v0, v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->updateWeightToJson(Lorg/json/JSONObject;[[DLjava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mBiasL1:[D

    const-string v2, "L1_Bias"

    invoke-direct {p0, p1, v0, v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->updateParamsToJson(Lorg/json/JSONObject;[DLjava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mBiasL2:[D

    const-string v2, "L2_Bias"

    invoke-direct {p0, p1, v0, v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->updateParamsToJson(Lorg/json/JSONObject;[DLjava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mBiasL3:[D

    const-string v2, "L3_Bias"

    invoke-direct {p0, p1, v0, v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->updateParamsToJson(Lorg/json/JSONObject;[DLjava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mMWeightL1:[[D

    const-string v2, "L1_MWeights"

    invoke-direct {p0, p1, v0, v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->updateWeightToJson(Lorg/json/JSONObject;[[DLjava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mMWeightL2:[[D

    const-string v2, "L2_MWeights"

    invoke-direct {p0, p1, v0, v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->updateWeightToJson(Lorg/json/JSONObject;[[DLjava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mMWeightL3:[[D

    const-string v2, "L3_MWeights"

    invoke-direct {p0, p1, v0, v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->updateWeightToJson(Lorg/json/JSONObject;[[DLjava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mMBiasL1:[D

    const-string v2, "L1_MBias"

    invoke-direct {p0, p1, v0, v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->updateParamsToJson(Lorg/json/JSONObject;[DLjava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mMBiasL2:[D

    const-string v2, "L2_MBias"

    invoke-direct {p0, p1, v0, v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->updateParamsToJson(Lorg/json/JSONObject;[DLjava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mMBiasL3:[D

    const-string v2, "L3_MBias"

    invoke-direct {p0, p1, v0, v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->updateParamsToJson(Lorg/json/JSONObject;[DLjava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mVWeightL1:[[D

    const-string v2, "L1_VWeights"

    invoke-direct {p0, p1, v0, v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->updateWeightToJson(Lorg/json/JSONObject;[[DLjava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mVWeightL2:[[D

    const-string v2, "L2_VWeights"

    invoke-direct {p0, p1, v0, v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->updateWeightToJson(Lorg/json/JSONObject;[[DLjava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mVWeightL3:[[D

    const-string v2, "L3_VWeights"

    invoke-direct {p0, p1, v0, v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->updateWeightToJson(Lorg/json/JSONObject;[[DLjava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mVBiasL1:[D

    const-string v2, "L1_VBias"

    invoke-direct {p0, p1, v0, v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->updateParamsToJson(Lorg/json/JSONObject;[DLjava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mVBiasL2:[D

    const-string v2, "L2_VBias"

    invoke-direct {p0, p1, v0, v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->updateParamsToJson(Lorg/json/JSONObject;[DLjava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mVBiasL3:[D

    const-string v2, "L3_VBias"

    invoke-direct {p0, p1, v0, v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->updateParamsToJson(Lorg/json/JSONObject;[DLjava/lang/String;)V

    const/4 p0, 0x4

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    :catch_1
    move-exception p0

    goto :goto_2

    :catchall_0
    move-exception p0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_5
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public writeToSubstituteFile()Z
    .locals 4

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/ai_model/mlp/MultiLayerPerceptron;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const-string v1, "/MLP_Weights_Bias_Sub.json"

    invoke-static {p0, v1}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/MLP_Weights_Bias.json"

    invoke-static {p0, v2}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/nio/file/CopyOption;

    sget-object v3, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v3, v2, v0

    invoke-static {p0, v1, v2}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-interface {p0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "writeToSubstituteFile: failed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "MultiLayerPerceptron"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method
