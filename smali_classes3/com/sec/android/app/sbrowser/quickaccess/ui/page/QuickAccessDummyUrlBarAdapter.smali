.class public Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter;
.super Landroidx/recyclerview/widget/u0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter$QuickAccessUrlBarViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/u0;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIconViewListener:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;

.field private final mIsForPreview:Ljava/lang/Boolean;

.field private mQuickAccessUrlBarViewHolder:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter$QuickAccessUrlBarViewHolder;

.field private final mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;Z)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/u0;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter;->mIconViewListener:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter;->mIsForPreview:Ljava/lang/Boolean;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter;)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter;->mIconViewListener:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter;->mIsForPreview:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter;)Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    return-object p0
.end method


# virtual methods
.method public getBottomYCoOrdinate()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter;->mQuickAccessUrlBarViewHolder:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter$QuickAccessUrlBarViewHolder;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter;->mQuickAccessUrlBarViewHolder:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter$QuickAccessUrlBarViewHolder;

    iget-object p0, p0, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    const/4 v0, 0x0

    :goto_0
    float-to-int v0, v0

    add-int/2addr v0, p0

    return v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getEditMode()Landroidx/lifecycle/S;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isDefaultMobileLayout(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->isExternal()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public getItemViewType(I)I
    .locals 0

    const p0, 0x7f0e0596

    return p0
.end method

.method public getViewHolder()Landroidx/recyclerview/widget/h1;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter;->mQuickAccessUrlBarViewHolder:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter$QuickAccessUrlBarViewHolder;

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    instance-of p2, p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter$QuickAccessUrlBarViewHolder;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter$QuickAccessUrlBarViewHolder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter;->mIsForPreview:Ljava/lang/Boolean;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter$QuickAccessUrlBarViewHolder;->bind(Ljava/lang/Boolean;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter$QuickAccessUrlBarViewHolder;->updateBlurBackground()V

    :cond_0
    return-void
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

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V

    :cond_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object p3, p1

    check-cast p3, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter$QuickAccessUrlBarViewHolder;

    invoke-virtual {p3, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter$QuickAccessUrlBarViewHolder;->bind(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/h1;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e0596

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter$QuickAccessUrlBarViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter$QuickAccessUrlBarViewHolder;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter;Landroid/view/View;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter;->mQuickAccessUrlBarViewHolder:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter$QuickAccessUrlBarViewHolder;

    return-object p2
.end method

.method public setBottomMargin(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter;->mQuickAccessUrlBarViewHolder:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter$QuickAccessUrlBarViewHolder;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter;->mQuickAccessUrlBarViewHolder:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter$QuickAccessUrlBarViewHolder;

    iget-object p0, p0, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
