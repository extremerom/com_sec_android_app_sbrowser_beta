.class Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItemViewHolder;
.super Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailRequest;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnCreateContextMenuListener;


# instance fields
.field private mDownloadThumbnailManager:Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;

.field private mThumbnailBitmap:Landroid/graphics/Bitmap;

.field private mTotalSizeView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;)V

    const p2, 0x7f0b044e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItemViewHolder;->mTotalSizeView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->getAdapter()Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getDownloadThumbnailManager()Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItemViewHolder;->mDownloadThumbnailManager:Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mThumbnailView:Landroid/widget/ImageView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setClipToOutline(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mRowView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mRowView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mRowView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    return-void
.end method

.method private getDownloadId(Ljava/lang/String;)J
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "download_id_mappings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-wide/16 v0, -0x1

    invoke-interface {p0, p1, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method private updateThumbnailView()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItemViewHolder;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mThumbnailView:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mDownloadHistoryItemWrapper:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getMimeType()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/download/DownloadFileNameUtil;->resourceFromMimeType(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public bindDownloadItemView(Landroid/util/Pair;ZZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/util/Date;",
            "Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;",
            ">;ZZ)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItemViewHolder;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->setDownloadItem(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;)V

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mDownloadHistoryItemWrapper:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isDownloading()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mTitleView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mDownloadHistoryItemWrapper:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mDownloadHistoryItemWrapper:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getBytesReceived()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/sec/android/app/sbrowser/download/DownloadUtils;->getStringForDownloadedBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    const-string v0, ", "

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mDownloadHistoryItemWrapper:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mTTSOutputChecked:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mTTSOutputNotChecked:Ljava/lang/String;

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mRowView:Landroid/view/View;

    invoke-static {v1, v0}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mTTSOutputCheckbox:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mRowView:Landroid/view/View;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mUrlView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mDownloadHistoryItemWrapper:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHUiUtils;->getShortenedDisplayUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mCheckBox:Landroid/widget/CheckBox;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mDownloadHistoryItemWrapper:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isChecked()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    goto :goto_2

    :cond_3
    if-nez p3, :cond_4

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mCheckBox:Landroid/widget/CheckBox;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p2, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :goto_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mDownloadHistoryItemWrapper:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isFailed()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItemViewHolder;->mTotalSizeView:Landroid/widget/TextView;

    const p2, 0x7f14052e

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mDownloadHistoryItemWrapper:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getMimeType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/download/DownloadFilter;->fromMimeType(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_6

    const/4 p2, 0x2

    if-eq p1, p2, :cond_6

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mDownloadHistoryItemWrapper:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getMimeType()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/download/DownloadFilter;->isApplicationPackage(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItemViewHolder;->mDownloadThumbnailManager:Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->getFilePath()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mDownloadHistoryItemWrapper:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getMimeType()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mDownloadHistoryItemWrapper:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItemViewHolder;->getDownloadId(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, p0, p2, p3, v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->getThumbNail(Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager$ThumbnailRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_7

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItemViewHolder;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    :cond_7
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItemViewHolder;->mTotalSizeView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mDownloadHistoryItemWrapper:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getBytesReceived()J

    move-result-wide v0

    invoke-static {p2, v0, v1}, Lcom/sec/android/app/sbrowser/download/DownloadUtils;->getStringForDownloadedBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItemViewHolder;->updateThumbnailView()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h1;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->getAdapter()Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getListener()Lcom/sec/android/app/sbrowser/download/ui/DHAdapterListener;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/sbrowser/download/ui/DHAdapterListener;->onChildClick(Landroid/view/View;I)Z

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h1;->getAdapterPosition()I

    move-result p3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->getAdapter()Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getListener()Lcom/sec/android/app/sbrowser/download/ui/DHAdapterListener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/download/ui/DHAdapterListener;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;I)V

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

.method public onThumbnailRetrieved(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    if-lez p1, :cond_0

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItemViewHolder;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItemViewHolder;->updateThumbnailView()V

    :cond_0
    return-void
.end method
