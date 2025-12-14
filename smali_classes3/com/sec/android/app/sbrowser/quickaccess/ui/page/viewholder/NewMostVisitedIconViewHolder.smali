.class public final Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewMostVisitedIconViewHolder;
.super Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsMostVisitedIconViewHolder;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001f\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u0015H\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0019\u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001aJ\u000f\u0010\u001d\u001a\u00020\u001cH\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u000f\u0010 \u001a\u00020\u001fH\u0016\u00a2\u0006\u0004\u0008 \u0010!J\u000f\u0010#\u001a\u00020\"H\u0016\u00a2\u0006\u0004\u0008#\u0010$J\u000f\u0010&\u001a\u00020%H\u0016\u00a2\u0006\u0004\u0008&\u0010\'J\u000f\u0010)\u001a\u00020(H\u0016\u00a2\u0006\u0004\u0008)\u0010*R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010+\u00a8\u0006,"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewMostVisitedIconViewHolder;",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsMostVisitedIconViewHolder;",
        "Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemNewBinding;",
        "binding",
        "Landroid/content/Context;",
        "context",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;",
        "viewModel",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;",
        "listener",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AdapterDelegate;",
        "adapterDelegate",
        "<init>",
        "(Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemNewBinding;Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AdapterDelegate;)V",
        "Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;",
        "item",
        "",
        "isForPreview",
        "Ldb/r;",
        "bind",
        "(Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;Z)V",
        "",
        "getTitleLightColor",
        "()I",
        "Landroid/widget/RelativeLayout;",
        "getLayout",
        "()Landroid/widget/RelativeLayout;",
        "getContainer",
        "Landroid/widget/ImageView;",
        "getIcon",
        "()Landroid/widget/ImageView;",
        "Landroid/widget/TextView;",
        "getDominantChar",
        "()Landroid/widget/TextView;",
        "Landroid/view/ViewStub;",
        "getCheckBoxStub",
        "()Landroid/view/ViewStub;",
        "Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;",
        "getTitle",
        "()Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;",
        "Lcom/sec/android/app/sbrowser/common/widget/AutoLetterSpacingTextView;",
        "getSubTitle",
        "()Lcom/sec/android/app/sbrowser/common/widget/AutoLetterSpacingTextView;",
        "Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemNewBinding;",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final binding:Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemNewBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemNewBinding;Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AdapterDelegate;)V
    .locals 7
    .param p1    # Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemNewBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AdapterDelegate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "binding"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewModel"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p4, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapterDelegate"

    invoke-static {p5, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemNewBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v2

    const-string v0, "getRoot(...)"

    invoke-static {v2, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsMostVisitedIconViewHolder;-><init>(Landroid/view/View;Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AdapterDelegate;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewMostVisitedIconViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemNewBinding;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsMostVisitedIconViewHolder;->setItemClickListener()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsMostVisitedIconViewHolder;->setOnKeyListener()V

    return-void
.end method


# virtual methods
.method public bind(Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;Z)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "item"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsMostVisitedIconViewHolder;->bind(Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;Z)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewMostVisitedIconViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemNewBinding;

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemNewBinding;->container:Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemContainerNewBinding;

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemContainerNewBinding;->subtitle:Lcom/sec/android/app/sbrowser/common/widget/AutoLetterSpacingTextView;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewMostVisitedIconViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemNewBinding;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemNewBinding;->container:Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemContainerNewBinding;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemContainerNewBinding;->subtitle:Lcom/sec/android/app/sbrowser/common/widget/AutoLetterSpacingTextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mMostVisitedSubtitle:Lcom/sec/android/app/sbrowser/common/widget/AutoLetterSpacingTextView;

    return-void
.end method

.method public getCheckBoxStub()Landroid/view/ViewStub;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewMostVisitedIconViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemNewBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemNewBinding;->container:Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemContainerNewBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemContainerNewBinding;->checkboxStub:Landroid/view/ViewStub;

    const-string v0, "checkboxStub"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getContainer()Landroid/widget/RelativeLayout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewMostVisitedIconViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemNewBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemNewBinding;->container:Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemContainerNewBinding;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemContainerNewBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p0

    const-string v0, "getRoot(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getDominantChar()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewMostVisitedIconViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemNewBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemNewBinding;->container:Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemContainerNewBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemContainerNewBinding;->dominantChar:Landroid/widget/TextView;

    const-string v0, "dominantChar"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getIcon()Landroid/widget/ImageView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewMostVisitedIconViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemNewBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemNewBinding;->container:Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemContainerNewBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemContainerNewBinding;->icon:Landroid/widget/ImageView;

    const-string v0, "icon"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getLayout()Landroid/widget/RelativeLayout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewMostVisitedIconViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemNewBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemNewBinding;->container:Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemContainerNewBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemContainerNewBinding;->innerContainer:Landroid/widget/RelativeLayout;

    const-string v0, "innerContainer"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getSubTitle()Lcom/sec/android/app/sbrowser/common/widget/AutoLetterSpacingTextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewMostVisitedIconViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemNewBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemNewBinding;->container:Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemContainerNewBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemContainerNewBinding;->subtitle:Lcom/sec/android/app/sbrowser/common/widget/AutoLetterSpacingTextView;

    const-string v0, "subtitle"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getTitle()Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewMostVisitedIconViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemNewBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemNewBinding;->container:Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemContainerNewBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemContainerNewBinding;->title:Lcom/sec/android/app/sbrowser/common/widget/AutoLetterSpacingTextView;

    const-string v0, "title"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getTitleLightColor()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mAdapterDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AdapterDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AdapterDelegate;->getEditMode()Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->isNonNativeEditableView()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->getTitleLightColor()I

    move-result p0

    goto :goto_0

    :cond_0
    const p0, 0x7f060884

    :goto_0
    return p0
.end method
