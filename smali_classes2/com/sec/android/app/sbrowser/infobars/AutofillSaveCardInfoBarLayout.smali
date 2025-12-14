.class public Lcom/sec/android/app/sbrowser/infobars/AutofillSaveCardInfoBarLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mInfoBarView:Lcom/sec/android/app/sbrowser/infobars/InfoBarView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private setCardExpirationDate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    const-string p0, "AutofillSaveCardInfoBarLayout"

    const-string p1, "setCardExpirationDate : year is invalid"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f14012c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " / "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const p2, 0x7f0b0a49

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setCardIssuerLogo(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    const v0, 0x7f0b0a4b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private setCardObfuscatedNumber(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const v0, 0x7f0b0a4a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setClickListenerToButton(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/AutofillSaveCardInfoBarLayout;->mInfoBarView:Lcom/sec/android/app/sbrowser/infobars/InfoBarView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$Item;->setControlsEnabled(Z)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/AutofillSaveCardInfoBarLayout;->mInfoBarView:Lcom/sec/android/app/sbrowser/infobars/InfoBarView;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarView;->onSecondaryButtonClicked()V

    goto :goto_0

    :sswitch_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/AutofillSaveCardInfoBarLayout;->mInfoBarView:Lcom/sec/android/app/sbrowser/infobars/InfoBarView;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarView;->onPrimaryButtonClicked()V

    goto :goto_0

    :sswitch_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/AutofillSaveCardInfoBarLayout;->mInfoBarView:Lcom/sec/android/app/sbrowser/infobars/InfoBarView;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarView;->onCloseButtonClicked()V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0b01f0 -> :sswitch_2
        0x7f0b0a47 -> :sswitch_1
        0x7f0b0a48 -> :sswitch_0
    .end sparse-switch
.end method

.method public setResources(Lcom/sec/android/app/sbrowser/infobars/InfoBarView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/infobars/InfoBarView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/AutofillSaveCardInfoBarLayout;->mInfoBarView:Lcom/sec/android/app/sbrowser/infobars/InfoBarView;

    invoke-direct {p0, p5}, Lcom/sec/android/app/sbrowser/infobars/AutofillSaveCardInfoBarLayout;->setCardIssuerLogo(I)V

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/infobars/AutofillSaveCardInfoBarLayout;->setCardObfuscatedNumber(Ljava/lang/String;)V

    invoke-direct {p0, p4, p3}, Lcom/sec/android/app/sbrowser/infobars/AutofillSaveCardInfoBarLayout;->setCardExpirationDate(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f0b0a47

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/infobars/AutofillSaveCardInfoBarLayout;->setClickListenerToButton(I)V

    const p1, 0x7f0b0a48

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/infobars/AutofillSaveCardInfoBarLayout;->setClickListenerToButton(I)V

    const p1, 0x7f0b01f0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/infobars/AutofillSaveCardInfoBarLayout;->setClickListenerToButton(I)V

    return-void
.end method
