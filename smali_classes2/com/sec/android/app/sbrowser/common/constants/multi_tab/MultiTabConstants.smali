.class public Lcom/sec/android/app/sbrowser/common/constants/multi_tab/MultiTabConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/constants/multi_tab/MultiTabConstants$ViewState;
    }
.end annotation


# direct methods
.method public static getBackgroundColor(Lcom/sec/android/app/sbrowser/common/constants/multi_tab/MultiTabConstants$ViewState;)I
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/multi_tab/MultiTabConstants$1;->$SwitchMap$com$sec$android$app$sbrowser$common$constants$multi_tab$MultiTabConstants$ViewState:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const v0, 0x7f060091

    packed-switch p0, :pswitch_data_0

    return v0

    :pswitch_0
    const v0, 0x7f060cec

    goto :goto_0

    :pswitch_1
    const v0, 0x7f060092

    goto :goto_0

    :pswitch_2
    const v0, 0x7f060cea

    goto :goto_0

    :pswitch_3
    const v0, 0x7f060090

    goto :goto_0

    :pswitch_4
    const v0, 0x7f060ceb

    :goto_0
    :pswitch_5
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getDefaultGroupStrokeColor()I
    .locals 1

    const v0, -0x333334

    return v0
.end method

.method public static getGroupMemberThumbnail(Landroid/view/View;I)Landroid/view/View;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const p1, 0x7f0b0576

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const p1, 0x7f0b0573

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_1
    const p1, 0x7f0b0577

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_2
    const p1, 0x7f0b0574

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static getGroupMemberThumbnailMore(Landroid/view/View;)Landroid/view/View;
    .locals 1

    const v0, 0x7f0b0575

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static getGroupThemeColor()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public static getListGroupMemberThumbnail(Landroid/view/View;I)Landroid/view/View;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const p1, 0x7f0b056f

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const p1, 0x7f0b056d

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_1
    const p1, 0x7f0b056b

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_2
    const p1, 0x7f0b0569

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static getListGroupMemberThumbnailDim(Landroid/view/View;I)Landroid/view/View;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const p1, 0x7f0b0570

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const p1, 0x7f0b056e

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_1
    const p1, 0x7f0b056c

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_2
    const p1, 0x7f0b056a

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static getSpannableStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)Landroid/text/SpannableString;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, p1

    if-ltz p1, :cond_4

    if-ltz p2, :cond_4

    if-le p1, p2, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p4, :cond_2

    const p3, 0x7f0607c0

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    const p3, 0x7f0607be

    goto :goto_0

    :cond_3
    const p3, 0x7f0607bf

    :goto_0
    new-instance p4, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {p0, p3}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-direct {p4, p0}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    const/16 p0, 0x21

    invoke-virtual {v1, p4, p1, p2, p0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v1

    :cond_4
    :goto_1
    return-object v0
.end method

.method public static getTextColorFromBg(Landroid/content/Context;I)I
    .locals 2

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    add-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x3

    const/16 v0, 0xc8

    if-le p1, v0, :cond_0

    const/high16 p0, -0x1000000

    goto :goto_0

    :cond_0
    const p1, 0x7f0607f3

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static getToolbarTextColor(Lcom/sec/android/app/sbrowser/common/constants/multi_tab/MultiTabConstants$ViewState;)I
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/multi_tab/MultiTabConstants$1;->$SwitchMap$com$sec$android$app$sbrowser$common$constants$multi_tab$MultiTabConstants$ViewState:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const p0, 0x7f060ce8

    return p0

    :pswitch_1
    const p0, 0x7f060ce9

    return p0

    :pswitch_2
    const p0, 0x7f060ce3

    return p0

    :pswitch_3
    const p0, 0x7f060ce4

    return p0

    :pswitch_4
    const p0, 0x7f060ce5

    return p0

    :pswitch_5
    const p0, 0x7f060ce6

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isGroupFeatureEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static setGroupItemStrokeColor(Landroid/content/Context;Landroid/view/View;I)V
    .locals 1

    const v0, 0x7f0b0566

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070add

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {p1, p0, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    return-void
.end method

.method public static setListGroupItemStrokeColor(Landroid/content/Context;Landroid/view/View;I)V
    .locals 1

    const v0, 0x7f0b0567

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070aea

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {p1, p0, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    return-void
.end method
