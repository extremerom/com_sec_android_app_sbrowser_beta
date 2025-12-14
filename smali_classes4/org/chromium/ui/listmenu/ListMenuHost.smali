.class public Lorg/chromium/ui/listmenu/ListMenuHost;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/ui/widget/AnchoredPopupWindow$LayoutObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/listmenu/ListMenuHost$PopupMenuHelper;,
        Lorg/chromium/ui/listmenu/ListMenuHost$PopupMenuShownListener;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sPopupMenuHelperForTesting:Lorg/chromium/ui/listmenu/ListMenuHost$PopupMenuHelper;


# instance fields
.field private mDelegate:Lorg/chromium/ui/listmenu/ListMenuDelegate;

.field private final mMenuHorizontalOverlapAnchor:Z

.field private mMenuMaxWidth:I

.field private final mMenuVerticalOverlapAnchor:Z

.field private mPopupListeners:Lorg/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ObserverList<",
            "Lorg/chromium/ui/listmenu/ListMenuHost$PopupMenuShownListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPopupMenu:Lorg/chromium/ui/widget/AnchoredPopupWindow;

.field private final mPositionedAtEnd:Z

.field private final mPositionedAtStart:Z

.field private mTryToFitLargestItem:Z

.field private final mView:Landroid/view/View;


