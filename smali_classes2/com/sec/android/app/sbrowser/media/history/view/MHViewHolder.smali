.class Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;
.super Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnCreateContextMenuListener;


# instance fields
.field private mAdapter:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;

.field private mCheckbox:Landroid/widget/CheckBox;

.field private mDomain:Landroid/widget/TextView;

.field private mListDivider:Landroid/view/View;

.field private mRowView:Landroid/view/View;

.field private mThumbnail:Landroid/widget/ImageView;

.field private mTime:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;->mRowView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;->mRowView:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;->mRowView:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;->mRowView:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    const p2, 0x7f0b0742

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;->mCheckbox:Landroid/widget/CheckBox;

    const p2, 0x7f0b0745

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;->mThumbnail:Landroid/widget/ImageView;

    const p2, 0x7f0b0748

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;->mTitle:Landroid/widget/TextView;

    const p2, 0x7f0b0747

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;->mTime:Landroid/widget/TextView;

    const p2, 0x7f0b0744

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;->mDomain:Landroid/widget/TextView;

    const p2, 0x7f0b0741

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;->mListDivider:Landroid/view/View;

    return-void
.end method

.method private getTitleTextViewWidth(Landroid/content/Context;)I
    .locals 2

    new-instance p0, Landroid/util/DisplayMetrics;

    invoke-direct {p0}, Landroid/util/DisplayMetrics;-><init>()V

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070929

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const v1, 0x7f070928

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    add-int/2addr v1, v0

    const v0, 0x7f070927

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    add-int/2addr v0, v1

    const v1, 0x7f070931

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    add-int/2addr p1, v0

    sub-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public getCheckbox()Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;->mCheckbox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method public getDivider()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;->mListDivider:Landroid/view/View;

    return-object p0
.end method

.method public getDomainView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;->mDomain:Landroid/widget/TextView;

    return-object p0
.end method

.method public getRowView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;->mRowView:Landroid/view/View;

    return-object p0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;->mTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h1;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->getItemCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->getListener()Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapterListener;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapterListener;->onItemClick(Landroid/view/View;I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h1;->getAdapterPosition()I

    move-result p3

    const/4 v0, -0x1

    if-eq p3, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->getItemCount()I

    move-result v0

    if-lt p3, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->getListener()Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapterListener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapterListener;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h1;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->getItemCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->getListener()Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapterListener;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapterListener;->onItemLongClick(Landroid/view/View;I)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->getListener()Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapterListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapterListener;->onItemTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setDomainText(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;->mDomain:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setThumbnail(Landroid/graphics/Bitmap;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearColorFilter()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;->mThumbnail:Landroid/widget/ImageView;

    const v1, 0x7f0803f2

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v0, -0x2

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060748

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;->mThumbnail:Landroid/widget/ImageView;

    const v1, 0x7f0803f0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;->mThumbnail:Landroid/widget/ImageView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;->mThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;->mThumbnail:Landroid/widget/ImageView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    return-void
.end method

.method public setTimeText(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;->mTime:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleViewLines(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0052

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;->getTitleTextViewWidth(Landroid/content/Context;)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/view/View;->measure(II)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    return-void
.end method
