.class public Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsAdapter;
.super Landroidx/recyclerview/widget/u0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsAdapter$ContentsViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/u0;"
    }
.end annotation


# instance fields
.field private mListener:Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowListener;

.field private mQuickAccessLayout:Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsLayout;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowListener;)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/u0;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsAdapter;->mListener:Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowListener;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsAdapter$ContentsViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsAdapter;->onBindViewHolder(Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsAdapter$ContentsViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsAdapter$ContentsViewHolder;I)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsAdapter$ContentsViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/h1;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsAdapter$ContentsViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsAdapter$ContentsViewHolder;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const p2, 0x7f0e05a5

    const/4 v0, 0x0

    invoke-static {p1, p2, p1, v0}, Landroidx/recyclerview/widget/P;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsLayout;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsAdapter;->mQuickAccessLayout:Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsLayout;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsAdapter;->mListener:Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowListener;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsLayout;->setListener(Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowListener;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsAdapter$ContentsViewHolder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsAdapter;->mQuickAccessLayout:Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsLayout;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsAdapter$ContentsViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public requestFocusToBottomLayer()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsAdapter;->mQuickAccessLayout:Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsLayout;->requestFocusToBottomLayer()Z

    move-result p0

    return p0
.end method
