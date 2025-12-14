.class public Lorg/chromium/content/browser/accessibility/ViewStructureBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinatesImpl;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/RenderCoordinatesImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/content/browser/accessibility/ViewStructureBuilder;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinatesImpl;

    return-void
.end method

.method private addViewStructureNodeChild(Landroid/view/ViewStructure;I)Landroid/view/ViewStructure;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-virtual {p1, p2}, Landroid/view/ViewStructure;->asyncNewChild(I)Landroid/view/ViewStructure;

    move-result-object p0

    return-object p0
.end method

.method private commitViewStructureNode(Landroid/view/ViewStructure;)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-virtual {p1}, Landroid/view/ViewStructure;->asyncCommit()V

    return-void
.end method

.method private populateViewStructureNode(Landroid/view/ViewStructure;Ljava/lang/String;ZIIIIFZZZZLjava/lang/String;I)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-virtual {p1, p13}, Landroid/view/ViewStructure;->setClassName(Ljava/lang/String;)V

    invoke-virtual {p1, p14}, Landroid/view/ViewStructure;->setChildCount(I)V

    if-eqz p3, :cond_0

    invoke-virtual {p1, p2, p4, p5}, Landroid/view/ViewStructure;->setText(Ljava/lang/CharSequence;II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/ViewStructure;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    float-to-double p2, p8

    const-wide/16 p4, 0x0

    cmpl-double p0, p2, p4

    if-ltz p0, :cond_4

    const/4 p0, 0x0

    if-eqz p10, :cond_1

    const/4 p2, 0x2

    goto :goto_1

    :cond_1
    move p2, p0

    :goto_1
    or-int/2addr p2, p9

    if-eqz p11, :cond_2

    const/4 p3, 0x4

    goto :goto_2

    :cond_2
    move p3, p0

    :goto_2
    or-int/2addr p2, p3

    if-eqz p12, :cond_3

    const/16 p0, 0x8

    :cond_3
    or-int/2addr p0, p2

    invoke-virtual {p1, p8, p6, p7, p0}, Landroid/view/ViewStructure;->setTextStyle(FIII)V

    :cond_4
    return-void
.end method

.method private setViewStructureNodeBounds(Landroid/view/ViewStructure;ZIIIIIIIIIIII)V
    .locals 14
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p7

    move/from16 v3, p8

    move/from16 v4, p9

    move/from16 v5, p10

    new-instance v6, Landroid/graphics/Rect;

    add-int v7, v0, p5

    add-int v8, v1, p6

    invoke-direct {v6, v0, v1, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz p2, :cond_0

    move-object v0, p0

    iget-object v0, v0, Lorg/chromium/content/browser/accessibility/ViewStructureBuilder;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinatesImpl;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getContentOffsetYPix()F

    move-result v0

    float-to-int v0, v0

    const/4 v1, 0x0

    invoke-virtual {v6, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    :cond_0
    iget v8, v6, Landroid/graphics/Rect;->left:I

    iget v9, v6, Landroid/graphics/Rect;->top:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, p1

    move/from16 v12, p5

    move/from16 v13, p6

    invoke-virtual/range {v7 .. v13}, Landroid/view/ViewStructure;->setDimens(IIIIII)V

    invoke-virtual {p1}, Landroid/view/ViewStructure;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "AccessibilityNodeInfo.unclippedTop"

    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "AccessibilityNodeInfo.unclippedBottom"

    add-int/2addr v3, v5

    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "AccessibilityNodeInfo.unclippedLeft"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "AccessibilityNodeInfo.unclippedRight"

    add-int/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "AccessibilityNodeInfo.unclippedWidth"

    invoke-virtual {v0, v1, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "AccessibilityNodeInfo.unclippedHeight"

    invoke-virtual {v0, v1, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "AccessibilityNodeInfo.pageAbsoluteLeft"

    move/from16 v2, p11

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "AccessibilityNodeInfo.pageAbsoluteTop"

    move/from16 v2, p12

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "AccessibilityNodeInfo.pageAbsoluteWidth"

    move/from16 v2, p13

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "AccessibilityNodeInfo.pageAbsoluteHeight"

    move/from16 v2, p14

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public setViewStructureNodeHtmlInfo(Landroid/view/ViewStructure;Ljava/lang/String;Ljava/lang/String;[[Ljava/lang/String;)V
    .locals 4
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-virtual {p1, p2}, Landroid/view/ViewStructure;->newHtmlInfoBuilder(Ljava/lang/String;)Landroid/view/ViewStructure$HtmlInfo$Builder;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string p2, "display"

    invoke-virtual {p0, p2, p3}, Landroid/view/ViewStructure$HtmlInfo$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Landroid/view/ViewStructure$HtmlInfo$Builder;

    array-length p2, p4

    const/4 p3, 0x0

    move v0, p3

    :goto_0
    if-ge v0, p2, :cond_0

    aget-object v1, p4, v0

    aget-object v2, v1, p3

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {p0, v2, v1}, Landroid/view/ViewStructure$HtmlInfo$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Landroid/view/ViewStructure$HtmlInfo$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewStructure$HtmlInfo$Builder;->build()Landroid/view/ViewStructure$HtmlInfo;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/ViewStructure;->setHtmlInfo(Landroid/view/ViewStructure$HtmlInfo;)V

    :cond_1
    return-void
.end method

.method public setViewStructureNodeHtmlMetadata(Landroid/view/ViewStructure;[Ljava/lang/String;)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-virtual {p1}, Landroid/view/ViewStructure;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p2, "metadata"

    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method
