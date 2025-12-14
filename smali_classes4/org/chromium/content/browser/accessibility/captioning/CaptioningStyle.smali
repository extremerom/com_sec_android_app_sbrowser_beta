.class public Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private mBackgroundColor:Ljava/lang/Integer;

.field private mEdgeColor:Ljava/lang/Integer;

.field private mEdgeType:Ljava/lang/Integer;

.field private mForegroundColor:Ljava/lang/Integer;

.field private mTypeface:Landroid/graphics/Typeface;

.field private mWindowColor:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/graphics/Typeface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;->mBackgroundColor:Ljava/lang/Integer;

    iput-object p2, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;->mEdgeColor:Ljava/lang/Integer;

    iput-object p3, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;->mEdgeType:Ljava/lang/Integer;

    iput-object p4, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;->mForegroundColor:Ljava/lang/Integer;

    iput-object p5, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;->mWindowColor:Ljava/lang/Integer;

    iput-object p6, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;->mTypeface:Landroid/graphics/Typeface;

    return-void
.end method

.method public static createFrom(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;
    .locals 9

    if-nez p0, :cond_0

    new-instance p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/graphics/Typeface;)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasBackgroundColor()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    :cond_1
    move-object v3, v1

    :goto_0
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeColor()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v4, v0

    goto :goto_1

    :cond_2
    move-object v4, v1

    :goto_1
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeType()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v5, v0

    goto :goto_2

    :cond_3
    move-object v5, v1

    :goto_2
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasForegroundColor()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v6, v0

    goto :goto_3

    :cond_4
    move-object v6, v1

    :goto_3
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasWindowColor()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_5
    move-object v7, v1

    new-instance v0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;

    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v8

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/graphics/Typeface;)V

    return-object v0
.end method


# virtual methods
.method public getBackgroundColor()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;->mBackgroundColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public getEdgeColor()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;->mEdgeColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public getEdgeType()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;->mEdgeType:Ljava/lang/Integer;

    return-object p0
.end method

.method public getForegroundColor()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;->mForegroundColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;->mTypeface:Landroid/graphics/Typeface;

    return-object p0
.end method
