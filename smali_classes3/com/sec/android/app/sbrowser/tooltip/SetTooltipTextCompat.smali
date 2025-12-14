.class Lcom/sec/android/app/sbrowser/tooltip/SetTooltipTextCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/tooltip/SetTooltipTextCompat;->setBackground(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    return-void
.end method

.method public static bridge synthetic b(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/tooltip/SetTooltipTextCompat;->setTextColor(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatTextView;)V

    return-void
.end method

.method private static setBackground(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f080769

    goto :goto_0

    :cond_0
    const p0, 0x7f08076a

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method private static setTextColor(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0602ef

    goto :goto_0

    :cond_0
    const v0, 0x7f0602ee

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
