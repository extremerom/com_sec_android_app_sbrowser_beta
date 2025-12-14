.class public Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/MostVisitedIconViewHolder;
.super Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsMostVisitedIconViewHolder;
.source "SourceFile"


# instance fields
.field private final mIconViewItemBinding:Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemBinding;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemBinding;Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AdapterDelegate;)V
    .locals 6
    .param p5    # Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AdapterDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsMostVisitedIconViewHolder;-><init>(Landroid/view/View;Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AdapterDelegate;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/MostVisitedIconViewHolder;->mIconViewItemBinding:Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemBinding;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsMostVisitedIconViewHolder;->setItemClickListener()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsMostVisitedIconViewHolder;->setOnKeyListener()V

    return-void
.end method


# virtual methods
.method public getCheckBoxStub()Landroid/view/ViewStub;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/MostVisitedIconViewHolder;->mIconViewItemBinding:Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemBinding;->container:Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemContainerBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemContainerBinding;->checkboxStub:Landroid/view/ViewStub;

    return-object p0
.end method

.method public getContainer()Landroid/widget/RelativeLayout;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/MostVisitedIconViewHolder;->mIconViewItemBinding:Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemBinding;->container:Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemContainerBinding;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemContainerBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p0

    return-object p0
.end method

.method public getDominantChar()Landroid/widget/TextView;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/MostVisitedIconViewHolder;->mIconViewItemBinding:Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemBinding;->container:Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemContainerBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemContainerBinding;->dominantChar:Landroid/widget/TextView;

    return-object p0
.end method

.method public getIcon()Landroid/widget/ImageView;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/MostVisitedIconViewHolder;->mIconViewItemBinding:Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemBinding;->container:Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemContainerBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemContainerBinding;->icon:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getLayout()Landroid/widget/RelativeLayout;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/MostVisitedIconViewHolder;->mIconViewItemBinding:Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemBinding;->container:Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemContainerBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemContainerBinding;->innerContainer:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method public getSubTitle()Lcom/sec/android/app/sbrowser/common/widget/AutoLetterSpacingTextView;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTitle()Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/MostVisitedIconViewHolder;->mIconViewItemBinding:Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemBinding;->container:Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemContainerBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemContainerBinding;->title:Lcom/sec/android/app/sbrowser/common/widget/AutoLetterSpacingTextView;

    return-object p0
.end method
