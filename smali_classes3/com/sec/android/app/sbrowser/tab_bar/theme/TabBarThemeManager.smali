.class public Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDrawableHelper:Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeDrawableHelper;

.field private mTabBarTheme:Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->mTabBarTheme:Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeDrawableHelper;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeDrawableHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->mDrawableHelper:Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeDrawableHelper;

    return-void
.end method

.method private createBrowserTheme(I)Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->isValidThemeColor(I)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;-><init>(I)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getControlButtonDrawable(Z)Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->mTabBarTheme:Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getTabButtonRippleColor(Z)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->mTabBarTheme:Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getTabBarControlButtonBackgroundColor()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->mTabBarTheme:Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getTabBarControlButtonStrokeColor(Z)I

    move-result p1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->mDrawableHelper:Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeDrawableHelper;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->mTabBarTheme:Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->isShadowEnabled()Z

    move-result p0

    invoke-virtual {v2, p0, v0, v1, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeDrawableHelper;->createControlButtonRippleDrawable(ZIII)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getDividerColor()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->mTabBarTheme:Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getTabButtonDividerColor()I

    move-result p0

    return p0
.end method

.method public getProgressDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->mTabBarTheme:Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getProgressColor()I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->mDrawableHelper:Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeDrawableHelper;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeDrawableHelper;->createProgressDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getTabBarDimLayerColor()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->mTabBarTheme:Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getTabBarBackgroundColor()I

    move-result p0

    return p0
.end method

.method public getTabBarTheme()Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->mTabBarTheme:Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;

    return-object p0
.end method

.method public getTabButtonBackgroundDrawable(Z)Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->mTabBarTheme:Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getTabButtonRippleColor(Z)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->mTabBarTheme:Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getTabButtonBackgroundColor(Z)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->mTabBarTheme:Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getTabButtonBackgroundStrokeColor(Z)I

    move-result v2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->mDrawableHelper:Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeDrawableHelper;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeDrawableHelper;->createTabButtonBackgroundDrawable(ZIII)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getTabButtonCloseButtonColor(ZZ)I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->mTabBarTheme:Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getTabButtonCloseButtonColor(ZZ)I

    move-result p0

    return p0
.end method

.method public getTabButtonClosedButtonBackground(ZZ)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->mTabBarTheme:Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getTabButtonCloseButtonRippleColor(ZZ)I

    move-result p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->mDrawableHelper:Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeDrawableHelper;

    const p2, 0x7f080721

    invoke-virtual {p0, p2, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeDrawableHelper;->createRippleDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getTabButtonForegroundDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->mTabBarTheme:Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getTabButtonForegroundColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->mTabBarTheme:Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getTabButtonForegroundAlpha()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->mTabBarTheme:Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getTabButtonForegroundStrokeColor(I)I

    move-result p1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->mTabBarTheme:Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getTabButtonForegroundStrokeAlpha()I

    move-result v2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->mDrawableHelper:Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeDrawableHelper;

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeDrawableHelper;->createForegroundThemeDrawable(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getTabButtonHoverDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->mTabBarTheme:Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getTabButtonHoverBackgroundColor()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->mTabBarTheme:Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getTabButtonHoverBackgroundStrokeColor()I

    move-result v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->mDrawableHelper:Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeDrawableHelper;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeDrawableHelper;->createTabButtonHoverDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getTabButtonInGroupBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->mTabBarTheme:Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getTabButtonRippleColor(Z)I

    move-result v0

    const v1, 0x7f08071f

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->mDrawableHelper:Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeDrawableHelper;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeDrawableHelper;->createRippleDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getTabButtonTitleTextColor(ZZ)I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->mTabBarTheme:Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getTabButtonTitleTextColor(ZZ)I

    move-result p0

    return p0
.end method

.method public getTabGroupBackgroundDrawable(ZI)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->mTabBarTheme:Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getTabGroupBackgroundColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->mTabBarTheme:Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getTabGroupStrokeColor(ZI)I

    move-result p2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->mDrawableHelper:Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeDrawableHelper;

    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeDrawableHelper;->createTabGroupBackgroundDrawable(ZII)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getTabGroupCollapseButtonBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->mTabBarTheme:Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getTabGroupCollapseButtonRippleColor()I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->mDrawableHelper:Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeDrawableHelper;

    const v1, 0x7f080721

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeDrawableHelper;->createRippleDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getTabGroupCollapseIconColor()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->mTabBarTheme:Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getTabGroupCollapseIconColor()I

    move-result p0

    return p0
.end method

.method public getTabGroupColor(I)I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->mTabBarTheme:Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getTabGroupColor(I)I

    move-result p0

    return p0
.end method

.method public getTabGroupHeaderRipple()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->mTabBarTheme:Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getTabGroupHeaderRippleColor()I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->mDrawableHelper:Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeDrawableHelper;

    const v1, 0x7f080727

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeDrawableHelper;->createRippleDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getTabGroupScrollHeaderBackground(I)Landroid/graphics/drawable/Drawable;
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->mTabBarTheme:Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getTabGroupHeaderRippleColor()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->mTabBarTheme:Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getTabBarBackgroundColor()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->mTabBarTheme:Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getTabGroupBackgroundColor(I)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->mTabBarTheme:Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getTabGroupStrokeColor(ZI)I

    move-result p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->mDrawableHelper:Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeDrawableHelper;

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeDrawableHelper;->createScrollHeaderBackgroundDrawable(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public updateTabBarTheme(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->createBrowserTheme(I)Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->create(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;)Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->mTabBarTheme:Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[updateTabBarTheme] "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->mTabBarTheme:Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", color palette : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->mTabBarTheme:Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->isColorPaletteEnabled()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", web theme : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->mTabBarTheme:Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->isThemeEnabled()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TabBarThemeManager"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
