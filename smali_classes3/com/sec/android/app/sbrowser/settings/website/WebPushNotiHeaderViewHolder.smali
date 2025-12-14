.class public Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiHeaderViewHolder;
.super Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;

.field public mGroupIndicatorIcon:Landroid/widget/ImageView;

.field public mRowView:Landroid/view/View;

.field public mSectionTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiHeaderViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiHeaderViewHolder;->mRowView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0b06a9

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiHeaderViewHolder;->mSectionTitle:Landroid/widget/TextView;

    const p2, 0x7f0b055e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiHeaderViewHolder;->mGroupIndicatorIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private onHeaderClicked(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h1;->getAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiHeaderViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->onHeaderClick(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiHeaderViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;

    invoke-virtual {v1, p1, v0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->setGroupHeaderContentDescription(Landroid/view/View;I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiHeaderViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->setHeaderIndicatorAnimation(Landroid/view/View;IZ)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiHeaderViewHolder;->onHeaderClicked(Landroid/view/View;)V

    return-void
.end method
