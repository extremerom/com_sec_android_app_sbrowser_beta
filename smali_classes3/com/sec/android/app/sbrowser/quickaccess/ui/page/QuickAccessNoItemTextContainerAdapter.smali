.class public Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNoItemTextContainerAdapter;
.super Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;
.source "SourceFile"


# instance fields
.field private final mContext:Landroid/content/Context;

.field mHeight:I

.field private mViewHolder:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNoItemTextViewHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNoItemTextContainerAdapter;->mHeight:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNoItemTextContainerAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getViewHolder()Landroidx/recyclerview/widget/h1;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNoItemTextContainerAdapter;->mViewHolder:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNoItemTextViewHolder;

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNoItemTextViewHolder;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNoItemTextContainerAdapter;->mViewHolder:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNoItemTextViewHolder;

    iget p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNoItemTextContainerAdapter;->mHeight:I

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNoItemTextContainerAdapter;->updateHeight(I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/h1;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNoItemTextContainerAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p2, 0x7f0e05a1

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNoItemTextViewHolder;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNoItemTextViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public updateHeight(I)V
    .locals 1

    iput p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNoItemTextContainerAdapter;->mHeight:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNoItemTextContainerAdapter;->mViewHolder:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNoItemTextViewHolder;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNoItemTextContainerAdapter;->mViewHolder:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNoItemTextViewHolder;

    iget-object p0, p0, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
