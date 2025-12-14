.class Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeNight;
.super Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabBarThemeNight"
.end annotation


# instance fields
.field private final mIsContentDarkMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;-><init>(Landroid/content/Context;)V

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeNight;->mIsContentDarkMode:Z

    if-eqz p2, :cond_0

    const-string p1, "(DARK)"

    goto :goto_0

    :cond_0
    const-string p1, "(LIGHT)"

    :goto_0
    const-string p2, "Night Theme "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->mName:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->mIsShadowEnabled:Z

    return-void
.end method


# virtual methods
.method public getIconColor()I
    .locals 1

    const v0, 0x7f060c94

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getProgressColor()I
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeNight;->mIsContentDarkMode:Z

    if-eqz v0, :cond_0

    const v0, 0x7f060c4b

    goto :goto_0

    :cond_0
    const v0, 0x7f060c49

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getTabBarBackgroundColor()I
    .locals 1

    const v0, 0x7f060d52

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getTabBarControlButtonBackgroundColor()I
    .locals 1

    const v0, 0x7f060c87

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getTabBarControlButtonStrokeColor(Z)I
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeNight;->getTabBarControlButtonBackgroundColor()I

    move-result p0

    return p0
.end method

.method public getTabButtonBackgroundColor(Z)I
    .locals 0

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeNight;->mIsContentDarkMode:Z

    if-eqz p1, :cond_0

    const p1, 0x7f060c9e

    goto :goto_0

    :cond_0
    const p1, 0x7f060c9f

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeNight;->getTabBarBackgroundColor()I

    move-result p0

    :goto_1
    return p0
.end method

.method public getTabButtonBackgroundStrokeColor(Z)I
    .locals 0

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeNight;->mIsContentDarkMode:Z

    if-eqz p1, :cond_0

    const p1, 0x7f060ca1

    goto :goto_0

    :cond_0
    const p1, 0x7f060ca0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeNight;->getTabBarBackgroundColor()I

    move-result p0

    :goto_1
    return p0
.end method

.method public getTabButtonCloseButtonColor(ZZ)I
    .locals 0

    if-eqz p2, :cond_0

    const p1, 0x7f060c7b

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0

    :cond_0
    const p1, 0x7f060c7a

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getTabButtonCloseButtonRippleColor(ZZ)I
    .locals 0

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeNight;->mIsContentDarkMode:Z

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    const p1, 0x7f060c57

    goto :goto_0

    :cond_0
    const p1, 0x7f060c56

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getTabButtonDividerColor()I
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeNight;->mIsContentDarkMode:Z

    if-eqz v0, :cond_0

    const v0, 0x7f060cb5

    goto :goto_0

    :cond_0
    const v0, 0x7f060cb6

    :goto_0
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

    const p1, 0x7f060262

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getTabButtonForegroundStrokeAlpha()I
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeNight;->mIsContentDarkMode:Z

    if-eqz p0, :cond_0

    const/16 p0, 0xcc

    goto :goto_0

    :cond_0
    const/16 p0, 0xff

    :goto_0
    return p0
.end method

.method public getTabButtonForegroundStrokeColor(I)I
    .locals 0

    const p1, 0x7f060263

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getTabButtonHoverBackgroundColor()I
    .locals 2

    const v0, 0x7f060c45

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeNight;->getTabBarBackgroundColor()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getBlendedColor(II)I

    move-result p0

    return p0
.end method

.method public getTabButtonRippleColor(Z)I
    .locals 0

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeNight;->mIsContentDarkMode:Z

    if-eqz p1, :cond_0

    const p1, 0x7f060c56

    goto :goto_0

    :cond_0
    const p1, 0x7f060c57

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getTabButtonTitleTextColor(ZZ)I
    .locals 0

    if-eqz p2, :cond_0

    const p1, 0x7f060c6a

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0

    :cond_0
    if-eqz p1, :cond_1

    const p1, 0x7f060c69

    goto :goto_0

    :cond_1
    const p1, 0x7f060c68

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getTabGroupBackgroundColor(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeNight;->getTabGroupColor(I)I

    move-result p1

    const v0, 0x7f060cb9

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getBlendedColor(II)I

    move-result p0

    return p0
.end method

.method public getTabGroupCollapseButtonRippleColor()I
    .locals 1

    const v0, 0x7f060c56

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getTabGroupCollapseIconColor()I
    .locals 1

    const v0, 0x7f060cae

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getTabGroupColor(I)I
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColor;->getDarkThemeColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getTabGroupHeaderRippleColor()I
    .locals 1

    const v0, 0x7f060c56

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0
.end method
