.class public Lorg/chromium/ui/text/DownloadableFontTextAppearanceSpan;
.super Landroid/text/style/TextAppearanceSpan;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private final mTypeface:Landroid/graphics/Typeface;


# virtual methods
.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/text/style/TextAppearanceSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    iget-object v0, p0, Lorg/chromium/ui/text/DownloadableFontTextAppearanceSpan;->mTypeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v0

    iget-object p0, p0, Lorg/chromium/ui/text/DownloadableFontTextAppearanceSpan;->mTypeface:Landroid/graphics/Typeface;

    invoke-static {p0, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method
