.class public Lcom/sec/android/app/sbrowser/infobars/AppBannerInfoBarLayout;
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
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/AppBannerInfoBarLayout;->mInfoBarView:Lcom/sec/android/app/sbrowser/infobars/InfoBarView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$Item;->setControlsEnabled(Z)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/AppBannerInfoBarLayout;->mInfoBarView:Lcom/sec/android/app/sbrowser/infobars/InfoBarView;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarView;->onCloseButtonClicked()V

    goto :goto_0

    :pswitch_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/AppBannerInfoBarLayout;->mInfoBarView:Lcom/sec/android/app/sbrowser/infobars/InfoBarView;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarView;->onSecondaryButtonClicked()V

    goto :goto_0

    :pswitch_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/AppBannerInfoBarLayout;->mInfoBarView:Lcom/sec/android/app/sbrowser/infobars/InfoBarView;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarView;->onPrimaryButtonClicked()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0b00e1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setResources(Lcom/sec/android/app/sbrowser/infobars/InfoBarView;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;Z)V
    .locals 4

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/AppBannerInfoBarLayout;->mInfoBarView:Lcom/sec/android/app/sbrowser/infobars/InfoBarView;

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

    const v1, 0x7f0b00e4

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const p2, 0x7f0b00e6

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0b00e3

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0b00e1

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    if-eqz p4, :cond_0

    const p3, 0x7f1410e5

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    const p3, 0x7f0b00e5

    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const p4, 0x7f1410e9

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    const p3, 0x7f1400cc

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f0b00e2

    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    const p4, 0x7f1400cd

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2}, Landroid/widget/TextView;->getTextSize()F

    move-result p0

    div-float/2addr p0, p1

    cmpl-float p0, p0, v0

    if-lez p0, :cond_1

    mul-float/2addr p1, v0

    const/4 p0, 0x0

    invoke-virtual {p2, p0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p3, p0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isShowButtonShapeEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    :try_start_0
    invoke-static {p2, v3}, Lcom/sec/sbrowser/spl/wrapper/MajoTextView;->setButtonShapeEnabled(Landroid/widget/TextView;Z)V

    invoke-static {p3, v3}, Lcom/sec/sbrowser/spl/wrapper/MajoTextView;->setButtonShapeEnabled(Landroid/widget/TextView;Z)V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed to set button shape enabled "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppBannerInfoBarLayout"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method
