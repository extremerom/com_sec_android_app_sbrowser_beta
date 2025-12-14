.class Lcom/sec/android/app/sbrowser/toolbar/PrimaryRecyclerAdapter;
.super Lcom/sec/android/app/sbrowser/toolbar/MoreMenuRecyclerAdapter;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/view/Menu;Lcom/sec/android/app/sbrowser/toolbar/MoreMenuListEventListener;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;",
            "Landroid/view/Menu;",
            "Lcom/sec/android/app/sbrowser/toolbar/MoreMenuListEventListener;",
            "I)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/view/Menu;Lcom/sec/android/app/sbrowser/toolbar/MoreMenuListEventListener;I)V

    return-void
.end method


# virtual methods
.method public getIconColor()I
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuRecyclerAdapter;->mContext:Landroid/content/Context;

    const v0, 0x7f060d90

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getTextColor()I
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuRecyclerAdapter;->mContext:Landroid/content/Context;

    const v0, 0x7f06026c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method public onBrowserPreferenceChanged(Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuRecyclerAdapter;->onBrowserPreferenceChanged(Ljava/lang/String;)V

    const-string v0, "tools_primary_item_list"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuRecyclerAdapter;->updateBadgeVisibility()V

    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/h1;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-nez p2, :cond_0

    const v0, 0x7f0e04d0

    goto :goto_0

    :cond_0
    const v0, 0x7f0e04d1

    :goto_0
    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuRecyclerAdapter$SecondaryMenuItemHolder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuRecyclerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {v1, p0, p2}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuRecyclerAdapter$SecondaryMenuItemHolder;-><init>(Landroid/view/View;I)V

    return-object v1
.end method
