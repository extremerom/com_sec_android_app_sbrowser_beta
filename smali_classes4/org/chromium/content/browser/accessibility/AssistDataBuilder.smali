.class public Lorg/chromium/content/browser/accessibility/AssistDataBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addChildNode(Landroid/view/ViewStructure;I)Landroid/view/ViewStructure;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-virtual {p1, p2}, Landroid/view/ViewStructure;->asyncNewChild(I)Landroid/view/ViewStructure;

    move-result-object p0

    return-object p0
.end method

.method public commitNode(Landroid/view/ViewStructure;)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-virtual {p1}, Landroid/view/ViewStructure;->asyncCommit()V

    return-void
.end method

.method public populateBaseProperties(Landroid/view/ViewStructure;Ljava/lang/String;I)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-virtual {p1, p2}, Landroid/view/ViewStructure;->setClassName(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Landroid/view/ViewStructure;->setChildCount(I)V

    return-void
.end method

.method public populateBoundsProperties(Landroid/view/ViewStructure;IIIILorg/chromium/content/browser/accessibility/AccessibilityDelegate$AccessibilityCoordinates;Landroid/view/View;)V
    .locals 7
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance p0, Landroid/graphics/Rect;

    add-int/2addr p4, p2

    add-int/2addr p5, p3

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1}, Landroid/view/ViewStructure;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p0, p2, p6, p7, p3}, Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder;->convertWebRectToAndroidCoordinates(Landroid/graphics/Rect;Landroid/os/Bundle;Lorg/chromium/content/browser/accessibility/AccessibilityDelegate$AccessibilityCoordinates;Landroid/view/View;Z)V

    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/view/ViewStructure;->setDimens(IIIIII)V

    return-void
.end method

.method public populateHTMLMetadataProperties(Landroid/view/ViewStructure;[Ljava/lang/String;)V
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

.method public populateHTMLProperties(Landroid/view/ViewStructure;Ljava/lang/String;Ljava/lang/String;[[Ljava/lang/String;)V
    .locals 4
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-virtual {p1, p2}, Landroid/view/ViewStructure;->newHtmlInfoBuilder(Ljava/lang/String;)Landroid/view/ViewStructure$HtmlInfo$Builder;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p2, "display"

    invoke-virtual {p0, p2, p3}, Landroid/view/ViewStructure$HtmlInfo$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Landroid/view/ViewStructure$HtmlInfo$Builder;

    array-length p2, p4

    const/4 p3, 0x0

    move v0, p3

    :goto_0
    if-ge v0, p2, :cond_1

    aget-object v1, p4, v0

    aget-object v2, v1, p3

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {p0, v2, v1}, Landroid/view/ViewStructure$HtmlInfo$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Landroid/view/ViewStructure$HtmlInfo$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewStructure$HtmlInfo$Builder;->build()Landroid/view/ViewStructure$HtmlInfo;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/ViewStructure;->setHtmlInfo(Landroid/view/ViewStructure$HtmlInfo;)V

    return-void
.end method

.method public populateTextProperties(Landroid/view/ViewStructure;Ljava/lang/String;ZIIIIFZZZZ)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

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
