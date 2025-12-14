.class public Lcom/sec/android/app/sbrowser/settings/PermissionItemViewHolder;
.super Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field mAdapter:Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;

.field public mDivider:Landroid/view/View;

.field public mFavicon:Landroid/widget/ImageView;

.field mRowView:Landroid/view/View;

.field public mSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field public mUrl:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/PermissionItemViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PermissionItemViewHolder;->mRowView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/PermissionItemViewHolder;->mRowView:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const p2, 0x7f0b053a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/PermissionItemViewHolder;->mFavicon:Landroid/widget/ImageView;

    const p2, 0x7f0b0873

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/SwitchCompat;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/PermissionItemViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    const p2, 0x7f0b0df6

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/PermissionItemViewHolder;->mUrl:Landroid/widget/TextView;

    const p2, 0x7f0b0b6a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/PermissionItemViewHolder;->mDivider:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getImageView()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PermissionItemViewHolder;->mFavicon:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getRowView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/PermissionItemViewHolder;->mRowView:Landroid/view/View;

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h1;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h1;->getAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/PermissionItemViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;->getItemCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/PermissionItemViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;->getListener()Lcom/sec/android/app/sbrowser/settings/PermissionListAdapterListner;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h1;->getAdapterPosition()I

    move-result p0

    invoke-interface {v0, p1, p0}, Lcom/sec/android/app/sbrowser/settings/PermissionListAdapterListner;->onChildClick(Landroid/view/View;I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
