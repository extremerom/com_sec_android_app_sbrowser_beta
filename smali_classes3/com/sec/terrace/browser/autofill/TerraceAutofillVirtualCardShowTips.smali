.class public Lcom/sec/terrace/browser/autofill/TerraceAutofillVirtualCardShowTips;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/autofill/TerraceAutofillVirtualCardShowTips$TerraceVirtualCardTipsDelegate;
    }
.end annotation


# instance fields
.field private mDelegate:Lcom/sec/terrace/browser/autofill/TerraceAutofillVirtualCardShowTips$TerraceVirtualCardTipsDelegate;

.field private mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;


# direct methods
.method private constructor <init>(Lcom/sec/terrace/content/browser/TinWebContentsImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/autofill/TerraceAutofillVirtualCardShowTips;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/terrace/browser/autofill/TerraceAutofillVirtualCardShowTips;->mDelegate:Lcom/sec/terrace/browser/autofill/TerraceAutofillVirtualCardShowTips$TerraceVirtualCardTipsDelegate;

    return-void
.end method

.method public static create(Lcom/sec/terrace/content/browser/TinWebContentsImpl;)Lcom/sec/terrace/browser/autofill/TerraceAutofillVirtualCardShowTips;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lcom/sec/terrace/browser/autofill/TerraceAutofillVirtualCardShowTips;

    invoke-direct {v0, p0}, Lcom/sec/terrace/browser/autofill/TerraceAutofillVirtualCardShowTips;-><init>(Lcom/sec/terrace/content/browser/TinWebContentsImpl;)V

    return-object v0
.end method

.method private destroy()V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/terrace/browser/autofill/TerraceAutofillVirtualCardShowTips;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    return-void
.end method


# virtual methods
.method public setDelegate(Lcom/sec/terrace/browser/autofill/TerraceAutofillVirtualCardShowTips$TerraceVirtualCardTipsDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/autofill/TerraceAutofillVirtualCardShowTips;->mDelegate:Lcom/sec/terrace/browser/autofill/TerraceAutofillVirtualCardShowTips$TerraceVirtualCardTipsDelegate;

    return-void
.end method

.method public showVirtualCardTips(Landroid/view/View;Lorg/chromium/ui/base/WindowAndroid;FFFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 17
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p2 .. p2}, Lorg/chromium/ui/base/WindowAndroid;->getContext()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/content/Context;

    invoke-static/range {p13 .. p13}, Lcom/sec/terrace/browser/TerraceResourceId;->mapToDrawableId(I)I

    move-result v15

    invoke-virtual/range {p14 .. p14}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TinCustomIconFetcher;->getInstance()Lcom/sec/terrace/browser/autofill/TinCustomIconFetcher;

    move-result-object v1

    move-object/from16 v2, p14

    invoke-virtual {v1, v2}, Lcom/sec/terrace/browser/autofill/TinCustomIconFetcher;->getIcon(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    :goto_0
    move-object/from16 v16, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    iget-object v1, v0, Lcom/sec/terrace/browser/autofill/TerraceAutofillVirtualCardShowTips;->mDelegate:Lcom/sec/terrace/browser/autofill/TerraceAutofillVirtualCardShowTips$TerraceVirtualCardTipsDelegate;

    if-eqz v1, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v5, p3, v1

    mul-float v2, p4, v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_1

    iget-object v1, v0, Lcom/sec/terrace/browser/autofill/TerraceAutofillVirtualCardShowTips;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getContentOffsetYPix()F

    move-result v1

    :goto_2
    add-float/2addr v1, v2

    move v6, v1

    goto :goto_3

    :cond_1
    iget-object v3, v0, Lcom/sec/terrace/browser/autofill/TerraceAutofillVirtualCardShowTips;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {v3}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getContentOffsetYPix()F

    move-result v3

    const/high16 v6, 0x41c80000    # 25.0f

    mul-float/2addr v1, v6

    add-float/2addr v1, v3

    goto :goto_2

    :goto_3
    iget-object v2, v0, Lcom/sec/terrace/browser/autofill/TerraceAutofillVirtualCardShowTips;->mDelegate:Lcom/sec/terrace/browser/autofill/TerraceAutofillVirtualCardShowTips$TerraceVirtualCardTipsDelegate;

    move-object/from16 v3, p1

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    invoke-interface/range {v2 .. v16}, Lcom/sec/terrace/browser/autofill/TerraceAutofillVirtualCardShowTips$TerraceVirtualCardTipsDelegate;->showVirtualCardTips(Landroid/view/View;Landroid/content/Context;FFFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/drawable/BitmapDrawable;)V

    :cond_2
    return-void
.end method
