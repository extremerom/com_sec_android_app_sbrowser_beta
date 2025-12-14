.class public Lcom/sec/android/app/sbrowser/sites/history/view/HistoryItemViewHolder;
.super Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/sites/history/view/HistoryItemViewHolder$OnClickEventListener;
    }
.end annotation


# instance fields
.field public mCheckBox:Landroid/widget/CheckBox;

.field public mDominantText:Landroid/widget/TextView;

.field public mHistoryItemTime:Landroid/widget/TextView;

.field public mImageView:Landroid/widget/ImageView;

.field public mListDivider:Landroid/view/View;

.field private final mOnClickEventListener:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryItemViewHolder$OnClickEventListener;

.field mRowView:Landroid/view/View;

.field public mTextView:Landroid/widget/TextView;

.field public mUrlText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/sites/history/view/HistoryItemViewHolder$OnClickEventListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryItemViewHolder;->mOnClickEventListener:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryItemViewHolder$OnClickEventListener;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryItemViewHolder;->mRowView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryItemViewHolder;->mRowView:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    const p2, 0x7f0b05e5

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryItemViewHolder;->mTextView:Landroid/widget/TextView;

    const p2, 0x7f0b05e6

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryItemViewHolder;->mUrlText:Landroid/widget/TextView;

    const p2, 0x7f0b05d7

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryItemViewHolder;->mImageView:Landroid/widget/ImageView;

    const p2, 0x7f0b041b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryItemViewHolder;->mDominantText:Landroid/widget/TextView;

    const p2, 0x7f0b0b66

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryItemViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    const p2, 0x7f0b05e2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryItemViewHolder;->mListDivider:Landroid/view/View;

    const p2, 0x7f0b05e4

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryItemViewHolder;->mHistoryItemTime:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public getCheckBox()Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryItemViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method public getDominantTextView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryItemViewHolder;->mDominantText:Landroid/widget/TextView;

    return-object p0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryItemViewHolder;->mImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getRowView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryItemViewHolder;->mRowView:Landroid/view/View;

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h1;->getAdapterPosition()I

    move-result v0

    const-string v1, "onClick pos "

    const-string v2, "HistoryItemViewHolder"

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryItemViewHolder;->mOnClickEventListener:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryItemViewHolder$OnClickEventListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryItemViewHolder$OnClickEventListener;->onItemClick(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h1;->getAdapterPosition()I

    move-result v0

    const-string v1, "context menu for position "

    const-string v2, "HistoryItemViewHolder"

    invoke-static {v0, v1, v2}, Lt/b;->x(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryItemViewHolder;->mOnClickEventListener:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryItemViewHolder$OnClickEventListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3, v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryItemViewHolder$OnClickEventListener;->createContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;I)V

    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h1;->getAdapterPosition()I

    move-result v0

    const-string v1, "onLongClick pos "

    const-string v2, "HistoryItemViewHolder"

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryItemViewHolder;->mOnClickEventListener:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryItemViewHolder$OnClickEventListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryItemViewHolder$OnClickEventListener;->onItemLongClick(Landroid/view/View;I)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public setDominantText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, ""

    if-nez v0, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryItemViewHolder;->mDominantText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryItemViewHolder;->mDominantText:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
