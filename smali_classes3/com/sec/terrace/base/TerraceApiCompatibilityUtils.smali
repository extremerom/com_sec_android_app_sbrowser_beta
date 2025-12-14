.class public Lcom/sec/terrace/base/TerraceApiCompatibilityUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p0

    return-object p0
.end method

.method public static getAllowUnsafeImplicitIntentFlag()I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/high16 v0, 0x1000000

    return v0
.end method

.method public static getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-static {p0, p1}, Lorg/chromium/base/ApiCompatibilityUtils;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getLocale(Landroid/content/res/Configuration;)Ljava/util/Locale;
    .locals 1

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method public static getPendingIntentFlagMutable()I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/high16 v0, 0x2000000

    return v0
.end method

.method public static setActivityOptionsBackgroundActivityStartAllowAlways(Landroid/app/ActivityOptions;)V
    .locals 0
    .param p0    # Landroid/app/ActivityOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0}, Lorg/chromium/base/ApiCompatibilityUtils;->setActivityOptionsBackgroundActivityStartAllowAlways(Landroid/app/ActivityOptions;)V

    return-void
.end method

.method public static setStatusBarColor(Landroid/view/Window;I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/chromium/ui/UiUtils;->setStatusBarColor(Landroid/view/Window;I)V

    return-void
.end method

.method public static setTint(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-void
.end method
