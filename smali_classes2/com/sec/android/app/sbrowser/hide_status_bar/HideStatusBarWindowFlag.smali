.class Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowFlag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private hasFlag(II)Z
    .locals 0

    and-int p0, p1, p2

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public onToolbarOffsetChanged(Landroid/app/Activity;F)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07060c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowFlag;->updateStatusbarVisiblity(Landroid/app/Activity;Z)V

    return-void
.end method

.method public pauseHideStatusBar(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public runHideStatusBar(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;)V
    .locals 0

    return-void
.end method

.method public stopHideStatusBar(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public updateStatusbarVisiblity(Landroid/app/Activity;Z)V
    .locals 6

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/4 v3, 0x4

    const/16 v4, 0x400

    const-string v5, "HideStatusBarWindowFlag"

    if-eqz p2, :cond_2

    invoke-direct {p0, v1, v3}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowFlag;->hasFlag(II)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "clear system ui fullscreen flag"

    invoke-static {v5, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 p2, v1, -0x5

    invoke-virtual {v0, p2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    iget p2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, p2, v4}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowFlag;->hasFlag(II)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "clear window fullscreen flag"

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v4}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1, v3}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowFlag;->hasFlag(II)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "add system ui fullscreen flag"

    invoke-static {v5, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 p2, v1, 0x4

    invoke-virtual {v0, p2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_3
    iget p2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, p2, v4}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarWindowFlag;->hasFlag(II)Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "add window fullscreen flag"

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v4}, Landroid/view/Window;->addFlags(I)V

    :cond_4
    :goto_0
    return-void
.end method
