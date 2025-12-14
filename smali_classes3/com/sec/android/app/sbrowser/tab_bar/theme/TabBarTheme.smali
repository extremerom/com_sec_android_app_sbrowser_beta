.class public Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeHighContrast;,
        Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeNight;,
        Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeSecret;,
        Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeReader;,
        Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeSite;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIsColorPaletteEnabled:Z

.field protected mIsShadowEnabled:Z

.field protected mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->mIsShadowEnabled:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isColorPaletteEnabled(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->mIsColorPaletteEnabled:Z

    const-string p1, "Normal Theme"

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->mName:Ljava/lang/String;

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;)Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;
    .locals 2

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isBasicLayoutType(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->isHighContrast()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeHighContrast;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeHighContrast;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->isNightMode()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p2, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeNight;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->isContentDarkMode()Z

    move-result p1

    invoke-direct {p2, p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeNight;-><init>(Landroid/content/Context;Z)V

    return-object p2

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->isIncognito()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance p1, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeSecret;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeSecret;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->hasReaderTheme()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance p2, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeReader;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->getReaderTheme()I

    move-result p1

    invoke-direct {p2, p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeReader;-><init>(Landroid/content/Context;I)V

    return-object p2

    :cond_3
    if-eqz p2, :cond_4

    if-eqz v0, :cond_4

    new-instance p1, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeSite;

    invoke-direct {p1, p0, p2}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeSite;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;)V

    return-object p1

    :cond_4
    new-instance p1, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;-><init>(Landroid/content/Context;)V

    return-object p1
.end method


# virtual methods
.method public getBlendedColor(II)I
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    invoke-static {p1, p2}, LX0/a;->c(II)I

    move-result p0

    return p0
.end method

.method public getColor(I)I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getColorWithAlpha(II)I
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    invoke-static {p1, p2}, LX0/a;->e(II)I

    move-result p0

    return p0
.end method

.method public getIconColor()I
    .locals 1

    const v0, 0x7f060c90

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getProgressColor()I
    .locals 1

    const v0, 0x7f060c49

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getTabBarBackgroundColor()I
    .locals 1

    const v0, 0x7f060d50

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getTabBarControlButtonBackgroundColor()I
    .locals 1

    const v0, 0x7f060c88

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getTabBarControlButtonStrokeColor(Z)I
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getTabBarControlButtonBackgroundColor()I

    move-result p0

    return p0
.end method

.method public getTabButtonBackgroundColor(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const p1, 0x7f060ca2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getTabBarBackgroundColor()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getTabButtonBackgroundStrokeColor(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const p1, 0x7f060ca3

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getTabBarBackgroundColor()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getTabButtonCloseButtonColor(ZZ)I
    .locals 0

    if-eqz p2, :cond_0

    const p1, 0x7f060c82

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0

    :cond_0
    const p1, 0x7f060c75

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getTabButtonCloseButtonRippleColor(ZZ)I
    .locals 0

    const p1, 0x7f060c58

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getTabButtonDividerColor()I
    .locals 1

    const v0, 0x7f060cbe

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getTabButtonForegroundAlpha()I
    .locals 0

    const/16 p0, 0xff

    return p0
.end method

.method public getTabButtonForegroundColor(I)I
    .locals 0

    const p1, 0x7f060261

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getTabButtonForegroundStrokeAlpha()I
    .locals 0

    const/16 p0, 0xff

    return p0
.end method

.method public getTabButtonForegroundStrokeColor(I)I
    .locals 0

    const p1, 0x7f060264

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getTabButtonHoverBackgroundColor()I
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getTabBarBackgroundColor()I

    move-result p0

    return p0
.end method

.method public getTabButtonHoverBackgroundStrokeColor()I
    .locals 1

    const v0, 0x7f060c42

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getTabButtonRippleColor(Z)I
    .locals 0

    const p1, 0x7f060c58

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getTabButtonTitleTextColor(ZZ)I
    .locals 0

    if-eqz p2, :cond_0

    const p1, 0x7f060c74

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0

    :cond_0
    if-eqz p1, :cond_1

    const p1, 0x7f060c65

    goto :goto_0

    :cond_1
    const p1, 0x7f060c5f

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getTabGroupBackgroundColor(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getTabGroupColor(I)I

    move-result p1

    const v0, 0x7f060cba

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getBlendedColor(II)I

    move-result p0

    return p0
.end method

.method public getTabGroupCollapseButtonRippleColor()I
    .locals 1

    const v0, 0x7f060c58

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getTabGroupCollapseIconColor()I
    .locals 1

    const v0, 0x7f060caa

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getTabGroupColor(I)I
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColor;->getLightThemeColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getTabGroupHeaderRippleColor()I
    .locals 1

    const v0, 0x7f060c58

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getTabGroupStrokeColor(ZI)I
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getTabGroupColor(I)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->isColorPaletteEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f060cbc

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getTabGroupBackgroundColor(I)I

    move-result p0

    return p0
.end method

.method public isColorPaletteEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->mIsColorPaletteEnabled:Z

    return p0
.end method

.method public isShadowEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->mIsShadowEnabled:Z

    return p0
.end method

.method public isThemeEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
