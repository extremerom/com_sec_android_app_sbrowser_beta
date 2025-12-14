.class Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;
.super Lcom/sec/android/app/sbrowser/download/ui/DHItems;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;


# instance fields
.field private mActionBtn:Landroid/widget/TextView;

.field private mBtnDivider:Landroid/view/View;

.field private mButtonContainer:Landroid/widget/LinearLayout;

.field private mCancelBtn:Landroid/widget/TextView;

.field private mDownloadHistoryItemWrapper:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

.field private mDownloadingItemSeparator:Landroid/view/View;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressStatus:Landroid/widget/TextView;

.field private mProgressText:Landroid/widget/TextView;

.field private mRemainingTimeView:Landroid/widget/TextView;

.field private mRowView:Landroid/view/View;

.field private mTitleView:Landroid/widget/TextView;

.field private mUrlView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mRowView:Landroid/view/View;

    const p2, 0x7f0b044d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mTitleView:Landroid/widget/TextView;

    const p2, 0x7f0b044f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mUrlView:Landroid/widget/TextView;

    const p2, 0x7f0b043f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mButtonContainer:Landroid/widget/LinearLayout;

    const p2, 0x7f0b044a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mRemainingTimeView:Landroid/widget/TextView;

    const p2, 0x7f0b043e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mActionBtn:Landroid/widget/TextView;

    const p2, 0x7f0b0440

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mCancelBtn:Landroid/widget/TextView;

    const p2, 0x7f0b0445

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    const p2, 0x7f0b0449

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mProgressText:Landroid/widget/TextView;

    const p2, 0x7f0b0448

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mProgressStatus:Landroid/widget/TextView;

    const p2, 0x7f0b0424

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mBtnDivider:Landroid/view/View;

    const p2, 0x7f0b0465

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mDownloadingItemSeparator:Landroid/view/View;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mActionBtn:Landroid/widget/TextView;

    new-instance v0, Lcom/sec/android/app/sbrowser/download/ui/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/download/ui/i;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mCancelBtn:Landroid/widget/TextView;

    new-instance v0, Lcom/sec/android/app/sbrowser/download/ui/i;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/download/ui/i;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f140488

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1402b1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mCancelBtn:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mActionBtn:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mCancelBtn:Landroid/widget/TextView;

    filled-new-array {p2, p0}, [Landroid/widget/TextView;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/download/ui/DHUiUtils;->setDownloadItemButtonBackground(Landroid/content/Context;[Landroid/widget/TextView;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method private getProgressText()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mDownloadHistoryItemWrapper:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isSaveAllProgressItem()Z

    move-result v0

    const-string v1, "/"

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getInstance()Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getCompletedFiles()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getInstance()Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getFilesToDownload()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mDownloadHistoryItemWrapper:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getBytesReceived()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/sec/android/app/sbrowser/download/DownloadUtils;->getStringForDownloadedBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mDownloadHistoryItemWrapper:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getTotalSize()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/sbrowser/download/DownloadUtils;->getStringForDownloadedBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lt/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleProgressStatus(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mDownloadHistoryItemWrapper:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isPaused()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isIndia()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mProgressStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mProgressStatus:Landroid/widget/TextView;

    const v1, 0x7f14047f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mDownloadHistoryItemWrapper:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isIndeterminate()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mProgressStatus:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mProgressStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mDownloadHistoryItemWrapper:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getProgress()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mProgressStatus:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mProgressStatus:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mProgressStatus:Landroid/widget/TextView;

    const-string v2, ", "

    invoke-static {v1, v0, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->u(Landroid/widget/TextView;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f140465

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mProgressStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mDownloadHistoryItemWrapper:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->onAction(Landroid/content/Context;Z)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mDownloadHistoryItemWrapper:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->cancel()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "8757"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bindDownloadItemView(Landroid/util/Pair;ZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/util/Date;",
            "Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;",
            ">;ZZ)V"
        }
    .end annotation

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mRowView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p3, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p3, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p3, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {p0, p3}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->setDownloadItem(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;)V

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mDownloadHistoryItemWrapper:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getTitle()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mDownloadHistoryItemWrapper:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isDownloading()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mTitleView:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mDownloadHistoryItemWrapper:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getTitle()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mDownloadHistoryItemWrapper:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isSaveAllProgressItem()Z

    move-result p1

    const/16 p3, 0x8

    const/4 v0, 0x0

    if-nez p1, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isIndia()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mDownloadHistoryItemWrapper:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isIndeterminate()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mDownloadHistoryItemWrapper:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isPaused()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mRemainingTimeView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mDownloadHistoryItemWrapper:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isPaused()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mRemainingTimeView:Landroid/widget/TextView;

    const v1, 0x7f14047f

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mDownloadHistoryItemWrapper:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getTimeRemainingInMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mRemainingTimeView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1, v2}, Lcom/sec/android/app/sbrowser/download/DownloadUtils;->formatDuration(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f1404a6

    invoke-virtual {v3, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mRemainingTimeView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mRemainingTimeView:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mDownloadHistoryItemWrapper:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isPaused()Z

    move-result p1

    const v1, 0x7f1402b1

    const-string v2, ", "

    const/4 v3, 0x1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mActionBtn:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f14048e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mActionBtn:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mDownloadHistoryItemWrapper:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isIndeterminate()Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mDownloadHistoryItemWrapper:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isPending()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mDownloadHistoryItemWrapper:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isAutoResumable()Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_1

    :cond_7
    move v4, v0

    goto :goto_2

    :cond_8
    :goto_1
    move v4, v3

    :goto_2
    invoke-virtual {p1, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mActionBtn:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f14048b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mActionBtn:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mDownloadHistoryItemWrapper:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isIndeterminate()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mProgressText:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_9
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mProgressText:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mProgressText:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->getProgressText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->handleProgressStatus(Z)V

    if-eqz p2, :cond_a

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mRowView:Landroid/view/View;

    const p2, 0x3e99999a    # 0.3f

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mRowView:Landroid/view/View;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mActionBtn:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mCancelBtn:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mProgressStatus:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-ne p1, p3, :cond_b

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mTitleView:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-static {v1, p2, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->u(Landroid/widget/TextView;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f140465

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_a
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mRowView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mActionBtn:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mCancelBtn:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_b
    :goto_5
    invoke-static {}, Lcom/sec/android/app/sbrowser/download_intercept/rule/DLInterceptUtil;->isSupportDLIntercept()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mDownloadHistoryItemWrapper:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/download_intercept/DLInterceptHandler;->getAppNameForDownloading(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mActionBtn:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mBtnDivider:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    :cond_c
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mActionBtn:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-ne p1, p3, :cond_d

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mActionBtn:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mBtnDivider:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    :goto_6
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mDownloadHistoryItemWrapper:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getProgress()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 0

    const-string p0, "878"

    return-object p0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mTitleView:Landroid/widget/TextView;

    return-object p0
.end method

.method public getUrlView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mUrlView:Landroid/widget/TextView;

    return-object p0
.end method

.method public removeListSeparator()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mDownloadingItemSeparator:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setItemBackground(IZ)V
    .locals 1

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mRowView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f080178

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->showListSeparator()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mRowView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f08017b

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->removeListSeparator()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mRowView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f080175

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->removeListSeparator()V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mRowView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f08017f

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->showListSeparator()V

    :goto_0
    return-void
.end method

.method public showListSeparator()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;->mDownloadingItemSeparator:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
