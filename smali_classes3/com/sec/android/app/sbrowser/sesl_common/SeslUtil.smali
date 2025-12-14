.class public Lcom/sec/android/app/sbrowser/sesl_common/SeslUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getRoundedCornerColor(Landroid/content/Context;Z)I
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v0

    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    const p1, 0x7f0609cb

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0

    :cond_0
    if-eqz v0, :cond_1

    const p1, 0x7f060e1e

    goto :goto_0

    :cond_1
    const p1, 0x7f060e1f

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method public static setBackgroundForItems(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sesl_common/SeslBaseViewHolder;ZZ)V
    .locals 6
    .param p1    # Lcom/sec/android/app/sbrowser/sesl_common/SeslBaseViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    const v1, 0x7f060e1b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    const v2, 0x7f060e1a

    invoke-virtual {p0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    const v3, 0xf4259

    invoke-static {v3}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v3, "color"

    const-string v4, "android"

    const-string v5, "tw_screen_background_color_dark"

    invoke-virtual {v1, v5, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 p0, 0x0

    if-eqz p3, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/sesl_common/SeslBaseViewHolder;->setDividerVisible(I)V

    const/16 p0, 0xf

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p1, v2}, Lcom/sec/android/app/sbrowser/sesl_common/SeslBaseViewHolder;->setDividerVisible(I)V

    const/4 p0, 0x3

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/sesl_common/SeslBaseViewHolder;->setDividerVisible(I)V

    const/16 p0, 0xc

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v2}, Lcom/sec/android/app/sbrowser/sesl_common/SeslBaseViewHolder;->setDividerVisible(I)V

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    :goto_0
    return-void
.end method