# direct methods
.method public static synthetic a(Lorg/chromium/ui/listmenu/ListMenuHost;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/ui/listmenu/ListMenuHost;->lambda$initPopupWindow$1()V

    return-void
.end method

.method public static synthetic b(Lorg/chromium/ui/listmenu/ListMenuHost;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/ui/listmenu/ListMenuHost;->lambda$setDelegate$0(Landroid/view/View;)V

    return-void
.end method

.method private initPopupWindow()V
    .locals 9
    .annotation build Lorg/chromium/build/annotations/EnsuresNonNull;
    .end annotation

    iget-object v0, p0, Lorg/chromium/ui/listmenu/ListMenuHost;->mDelegate:Lorg/chromium/ui/listmenu/ListMenuDelegate;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lorg/chromium/ui/listmenu/ListMenuDelegate;->getListMenu()Lorg/chromium/ui/listmenu/ListMenu;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/tab_sync/o;

    const/16 v2, 0x19

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/tab_sync/o;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Lorg/chromium/ui/listmenu/ListMenu;->addContentViewClickRunnable(Ljava/lang/Runnable;)V

    invoke-interface {v0}, Lorg/chromium/ui/listmenu/ListMenu;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    new-instance v2, Lorg/chromium/ui/widget/AnchoredPopupWindow;

    iget-object v3, p0, Lorg/chromium/ui/listmenu/ListMenuHost;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lorg/chromium/ui/listmenu/ListMenuHost;->mView:Landroid/view/View;

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v6, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iget-object v3, p0, Lorg/chromium/ui/listmenu/ListMenuHost;->mDelegate:Lorg/chromium/ui/listmenu/ListMenuDelegate;

    iget-object v7, p0, Lorg/chromium/ui/listmenu/ListMenuHost;->mView:Landroid/view/View;

    invoke-interface {v3, v7}, Lorg/chromium/ui/listmenu/ListMenuDelegate;->getRectProvider(Landroid/view/View;)Lorg/chromium/ui/widget/RectProvider;

    move-result-object v8

    move-object v3, v2

    move-object v7, v1

    invoke-direct/range {v3 .. v8}, Lorg/chromium/ui/widget/AnchoredPopupWindow;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/view/View;Lorg/chromium/ui/widget/RectProvider;)V

    iput-object v2, p0, Lorg/chromium/ui/listmenu/ListMenuHost;->mPopupMenu:Lorg/chromium/ui/widget/AnchoredPopupWindow;

    sget-object v3, Lorg/chromium/ui/listmenu/ListMenuHost;->sPopupMenuHelperForTesting:Lorg/chromium/ui/listmenu/ListMenuHost$PopupMenuHelper;

    if-eqz v3, :cond_1

    invoke-interface {v3, v2}, Lorg/chromium/ui/listmenu/ListMenuHost$PopupMenuHelper;->injectPopupMenu(Lorg/chromium/ui/widget/AnchoredPopupWindow;)Lorg/chromium/ui/widget/AnchoredPopupWindow;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/ui/listmenu/ListMenuHost;->mPopupMenu:Lorg/chromium/ui/widget/AnchoredPopupWindow;

    :cond_1
    iget-object v2, p0, Lorg/chromium/ui/listmenu/ListMenuHost;->mPopupMenu:Lorg/chromium/ui/widget/AnchoredPopupWindow;

    iget-boolean v3, p0, Lorg/chromium/ui/listmenu/ListMenuHost;->mMenuVerticalOverlapAnchor:Z

    invoke-virtual {v2, v3}, Lorg/chromium/ui/widget/AnchoredPopupWindow;->setVerticalOverlapAnchor(Z)V

    iget-object v2, p0, Lorg/chromium/ui/listmenu/ListMenuHost;->mPopupMenu:Lorg/chromium/ui/widget/AnchoredPopupWindow;

    iget-boolean v3, p0, Lorg/chromium/ui/listmenu/ListMenuHost;->mMenuHorizontalOverlapAnchor:Z

    invoke-virtual {v2, v3}, Lorg/chromium/ui/widget/AnchoredPopupWindow;->setHorizontalOverlapAnchor(Z)V

    iget-object v2, p0, Lorg/chromium/ui/listmenu/ListMenuHost;->mPopupMenu:Lorg/chromium/ui/widget/AnchoredPopupWindow;

    iget v3, p0, Lorg/chromium/ui/listmenu/ListMenuHost;->mMenuMaxWidth:I

    invoke-virtual {v2, v3}, Lorg/chromium/ui/widget/AnchoredPopupWindow;->setMaxWidth(I)V

    iget-boolean v2, p0, Lorg/chromium/ui/listmenu/ListMenuHost;->mTryToFitLargestItem:Z

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/chromium/ui/listmenu/ListMenuHost;->mPopupMenu:Lorg/chromium/ui/widget/AnchoredPopupWindow;

    invoke-interface {v0}, Lorg/chromium/ui/listmenu/ListMenu;->getMaxItemWidth()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {v2, v0}, Lorg/chromium/ui/widget/AnchoredPopupWindow;->setDesiredContentWidth(I)V

    :cond_2
    iget-object v0, p0, Lorg/chromium/ui/listmenu/ListMenuHost;->mPopupMenu:Lorg/chromium/ui/widget/AnchoredPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/chromium/ui/widget/AnchoredPopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lorg/chromium/ui/listmenu/ListMenuHost;->mPopupMenu:Lorg/chromium/ui/widget/AnchoredPopupWindow;

    invoke-virtual {v0, v1}, Lorg/chromium/ui/widget/AnchoredPopupWindow;->setAnimateFromAnchor(Z)V

    iget-boolean v0, p0, Lorg/chromium/ui/listmenu/ListMenuHost;->mPositionedAtStart:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/chromium/ui/listmenu/ListMenuHost;->mPositionedAtEnd:Z

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lorg/chromium/ui/listmenu/ListMenuHost;->mPopupMenu:Lorg/chromium/ui/widget/AnchoredPopupWindow;

    invoke-virtual {v0, p0}, Lorg/chromium/ui/widget/AnchoredPopupWindow;->setLayoutObserver(Lorg/chromium/ui/widget/AnchoredPopupWindow$LayoutObserver;)V

    :cond_4
    iget-object v0, p0, Lorg/chromium/ui/listmenu/ListMenuHost;->mPopupMenu:Lorg/chromium/ui/widget/AnchoredPopupWindow;

    new-instance v2, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/a;

    const/4 v3, 0x4

    invoke-direct {v2, v3, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Lorg/chromium/ui/widget/AnchoredPopupWindow;->addOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object p0, p0, Lorg/chromium/ui/listmenu/ListMenuHost;->mPopupMenu:Lorg/chromium/ui/widget/AnchoredPopupWindow;

    invoke-virtual {p0, v1}, Lorg/chromium/ui/widget/AnchoredPopupWindow;->setOutsideTouchable(Z)V

    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Delegate was not set."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private synthetic lambda$initPopupWindow$1()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/ui/listmenu/ListMenuHost;->mPopupMenu:Lorg/chromium/ui/widget/AnchoredPopupWindow;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/ui/listmenu/ListMenuHost;->notifyPopupListeners(Z)V

    return-void
.end method

.method private synthetic lambda$setDelegate$0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/ui/listmenu/ListMenuHost;->showMenu()V

    return-void
.end method

.method private notifyPopupListeners(Z)V
    .locals 1

    iget-object p0, p0, Lorg/chromium/ui/listmenu/ListMenuHost;->mPopupListeners:Lorg/chromium/base/ObserverList;

    iget-object p0, p0, Lorg/chromium/base/ObserverList;->mObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/listmenu/ListMenuHost$PopupMenuShownListener;

    if-eqz p1, :cond_0

    invoke-interface {v0}, Lorg/chromium/ui/listmenu/ListMenuHost$PopupMenuShownListener;->onPopupMenuShown()V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/chromium/ui/listmenu/ListMenuHost$PopupMenuShownListener;->onPopupMenuDismissed()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/ui/listmenu/ListMenuHost;->mPopupMenu:Lorg/chromium/ui/widget/AnchoredPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/ui/widget/AnchoredPopupWindow;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/ui/listmenu/ListMenuHost;->mPopupMenu:Lorg/chromium/ui/widget/AnchoredPopupWindow;

    sget-object v1, Lorg/chromium/ui/listmenu/ListMenuHost;->sPopupMenuHelperForTesting:Lorg/chromium/ui/listmenu/ListMenuHost$PopupMenuHelper;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lorg/chromium/ui/listmenu/ListMenuHost$PopupMenuHelper;->injectPopupMenu(Lorg/chromium/ui/widget/AnchoredPopupWindow;)Lorg/chromium/ui/widget/AnchoredPopupWindow;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/ui/listmenu/ListMenuHost;->mPopupMenu:Lorg/chromium/ui/widget/AnchoredPopupWindow;

    :cond_0
    return-void
.end method

.method public onPreLayoutChange(ZIIIILandroid/graphics/Rect;)V
    .locals 0

    iget-object p2, p0, Lorg/chromium/ui/listmenu/ListMenuHost;->mPopupMenu:Lorg/chromium/ui/widget/AnchoredPopupWindow;

    invoke-static {p2}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean p2, p0, Lorg/chromium/ui/listmenu/ListMenuHost;->mPositionedAtEnd:Z

    if-eqz p2, :cond_1

    iget-object p0, p0, Lorg/chromium/ui/listmenu/ListMenuHost;->mPopupMenu:Lorg/chromium/ui/widget/AnchoredPopupWindow;

    if-eqz p1, :cond_0

    sget p1, Lorg/chromium/ui/R$style;->EndIconMenuAnim:I

    goto :goto_0

    :cond_0
    sget p1, Lorg/chromium/ui/R$style;->EndIconMenuAnimBottom:I

    :goto_0
    invoke-virtual {p0, p1}, Lorg/chromium/ui/widget/AnchoredPopupWindow;->setAnimationStyle(I)V

    goto :goto_2

    :cond_1
    iget-boolean p2, p0, Lorg/chromium/ui/listmenu/ListMenuHost;->mPositionedAtStart:Z

    if-eqz p2, :cond_3

    iget-object p0, p0, Lorg/chromium/ui/listmenu/ListMenuHost;->mPopupMenu:Lorg/chromium/ui/widget/AnchoredPopupWindow;

    if-eqz p1, :cond_2

    sget p1, Lorg/chromium/ui/R$style;->StartIconMenuAnim:I

    goto :goto_1

    :cond_2
    sget p1, Lorg/chromium/ui/R$style;->StartIconMenuAnimBottom:I

    :goto_1
    invoke-virtual {p0, p1}, Lorg/chromium/ui/widget/AnchoredPopupWindow;->setAnimationStyle(I)V

    :cond_3
    :goto_2
    return-void
.end method

.method public setDelegate(Lorg/chromium/ui/listmenu/ListMenuDelegate;Z)V
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/ui/listmenu/ListMenuHost;->dismiss()V

    iput-object p1, p0, Lorg/chromium/ui/listmenu/ListMenuHost;->mDelegate:Lorg/chromium/ui/listmenu/ListMenuDelegate;

    if-eqz p2, :cond_0

    iget-object p1, p0, Lorg/chromium/ui/listmenu/ListMenuHost;->mView:Landroid/view/View;

    new-instance p2, Lcom/sec/android/app/sbrowser/save_image/d;

    const/16 v0, 0x17

    invoke-direct {p2, v0, p0}, Lcom/sec/android/app/sbrowser/save_image/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setMenuMaxWidth(I)V
    .locals 0

    iput p1, p0, Lorg/chromium/ui/listmenu/ListMenuHost;->mMenuMaxWidth:I

    return-void
.end method

.method public showMenu()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/ui/listmenu/ListMenuHost;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/ui/listmenu/ListMenuHost;->dismiss()V

    invoke-direct {p0}, Lorg/chromium/ui/listmenu/ListMenuHost;->initPopupWindow()V

    iget-object v0, p0, Lorg/chromium/ui/listmenu/ListMenuHost;->mPopupMenu:Lorg/chromium/ui/widget/AnchoredPopupWindow;

    invoke-virtual {v0}, Lorg/chromium/ui/widget/AnchoredPopupWindow;->show()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/ui/listmenu/ListMenuHost;->notifyPopupListeners(Z)V

    return-void
.end method
