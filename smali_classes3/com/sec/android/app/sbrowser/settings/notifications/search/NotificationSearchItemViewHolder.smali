.class public Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItemViewHolder;
.super Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;
.source "SourceFile"


# instance fields
.field mCheckBox:Landroid/widget/CheckBox;

.field mDivider:Landroid/view/View;

.field mDominantText:Landroid/widget/TextView;

.field mImageView:Landroid/widget/ImageView;

.field mMainItemLayout:Landroid/widget/RelativeLayout;

.field mNotificationSearchUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;

.field mSitesHeaderLayout:Landroid/widget/RelativeLayout;

.field mTitleView:Landroid/widget/TextView;

.field mUrlView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b083b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItemViewHolder;->mTitleView:Landroid/widget/TextView;

    const v0, 0x7f0b083c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItemViewHolder;->mUrlView:Landroid/widget/TextView;

    const v0, 0x7f0b0837

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItemViewHolder;->mSitesHeaderLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f0b083a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItemViewHolder;->mMainItemLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f0b0827

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItemViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItemViewHolder;->mNotificationSearchUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;

    const p2, 0x7f0b0835

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItemViewHolder;->mImageView:Landroid/widget/ImageView;

    const p2, 0x7f0b041b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItemViewHolder;->mDominantText:Landroid/widget/TextView;

    const p2, 0x7f0b0839

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItemViewHolder;->mDivider:Landroid/view/View;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItemViewHolder;->mMainItemLayout:Landroid/widget/RelativeLayout;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItemViewHolder;->mNotificationSearchUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItemViewHolder;->mMainItemLayout:Landroid/widget/RelativeLayout;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItemViewHolder;->mNotificationSearchUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;->getOnLongClickListener()Landroid/view/View$OnLongClickListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method
