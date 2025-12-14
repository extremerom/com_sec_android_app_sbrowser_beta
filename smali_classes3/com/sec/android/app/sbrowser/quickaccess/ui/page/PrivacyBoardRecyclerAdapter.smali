.class public Lcom/sec/android/app/sbrowser/quickaccess/ui/page/PrivacyBoardRecyclerAdapter;
.super Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;
.source "SourceFile"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIsForPreview:Ljava/lang/Boolean;

.field private final mListener:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;Z)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/PrivacyBoardRecyclerAdapter;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/PrivacyBoardRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/PrivacyBoardRecyclerAdapter;->mIsForPreview:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getItemViewType(I)I
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f0e0581

    return p0

    :cond_0
    const p0, 0x7f0e0580

    return p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    instance-of p2, p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PrivacyBoardViewHolder;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PrivacyBoardViewHolder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/PrivacyBoardRecyclerAdapter;->mIsForPreview:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PrivacyBoardViewHolder;->bind(Z)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PrivacyBoardViewHolder;->updateBlurBackground()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown viewHolder"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/h1;ILjava/util/List;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/h1;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/PrivacyBoardRecyclerAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V

    return-void

    :cond_0
    instance-of p0, p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PrivacyBoardViewHolder;

    if-eqz p0, :cond_1

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PrivacyBoardViewHolder;

    invoke-virtual {p1, p3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PrivacyBoardViewHolder;->bind(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PrivacyBoardViewHolder;->updateBlurBackground()V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown viewHolder"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/h1;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/PrivacyBoardRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0e0581

    if-ne p2, v0, :cond_0

    new-instance p2, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewPrivacyBoardViewHolder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/PrivacyBoardRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;

    invoke-direct {p2, p1, v0, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewPrivacyBoardViewHolder;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;)V

    return-object p2

    :cond_0
    new-instance p2, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PrivacyBoardViewHolder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/PrivacyBoardRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;

    invoke-direct {p2, p1, v0, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PrivacyBoardViewHolder;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;)V

    return-object p2
.end method

.method public setEditMode(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->setEditMode(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)V

    const/4 p1, 0x0

    const-string v0, "editmode"

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/u0;->notifyItemChanged(ILjava/lang/Object;)V

    return-void
.end method
