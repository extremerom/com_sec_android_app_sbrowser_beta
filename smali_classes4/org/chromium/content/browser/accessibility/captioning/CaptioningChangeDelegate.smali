.class public Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field public static final DEFAULT_CAPTIONING_PREF_VALUE:Ljava/lang/String; = ""
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/ref/WeakReference<",
            "Lorg/chromium/content/browser/accessibility/captioning/SystemCaptioningBridge$SystemCaptioningBridgeListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTextTrackBackgroundColor:Ljava/lang/String;

.field private mTextTrackFontFamily:Ljava/lang/String;

.field private mTextTrackFontStyle:Ljava/lang/String;

.field private mTextTrackFontVariant:Ljava/lang/String;

.field private mTextTrackTextColor:Ljava/lang/String;

.field private mTextTrackTextShadow:Ljava/lang/String;

.field private mTextTrackTextSize:Ljava/lang/String;

.field private mTextTracksEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->mListeners:Ljava/util/HashSet;

    return-void
.end method

.method public static synthetic a(Lorg/chromium/content/browser/accessibility/captioning/SystemCaptioningBridge$SystemCaptioningBridgeListener;Ljava/lang/ref/WeakReference;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->lambda$removeListener$0(Lorg/chromium/content/browser/accessibility/captioning/SystemCaptioningBridge$SystemCaptioningBridgeListener;Ljava/lang/ref/WeakReference;)Z

    move-result p0

    return p0
.end method

.method public static androidColorToCssColor(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/text/DecimalFormat;

    new-instance v1, Ljava/text/DecimalFormatSymbols;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    const-string v2, "#.##"

    invoke-direct {v0, v2, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x406fe00000000000L    # 255.0

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    const-string v3, "rgba("

    const-string v4, ", "

    invoke-static {v1, v2, v3, v4, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->l(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static androidFontScaleToPercentage(F)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/text/DecimalFormat;

    new-instance v1, Ljava/text/DecimalFormatSymbols;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    const-string v2, "#%"

    invoke-direct {v0, v2, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    float-to-double v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFontFromSystemFont(Landroid/graphics/Typeface;)Ljava/lang/String;
    .locals 11

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v9, "sans-serif-smallcaps"

    const-string v10, "monospace"

    const-string v1, ""

    const-string v2, "sans-serif"

    const-string v3, "sans-serif-condensed"

    const-string v4, "sans-serif-monospace"

    const-string v5, "serif"

    const-string v6, "serif-monospace"

    const-string v7, "casual"

    const-string v8, "cursive"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xa

    if-ge v2, v3, :cond_2

    aget-object v3, v1, v2

    invoke-virtual {p0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v4

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static getShadowFromColorAndSystemEdge(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "%2$s %2$s 0 %1$s"

    goto :goto_1

    :cond_1
    const-string p1, "-%2$s -%2$s 0 %1$s"

    goto :goto_1

    :cond_2
    const-string p1, "%1$s %2$s %2$s 0.1em"

    goto :goto_1

    :cond_3
    const-string p1, "%2$s %2$s 0 %1$s, -%2$s -%2$s 0 %1$s, %2$s -%2$s 0 %1$s, -%2$s %2$s 0 %1$s"

    goto :goto_1

    :cond_4
    :goto_0
    const-string p1, ""

    :goto_1
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const-string p0, "silver"

    :cond_6
    const-string v0, "0.05em"

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$removeListener$0(Lorg/chromium/content/browser/accessibility/captioning/SystemCaptioningBridge$SystemCaptioningBridgeListener;Ljava/lang/ref/WeakReference;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/content/browser/accessibility/captioning/SystemCaptioningBridge$SystemCaptioningBridgeListener;

    if-eqz p1, :cond_1

    if-ne p1, p0, :cond_0

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

.method private notifySettingsChanged()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/content/browser/accessibility/captioning/SystemCaptioningBridge$SystemCaptioningBridgeListener;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->notifyListener(Lorg/chromium/content/browser/accessibility/captioning/SystemCaptioningBridge$SystemCaptioningBridgeListener;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addListener(Lorg/chromium/content/browser/accessibility/captioning/SystemCaptioningBridge$SystemCaptioningBridgeListener;)V
    .locals 1

    iget-object p0, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->mListeners:Ljava/util/HashSet;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public hasActiveListener()Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->mListeners:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public notifyListener(Lorg/chromium/content/browser/accessibility/captioning/SystemCaptioningBridge$SystemCaptioningBridgeListener;)V
    .locals 10

    iget-boolean v1, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->mTextTracksEnabled:Z

    if-eqz v1, :cond_0

    new-instance v9, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;

    iget-object v2, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->mTextTrackBackgroundColor:Ljava/lang/String;

    iget-object v3, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->mTextTrackFontFamily:Ljava/lang/String;

    iget-object v4, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->mTextTrackFontStyle:Ljava/lang/String;

    iget-object v5, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->mTextTrackFontVariant:Ljava/lang/String;

    iget-object v6, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->mTextTrackTextColor:Ljava/lang/String;

    iget-object v7, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->mTextTrackTextShadow:Ljava/lang/String;

    iget-object v8, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->mTextTrackTextSize:Ljava/lang/String;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v9}, Lorg/chromium/content/browser/accessibility/captioning/SystemCaptioningBridge$SystemCaptioningBridgeListener;->onSystemCaptioningChanged(Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;

    invoke-direct {p0}, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;-><init>()V

    invoke-interface {p1, p0}, Lorg/chromium/content/browser/accessibility/captioning/SystemCaptioningBridge$SystemCaptioningBridgeListener;->onSystemCaptioningChanged(Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;)V

    :goto_0
    return-void
.end method

.method public onEnabledChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->mTextTracksEnabled:Z

    invoke-direct {p0}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->notifySettingsChanged()V

    return-void
.end method

.method public onFontScaleChanged(F)V
    .locals 0

    invoke-static {p1}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->androidFontScaleToPercentage(F)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->mTextTrackTextSize:Ljava/lang/String;

    invoke-direct {p0}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->notifySettingsChanged()V

    return-void
.end method

.method public onLocaleChanged(Ljava/util/Locale;)V
    .locals 0

    return-void
.end method

.method public onUserStyleChanged(Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;)V
    .locals 2

    invoke-virtual {p1}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;->getForegroundColor()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->androidColorToCssColor(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->mTextTrackTextColor:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;->getBackgroundColor()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->androidColorToCssColor(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->mTextTrackBackgroundColor:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;->getEdgeColor()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->androidColorToCssColor(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;->getEdgeType()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->getShadowFromColorAndSystemEdge(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->mTextTrackTextShadow:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->getFontFromSystemFont(Landroid/graphics/Typeface;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->mTextTrackFontFamily:Ljava/lang/String;

    const-string v0, ""

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Typeface;->isItalic()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "italic"

    iput-object p1, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->mTextTrackFontStyle:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->mTextTrackFontStyle:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->mTextTrackFontVariant:Ljava/lang/String;

    invoke-direct {p0}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->notifySettingsChanged()V

    return-void
.end method

.method public removeListener(Lorg/chromium/content/browser/accessibility/captioning/SystemCaptioningBridge$SystemCaptioningBridgeListener;)V
    .locals 2

    iget-object p0, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->mListeners:Ljava/util/HashSet;

    new-instance v0, Lba/b;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p1}, Lba/b;-><init>(ILjava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method
