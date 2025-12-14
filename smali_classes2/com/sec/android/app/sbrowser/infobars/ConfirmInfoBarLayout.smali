.class public Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mInfoBarView:Lcom/sec/android/app/sbrowser/infobars/InfoBarView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarLayout;->mInfoBarView:Lcom/sec/android/app/sbrowser/infobars/InfoBarView;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarView;->onCloseButtonClicked()V

    goto :goto_0

    :pswitch_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarLayout;->mInfoBarView:Lcom/sec/android/app/sbrowser/infobars/InfoBarView;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarView;->onTertiaryButtonClicked()V

    goto :goto_0

    :pswitch_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarLayout;->mInfoBarView:Lcom/sec/android/app/sbrowser/infobars/InfoBarView;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarView;->onSecondaryButtonClicked()V

    goto :goto_0

    :pswitch_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarLayout;->mInfoBarView:Lcom/sec/android/app/sbrowser/infobars/InfoBarView;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarView;->onPrimaryButtonClicked()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0b02e3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setResources(Lcom/sec/android/app/sbrowser/infobars/InfoBarView;Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarResources;)V
    .locals 9

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarLayout;->mInfoBarView:Lcom/sec/android/app/sbrowser/infobars/InfoBarView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0702c4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702d1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarResources;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    const v2, 0x7f0b02e7

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarResources;->getIconDrawableId()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    const v1, 0x7f0b02e9

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarResources;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const/16 v5, 0x8

    const v6, 0x7f0b02e6

    const/4 v7, 0x0

    if-nez v4, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, 0x6

    invoke-virtual {v4, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v8, 0x11

    invoke-virtual {v4, v8, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0x10

    invoke-virtual {v4, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_1
    const v2, 0x7f0b02ea

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarResources;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarResources;->getMessage()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarResources;->getMessage()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b02e3

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarResources;->getPrimaryButtonText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    const v2, 0x7f0b02e4

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarResources;->getSecondaryButtonText()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    const v5, 0x7f0b02e0

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    const v4, 0x7f0b02e5

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/infobars/ConfirmInfoBarResources;->getTertiaryButtonText()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    const v5, 0x7f0b02e1

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result p0

    div-float/2addr p0, p1

    cmpl-float p0, p0, v0

    if-lez p0, :cond_6

    mul-float/2addr p1, v0

    invoke-virtual {v1, v7, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v2, v7, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v4, v7, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_6
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isShowButtonShapeEnabled()Z

    move-result p0

    if-eqz p0, :cond_7

    :try_start_0
    invoke-static {v1, v3}, Lcom/sec/sbrowser/spl/wrapper/MajoTextView;->setButtonShapeEnabled(Landroid/widget/TextView;Z)V

    invoke-static {v2, v3}, Lcom/sec/sbrowser/spl/wrapper/MajoTextView;->setButtonShapeEnabled(Landroid/widget/TextView;Z)V

    invoke-static {v4, v3}, Lcom/sec/sbrowser/spl/wrapper/MajoTextView;->setButtonShapeEnabled(Landroid/widget/TextView;Z)V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed to set button shape enabled "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ConfirmInfoBarLayout"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_3
    return-void
.end method
