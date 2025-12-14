.class public Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;
.super Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;

.field public mCheck:Landroid/widget/CheckBox;

.field public mDivider:Landroid/view/View;

.field mRowView:Landroid/view/View;

.field public mSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field public mUrl:Landroid/widget/TextView;

.field public mWebSite:Lcom/sec/android/app/sbrowser/settings/website/Website;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;->mRowView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;->mRowView:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const p2, 0x7f0b0c31

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/SwitchCompat;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    const p2, 0x7f0b0df6

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;->mUrl:Landroid/widget/TextView;

    const p2, 0x7f0b0234

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;->mCheck:Landroid/widget/CheckBox;

    const p2, 0x7f0b0e49

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;->mDivider:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h1;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getItemCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "onClick pos "

    const-string v2, "WebPushNotiItemViewHolder"

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getListener()Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiAdapterListener;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiAdapterListener;->onChildClick(Landroid/view/View;I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h1;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getItemCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "onLongClick pos "

    const-string v2, "WebPushNotiItemViewHolder"

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiItemViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotificationAdapter;->getListener()Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiAdapterListener;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiAdapterListener;->onItemLongClick(Landroid/view/View;I)Z

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
