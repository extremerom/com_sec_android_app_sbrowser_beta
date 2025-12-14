.class public Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionInfoBar;
.super Lcom/sec/android/app/sbrowser/infobars/InfoBar;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionInfoBar$ActionListener;
    }
.end annotation


# instance fields
.field private mActionListener:Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionInfoBar$ActionListener;

.field private mCancelButton:Landroid/widget/Button;

.field private mDownloadButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionInfoBar$ActionListener;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;ILjava/lang/CharSequence;)V

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionInfoBar;->mActionListener:Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionInfoBar$ActionListener;

    return-void
.end method

.method private setInfoBarButtonColors(Z)V
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionInfoBar;->mDownloadButton:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/sec/sbrowser/spl/wrapper/MajoTextView;->setButtonShapeEnabled(Landroid/widget/TextView;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionInfoBar;->mCancelButton:Landroid/widget/Button;

    invoke-static {p0, v0}, Lcom/sec/sbrowser/spl/wrapper/MajoTextView;->setButtonShapeEnabled(Landroid/widget/TextView;Z)V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed to set button shape enabled "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContentBlockPromotionInfoBar"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0602ba

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionInfoBar;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionInfoBar;->mDownloadButton:Landroid/widget/Button;

    const v1, 0x7f080134

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionInfoBar;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionInfoBar;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public createView()Landroid/view/View;
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0e01ae

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b01f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionInfoBar;->mDownloadButton:Landroid/widget/Button;

    const v1, 0x7f0b01fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionInfoBar;->mCancelButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionInfoBar;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    const v1, 0x7f0b0618

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f140389

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b0613

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f140386

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionInfoBar$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionInfoBar$1;-><init>(Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionInfoBar;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionInfoBar;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionInfoBar;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isShowButtonShapeEnabled()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionInfoBar;->setInfoBarButtonColors(Z)V

    return-object v0
.end method

.method public hide()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->getInfoBarContainer()Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->getInfoBarContainer()Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->removeInfoBar(Lcom/sec/android/app/sbrowser/infobars/InfoBar;)Z

    :cond_0
    return-void
.end method

.method public onPrimaryButtonClicked()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionInfoBar;->hide()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionInfoBar;->mActionListener:Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionInfoBar$ActionListener;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionInfoBar$ActionListener;->onAction(I)V

    return-void
.end method

.method public onSecondaryButtonClicked()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionInfoBar;->hide()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionInfoBar;->mActionListener:Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionInfoBar$ActionListener;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionInfoBar$ActionListener;->onAction(I)V

    return-void
.end method
