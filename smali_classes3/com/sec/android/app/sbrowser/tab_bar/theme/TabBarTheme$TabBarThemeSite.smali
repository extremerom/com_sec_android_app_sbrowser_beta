.class Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeSite;
.super Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabBarThemeSite"
.end annotation


# instance fields
.field private final mBrowserTheme:Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;

.field private final mIsLightTheme:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeSite;->mBrowserTheme:Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->isLightTheme()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeSite;->mIsLightTheme:Z

    const-string v0, "]"

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Site Light Theme ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->getThemeColor()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Site Dark Theme ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->getThemeColor()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->mName:Ljava/lang/String;

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->mIsShadowEnabled:Z

    return-void
.end method


# virtual methods
.method public getIconColor()I
    .locals 1

    const v0, 0x7f060c82

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getProgressColor()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeSite;->mBrowserTheme:Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->getMoreTextColor()I

    move-result p0

    return p0
.end method

.method public getTabBarBackgroundColor()I
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeSite;->getThemeColor()I

    move-result p0

    return p0
.end method

.method public getTabBarControlButtonBackgroundColor()I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeSite;->getThemeColor()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeSite;->getTabButtonForegroundAlpha()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColorWithAlpha(II)I

    move-result v0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getBlendedColor(II)I

    move-result p0

    return p0
.end method

.method public getTabBarControlButtonStrokeColor(Z)I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeSite;->getThemeColor()I

    move-result p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeSite;->getTabButtonForegroundAlpha()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColorWithAlpha(II)I

    move-result p1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getBlendedColor(II)I

    move-result p0

    return p0
.end method

.method public getTabButtonBackgroundColor(Z)I
    .locals 1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeSite;->mIsLightTheme:Z

    if-eqz p1, :cond_0

    const p1, 0x7f060c9c

    goto :goto_0

    :cond_0
    const p1, 0x7f060c98

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeSite;->getThemeColor()I

    move-result p1

    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeSite;->getTabBarBackgroundColor()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getBlendedColor(II)I

    move-result p0

    return p0
.end method

.method public getTabButtonBackgroundStrokeColor(Z)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeSite;->getTabButtonBackgroundColor(Z)I

    move-result p0

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
    if-eqz p1, :cond_1

    const p1, 0x7f060c75

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0

    :cond_1
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeSite;->mIsLightTheme:Z

    if-eqz p1, :cond_2

    const p1, 0x7f060c79

    goto :goto_0

    :cond_2
    const p1, 0x7f060c76

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getTabButtonCloseButtonRippleColor(ZZ)I
    .locals 1

    const v0, 0x7f060c58

    if-nez p2, :cond_2

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeSite;->mIsLightTheme:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const v0, 0x7f060c56

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0

    :cond_2
    :goto_1
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getTabButtonDividerColor()I
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeSite;->mIsLightTheme:Z

    if-eqz v0, :cond_0

    const v0, 0x7f060cb4

    goto :goto_0

    :cond_0
    const v0, 0x7f060cb2

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getTabButtonForegroundAlpha()I
    .locals 0

    const/16 p0, 0x4c

    return p0
.end method

.method public getTabButtonForegroundColor(I)I
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeSite;->getThemeColor()I

    move-result p0

    return p0
.end method

.method public getTabButtonHoverBackgroundColor()I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeSite;->getThemeColor()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeSite;->getTabBarBackgroundColor()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getBlendedColor(II)I

    move-result p0

    return p0
.end method

.method public getTabButtonRippleColor(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const p1, 0x7f060c58

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0

    :cond_0
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeSite;->mIsLightTheme:Z

    if-eqz p1, :cond_1

    const p1, 0x7f060c55

    goto :goto_0

    :cond_1
    const p1, 0x7f060c53

    :goto_0
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
    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeSite;->mIsLightTheme:Z

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    const p1, 0x7f060c67

    goto :goto_0

    :cond_1
    const p1, 0x7f060c66

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    const p1, 0x7f060c61

    goto :goto_0

    :cond_3
    const p1, 0x7f060c60

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

    move-result p1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeSite;->mIsLightTheme:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xff

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColorWithAlpha(II)I

    move-result p0

    goto :goto_0

    :cond_0
    const/16 v0, 0xd8

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColorWithAlpha(II)I

    move-result p0

    :goto_0
    return p0
.end method

.method public getTabGroupCollapseIconColor()I
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeSite;->mIsLightTheme:Z

    if-eqz v0, :cond_0

    const v0, 0x7f060cad

    goto :goto_0

    :cond_0
    const v0, 0x7f060cab

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getTabGroupHeaderRippleColor()I
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeSite;->mIsLightTheme:Z

    if-eqz v0, :cond_0

    const v0, 0x7f060c55

    goto :goto_0

    :cond_0
    const v0, 0x7f060c53

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getTabGroupStrokeColor(ZI)I
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getTabGroupColor(I)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeSite;->getThemeColor()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getThemeColor()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeSite;->mBrowserTheme:Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->getThemeColor()I

    move-result p0

    return p0
.end method

.method public isThemeEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
