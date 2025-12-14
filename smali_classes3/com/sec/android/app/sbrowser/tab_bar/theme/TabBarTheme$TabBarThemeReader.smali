.class Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeReader;
.super Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabBarThemeReader"
.end annotation


# instance fields
.field private final mIsBlackTheme:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    const/4 v0, 0x1

    if-ne p2, p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeReader;->mIsBlackTheme:Z

    if-eqz p1, :cond_1

    const-string p2, "Reader Black Theme"

    goto :goto_1

    :cond_1
    const-string p2, "Reader Sepia Theme"

    :goto_1
    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->mName:Ljava/lang/String;

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->mIsShadowEnabled:Z

    return-void
.end method


# virtual methods
.method public getIconColor()I
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeReader;->mIsBlackTheme:Z

    if-eqz v0, :cond_0

    const v0, 0x7f060c95

    goto :goto_0

    :cond_0
    const v0, 0x7f060c96

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getProgressColor()I
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeReader;->mIsBlackTheme:Z

    if-eqz v0, :cond_0

    const v0, 0x7f060c4c

    goto :goto_0

    :cond_0
    const v0, 0x7f060c4d

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getTabBarBackgroundColor()I
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeReader;->mIsBlackTheme:Z

    if-eqz v0, :cond_0

    const v0, 0x7f060d53

    goto :goto_0

    :cond_0
    const v0, 0x7f060d54

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getTabBarControlButtonBackgroundColor()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getTabBarControlButtonStrokeColor(Z)I
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeReader;->getTabBarControlButtonBackgroundColor()I

    move-result p0

    return p0
.end method

.method public getTabButtonBackgroundColor(Z)I
    .locals 0

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeReader;->mIsBlackTheme:Z

    if-eqz p1, :cond_0

    const p1, 0x7f060ca4

    goto :goto_0

    :cond_0
    const p1, 0x7f060ca6

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeReader;->getTabBarBackgroundColor()I

    move-result p0

    return p0
.end method

.method public getTabButtonBackgroundStrokeColor(Z)I
    .locals 0

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeReader;->mIsBlackTheme:Z

    if-eqz p1, :cond_0

    const p1, 0x7f060ca5

    goto :goto_0

    :cond_0
    const p1, 0x7f060ca7

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    goto :goto_2

    :cond_1
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeReader;->mIsBlackTheme:Z

    if-eqz p1, :cond_2

    const p1, 0x7f060c50

    goto :goto_1

    :cond_2
    const p1, 0x7f060c52

    :goto_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    :goto_2
    return p0
.end method

.method public getTabButtonCloseButtonColor(ZZ)I
    .locals 0

    if-eqz p2, :cond_1

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeReader;->mIsBlackTheme:Z

    if-eqz p1, :cond_0

    const p1, 0x7f060c7d

    goto :goto_0

    :cond_0
    const p1, 0x7f060c7f

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0

    :cond_1
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeReader;->mIsBlackTheme:Z

    if-eqz p1, :cond_2

    const p1, 0x7f060c7c

    goto :goto_1

    :cond_2
    const p1, 0x7f060c7e

    :goto_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getTabButtonCloseButtonRippleColor(ZZ)I
    .locals 0

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeReader;->mIsBlackTheme:Z

    if-eqz p1, :cond_0

    const p1, 0x7f060c59

    goto :goto_0

    :cond_0
    const p1, 0x7f060c5a

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getTabButtonDividerColor()I
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeReader;->mIsBlackTheme:Z

    if-eqz v0, :cond_0

    const v0, 0x7f060cb7

    goto :goto_0

    :cond_0
    const v0, 0x7f060cb8

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

    const p1, 0x7f060296

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

    const p1, 0x7f060296

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getTabButtonHoverBackgroundColor()I
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeReader;->mIsBlackTheme:Z

    if-eqz v0, :cond_0

    const v0, 0x7f060c4f

    goto :goto_0

    :cond_0
    const v0, 0x7f060c51

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeReader;->getTabBarBackgroundColor()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getBlendedColor(II)I

    move-result p0

    return p0
.end method

.method public getTabButtonRippleColor(Z)I
    .locals 0

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeReader;->mIsBlackTheme:Z

    if-eqz p1, :cond_0

    const p1, 0x7f060c59

    goto :goto_0

    :cond_0
    const p1, 0x7f060c5a

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getTabButtonTitleTextColor(ZZ)I
    .locals 0

    if-eqz p2, :cond_1

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeReader;->mIsBlackTheme:Z

    if-eqz p1, :cond_0

    const p1, 0x7f060c6d

    goto :goto_0

    :cond_0
    const p1, 0x7f060c70

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0

    :cond_1
    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeReader;->mIsBlackTheme:Z

    if-eqz p2, :cond_3

    if-eqz p1, :cond_2

    const p1, 0x7f060c6c

    goto :goto_1

    :cond_2
    const p1, 0x7f060c6b

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    const p1, 0x7f060c6f

    goto :goto_1

    :cond_4
    const p1, 0x7f060c6e

    :goto_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getTabGroupBackgroundColor(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeReader;->getTabGroupColor(I)I

    move-result p1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeReader;->mIsBlackTheme:Z

    if-eqz v0, :cond_0

    const v0, 0x7f060cb9

    goto :goto_0

    :cond_0
    const v0, 0x7f060cba

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getBlendedColor(II)I

    move-result p0

    return p0
.end method

.method public getTabGroupCollapseButtonRippleColor()I
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeReader;->mIsBlackTheme:Z

    if-eqz v0, :cond_0

    const v0, 0x7f060c59

    goto :goto_0

    :cond_0
    const v0, 0x7f060c5a

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getTabGroupCollapseIconColor()I
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeReader;->mIsBlackTheme:Z

    if-eqz v0, :cond_0

    const v0, 0x7f060caf

    goto :goto_0

    :cond_0
    const v0, 0x7f060cb0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getTabGroupColor(I)I
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeReader;->mIsBlackTheme:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColor;->getDarkThemeColor(I)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColor;->getLightThemeColor(I)I

    move-result p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getTabGroupHeaderRippleColor()I
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeReader;->mIsBlackTheme:Z

    if-eqz v0, :cond_0

    const v0, 0x7f060c59

    goto :goto_0

    :cond_0
    const v0, 0x7f060c5a

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0
.end method
