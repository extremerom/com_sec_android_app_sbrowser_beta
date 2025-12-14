.class Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeSecret;
.super Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabBarThemeSecret"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;-><init>(Landroid/content/Context;)V

    const-string p1, "Secret Theme"

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->mName:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->mIsShadowEnabled:Z

    return-void
.end method


# virtual methods
.method public getIconColor()I
    .locals 1

    const v0, 0x7f060c97

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getProgressColor()I
    .locals 1

    const v0, 0x7f060c4e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getTabBarBackgroundColor()I
    .locals 1

    const v0, 0x7f060d55

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getTabBarControlButtonBackgroundColor()I
    .locals 1

    const v0, 0x7f060c89

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getTabBarControlButtonStrokeColor(Z)I
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeSecret;->getTabBarControlButtonBackgroundColor()I

    move-result p0

    return p0
.end method

.method public getTabButtonBackgroundColor(Z)I
    .locals 1

    if-eqz p1, :cond_0

    const p1, 0x7f060ca8

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const p1, 0x7f060c5c

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p1

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeSecret;->getTabBarBackgroundColor()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getBlendedColor(II)I

    move-result p0

    return p0
.end method

.method public getTabButtonBackgroundStrokeColor(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const p1, 0x7f060ca9

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const p1, 0x7f060c5d

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public getTabButtonCloseButtonColor(ZZ)I
    .locals 0

    if-eqz p2, :cond_0

    const p1, 0x7f060c81

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0

    :cond_0
    const p1, 0x7f060c80

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getTabButtonCloseButtonRippleColor(ZZ)I
    .locals 0

    const p1, 0x7f060c5b

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

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

.method public getTabButtonForegroundStrokeColor(I)I
    .locals 0

    const p1, 0x7f060263

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getTabButtonHoverBackgroundColor()I
    .locals 2

    const v0, 0x7f060c5c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme$TabBarThemeSecret;->getTabBarBackgroundColor()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getBlendedColor(II)I

    move-result p0

    return p0
.end method

.method public getTabButtonRippleColor(Z)I
    .locals 0

    const p1, 0x7f060c5b

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getTabButtonTitleTextColor(ZZ)I
    .locals 0

    if-eqz p2, :cond_0

    const p1, 0x7f060c73

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0

    :cond_0
    if-eqz p1, :cond_1

    const p1, 0x7f060c72

    goto :goto_0

    :cond_1
    const p1, 0x7f060c71

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->getColor(I)I

    move-result p0

    return p0
.end method
