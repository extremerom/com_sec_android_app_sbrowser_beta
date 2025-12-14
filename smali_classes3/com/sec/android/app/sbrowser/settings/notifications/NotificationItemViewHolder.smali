.class public Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemViewHolder;
.super Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnCreateContextMenuListener;


# instance fields
.field private mAdapter:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;

.field private mCheckBox:Landroid/widget/CheckBox;

.field mContext:Landroid/content/Context;

.field private mDescreption:Landroid/widget/TextView;

.field private mDominantText:Landroid/widget/TextView;

.field private mImageView:Landroid/widget/ImageView;

.field public mLayout:Landroid/widget/LinearLayout;

.field public mListDivider:Landroid/view/View;

.field private mMaxTextViewLength:I

.field private mRowView:Landroid/view/View;

.field private mTextView:Landroid/widget/TextView;

.field private mTime:J

.field private mTimeStamp:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemViewHolder;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemViewHolder;->mRowView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemViewHolder;->mRowView:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    const p2, 0x7f0b083e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemViewHolder;->mTextView:Landroid/widget/TextView;

    const p2, 0x7f0b083d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemViewHolder;->mTimeStamp:Landroid/widget/TextView;

    const p2, 0x7f0b0829

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemViewHolder;->mDescreption:Landroid/widget/TextView;

    const p2, 0x7f0b082b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemViewHolder;->mImageView:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0c0073

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemViewHolder;->mMaxTextViewLength:I

    const p2, 0x7f0b041b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemViewHolder;->mDominantText:Landroid/widget/TextView;

    const p2, 0x7f0b082d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    const p2, 0x7f0b082e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemViewHolder;->mLayout:Landroid/widget/LinearLayout;

    const p2, 0x7f0b0832

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemViewHolder;->mListDivider:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getCheckBox()Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemViewHolder;->mImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getRowView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemViewHolder;->mRowView:Landroid/view/View;

    return-object p0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemViewHolder;->mTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h1;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->getItemCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "onClick pos "

    const-string v2, "NotificationItemViewHolder"

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->getListener()Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapterListener;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapterListener;->onChildClick(Landroid/view/View;I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h1;->getAdapterPosition()I

    move-result p0

    const-string p1, "context menu for position "

    const-string p2, "NotificationItemViewHolder"

    invoke-static {p0, p1, p2}, Lt/b;->x(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h1;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->getItemCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "onLongClick pos "

    const-string v2, "NotificationItemViewHolder"

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapter;->getListener()Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapterListener;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationAdapterListener;->onItemLongClick(Landroid/view/View;I)Z

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public setDescreption(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-static {v1}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemViewHolder;->mMaxTextViewLength:I

    if-le v1, v2, :cond_1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemViewHolder;->mDescreption:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDominantText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, ""

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemViewHolder;->mDominantText:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemViewHolder;->mDominantText:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDominantTextVisibility(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemViewHolder;->mDominantText:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setImageViewVisibility(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemViewHolder;->mImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setTime(J)V
    .locals 2

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemViewHolder;->mTime:J

    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemViewHolder;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemViewHolder;->mContext:Landroid/content/Context;

    const v1, 0x10010

    invoke-static {v0, p1, p2, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemViewHolder;->mTimeStamp:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-static {v1}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemViewHolder;->mMaxTextViewLength:I

    if-le v1, v2, :cond_1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationItemViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
