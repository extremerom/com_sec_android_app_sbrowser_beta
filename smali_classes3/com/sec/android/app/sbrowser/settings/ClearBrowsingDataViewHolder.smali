.class public Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataViewHolder;
.super Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private mAdapter:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;

.field private mCheck:Landroid/widget/CheckBox;

.field private mDatainfo:Landroid/widget/TextView;

.field private mDivider:Landroid/view/View;

.field private mHelpText:Landroid/widget/TextView;

.field private mRowView:Landroid/view/View;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataViewHolder;->mRowView:Landroid/view/View;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0b0234

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataViewHolder;->mCheck:Landroid/widget/CheckBox;

    const p2, 0x7f0b0d66

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataViewHolder;->mTitle:Landroid/widget/TextView;

    const p2, 0x7f0b05ca

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataViewHolder;->mHelpText:Landroid/widget/TextView;

    const p2, 0x7f0b03c9

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataViewHolder;->mDatainfo:Landroid/widget/TextView;

    const p2, 0x7f0b0415

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataViewHolder;->mDivider:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public bindData(IZ)V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;->getNameByPosition(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataViewHolder;->mHelpText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;->getHelpTextByPosition(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;->getBrowsingDataByPosition(I)J

    move-result-wide v1

    long-to-float v1, v1

    const/high16 v2, 0x49800000    # 1048576.0f

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataViewHolder;->mDatainfo:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;

    invoke-virtual {v4, p1}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;->getDataInfoByPosition(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataViewHolder;->mDatainfo:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;->getDataInfoByPosition(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;->getBrowsingDataByPosition(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataViewHolder;->mDatainfo:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;->getDataInfoByPosition(I)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;

    invoke-virtual {v4, p1}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;->getBrowsingDataByPosition(I)J

    move-result-wide v4

    long-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;

    invoke-virtual {v5, p1}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;->getBrowsingDataByPosition(I)J

    move-result-wide v5

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v0

    if-ne p1, v1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataViewHolder;->mDivider:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataViewHolder;->mDivider:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataViewHolder;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataViewHolder;->mRowView:Landroid/view/View;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;->setBackgroundResourceForItems(Landroid/view/View;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h1;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;->getItemCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataAdapter;->getListener()Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataListner;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataListner;->onChildClick(Landroid/view/View;I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
