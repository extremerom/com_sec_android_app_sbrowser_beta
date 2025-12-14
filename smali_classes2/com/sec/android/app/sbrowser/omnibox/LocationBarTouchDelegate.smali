.class public Lcom/sec/android/app/sbrowser/omnibox/LocationBarTouchDelegate;
.super Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate;
.source "SourceFile"


# instance fields
.field private final mLocationBar:Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarTouchDelegate;->mLocationBar:Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarTouchDelegate;->initializeTouchDelegates()V

    return-void
.end method

.method private initializeTouchDelegates()V
    .locals 11

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarTouchDelegate;->mLocationBar:Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070741

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarTouchDelegate;->mLocationBar:Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070743

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    add-int/2addr v0, v4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarTouchDelegate;->mLocationBar:Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070740

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarTouchDelegate;->mLocationBar:Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->getBookmarkButton()Landroid/view/View;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v5, p0

    move v7, v0

    invoke-virtual/range {v5 .. v10}, Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate;->addTouchDelegate(Landroid/view/View;IIII)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarTouchDelegate;->mLocationBar:Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->getReloadButton()Landroid/widget/ImageButton;

    move-result-object v6

    move v7, v1

    move v9, v0

    invoke-virtual/range {v5 .. v10}, Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate;->addTouchDelegate(Landroid/view/View;IIII)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarTouchDelegate;->mLocationBar:Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->getReaderButton()Landroid/widget/ImageButton;

    move-result-object v6

    move v9, v1

    invoke-virtual/range {v5 .. v10}, Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate;->addTouchDelegate(Landroid/view/View;IIII)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarTouchDelegate;->mLocationBar:Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->getPWAButton()Landroid/widget/ImageButton;

    move-result-object v6

    invoke-virtual/range {v5 .. v10}, Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate;->addTouchDelegate(Landroid/view/View;IIII)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarTouchDelegate;->mLocationBar:Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->getCopyButton()Landroid/widget/ImageButton;

    move-result-object v6

    invoke-virtual/range {v5 .. v10}, Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate;->addTouchDelegate(Landroid/view/View;IIII)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarTouchDelegate;->mLocationBar:Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->getSearchEngineButtonLayout()Landroid/widget/LinearLayout;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v6, v1

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate;->addTouchDelegate(Landroid/view/View;IIII)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarTouchDelegate;->mLocationBar:Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->getDeleteButton()Landroid/widget/ImageButton;

    move-result-object v6

    move-object v5, p0

    move v7, v1

    move v9, v0

    invoke-virtual/range {v5 .. v10}, Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate;->addTouchDelegate(Landroid/view/View;IIII)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate;->updateTouchDelegates()V

    return-void
.end method
