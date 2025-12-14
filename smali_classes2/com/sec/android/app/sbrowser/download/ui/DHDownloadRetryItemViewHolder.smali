.class Lcom/sec/android/app/sbrowser/download/ui/DHDownloadRetryItemViewHolder;
.super Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mFailedCountTextView:Landroid/widget/TextView;

.field private mImageSet:Lcom/sec/android/app/sbrowser/download/DownloadImageSet;

.field private mRetryBtnView:Landroid/widget/ImageView;

.field private mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getInstance()Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadRetryItemViewHolder;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadImageSet;->getInstance()Lcom/sec/android/app/sbrowser/download/DownloadImageSet;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadRetryItemViewHolder;->mImageSet:Lcom/sec/android/app/sbrowser/download/DownloadImageSet;

    const p2, 0x7f0b0422

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadRetryItemViewHolder;->mRetryBtnView:Landroid/widget/ImageView;

    const p2, 0x7f0b0443

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadRetryItemViewHolder;->mFailedCountTextView:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mRowView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadRetryItemViewHolder;->mRetryBtnView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f0601f9

    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadRetryItemViewHolder;->mRetryBtnView:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mRowView:Landroid/view/View;

    new-instance p2, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadRetryItemViewHolder$1;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadRetryItemViewHolder$1;-><init>(Lcom/sec/android/app/sbrowser/download/ui/DHDownloadRetryItemViewHolder;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private varargs getPluralResText(II[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private updateThumbnailView()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mThumbnailView:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mDownloadHistoryItemWrapper:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getMimeType()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/download/DownloadFileNameUtil;->resourceFromMimeType(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method


# virtual methods
.method public bindDownloadItemView(Landroid/util/Pair;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/util/Date;",
            "Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;",
            ">;ZZ)V"
        }
    .end annotation

    return-void
.end method

.method public bindDownloadItemView(Landroid/util/Pair;ZZI)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/util/Date;",
            "Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;",
            ">;ZZI)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mRowView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mRowView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mRowView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadRetryItemViewHolder;->mRetryBtnView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadRetryItemViewHolder;->mRetryBtnView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_e

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_e

    check-cast v0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->setDownloadItem(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;)V

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mDownloadHistoryItemWrapper:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isDownloading()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mDownloadHistoryItemWrapper:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getTitle()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mTitleView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mDownloadHistoryItemWrapper:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mDownloadHistoryItemWrapper:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mTTSOutputChecked:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mTTSOutputNotChecked:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mRowView:Landroid/view/View;

    const-string v3, ", "

    invoke-static {p1, v3}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mTitleView:Landroid/widget/TextView;

    invoke-static {v4, p1, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->u(Landroid/widget/TextView;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mTTSOutputCheckbox:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mRowView:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mDownloadHistoryItemWrapper:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isSaveAllProgressItem()Z

    move-result p1

    const/16 v0, 0x8

    const/4 v3, 0x0

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mUrlView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mDownloadHistoryItemWrapper:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/download/ui/DHUiUtils;->getShortenedDisplayUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadRetryItemViewHolder;->mFailedCountTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadRetryItemViewHolder;->mImageSet:Lcom/sec/android/app/sbrowser/download/DownloadImageSet;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/DownloadImageSet;->getSize()I

    move-result p1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadRetryItemViewHolder;->mImageSet:Lcom/sec/android/app/sbrowser/download/DownloadImageSet;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/download/DownloadImageSet;->getSize()I

    move-result v4

    new-array v5, v3, [Ljava/lang/Object;

    const v6, 0x7f12001e

    invoke-direct {p0, v6, v4, v5}, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadRetryItemViewHolder;->getPluralResText(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-lez p1, :cond_8

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadRetryItemViewHolder;->mImageSet:Lcom/sec/android/app/sbrowser/download/DownloadImageSet;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/download/DownloadImageSet;->getSize()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadRetryItemViewHolder;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getCompletedFiles()I

    move-result v5

    add-int/2addr v5, v4

    if-ne p1, v5, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadRetryItemViewHolder;->mImageSet:Lcom/sec/android/app/sbrowser/download/DownloadImageSet;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/DownloadImageSet;->getSize()I

    move-result p1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-direct {p0, v6, p1, v4}, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadRetryItemViewHolder;->getPluralResText(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_5
    if-ne p1, v2, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadRetryItemViewHolder;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getCompletedFiles()I

    move-result p1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadRetryItemViewHolder;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getCompletedFiles()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const v5, 0x7f12001d

    invoke-direct {p0, v5, p1, v4}, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadRetryItemViewHolder;->getPluralResText(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadRetryItemViewHolder;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getCompletedFiles()I

    move-result v4

    const v5, 0x7f12001f

    if-ne v4, v2, :cond_7

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadRetryItemViewHolder;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getCompletedFiles()I

    move-result v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v5, v4, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadRetryItemViewHolder;->getPluralResText(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_7
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadRetryItemViewHolder;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getCompletedFiles()I

    move-result v4

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadRetryItemViewHolder;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getCompletedFiles()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v6, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v5, v4, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadRetryItemViewHolder;->getPluralResText(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :cond_8
    :goto_2
    const-string p1, ","

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v4, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v4, p1

    if-lez v4, :cond_9

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadRetryItemViewHolder;->mFailedCountTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    aget-object v4, p1, v2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadRetryItemViewHolder;->mFailedCountTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mUrlView:Landroid/widget/TextView;

    aget-object p1, p1, v3

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_a
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadRetryItemViewHolder;->mFailedCountTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mUrlView:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    if-eqz p2, :cond_c

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadRetryItemViewHolder;->mRetryBtnView:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadRetryItemViewHolder;->mRetryBtnView:Landroid/widget/ImageView;

    const p2, 0x3e99999a    # 0.3f

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    if-nez p4, :cond_b

    iget-object p1, p0, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mRowView:Landroid/view/View;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_4

    :cond_b
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mCheckBox:Landroid/widget/CheckBox;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mDownloadHistoryItemWrapper:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isChecked()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    goto :goto_4

    :cond_c
    if-nez p3, :cond_d

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :goto_4
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadRetryItemViewHolder;->updateThumbnailView()V

    :cond_e
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/NetDeviceUtils;->isNetworkAvailable()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->getAdapter()Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    move-result-object p0

    const p1, 0x7f140803

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->showSnackBar(I)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mDownloadHistoryItemWrapper:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isSaveAllProgressItem()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mDownloadHistoryItemWrapper:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->onAction(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->getDownloadManagerService()Lcom/sec/android/app/sbrowser/download/DownloadManagerService;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mDownloadHistoryItemWrapper:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getTerraceDownloadItem()Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getDownloadInfo()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->retryDownload(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V

    :goto_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h1;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->getAdapter()Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getListener()Lcom/sec/android/app/sbrowser/download/ui/DHAdapterListener;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/sbrowser/download/ui/DHAdapterListener;->onItemLongClick(Landroid/view/View;I)Z

    const/4 p0, 0x1

    return p0
.end method
