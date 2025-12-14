.class Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageViewMainLayoutDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;


# instance fields
.field private mIsBottombarShadowVisible:Z

.field private mIsToolbarShadowVisible:Z

.field private final mPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageViewMainLayoutDelegate;->mIsToolbarShadowVisible:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageViewMainLayoutDelegate;->mIsBottombarShadowVisible:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageViewMainLayoutDelegate;->mPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    return-void
.end method


# virtual methods
.method public loadUrl(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageViewMainLayoutDelegate;->mPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->getListener()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageViewMainLayoutDelegate;->mPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->getListener()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageViewMainLayoutDelegate;->mPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->getListener()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;

    move-result-object p0

    const/4 v0, 0x2

    invoke-interface {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;->onLoadUrl(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public loadUrlInNewTab(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageViewMainLayoutDelegate;->mPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->getListener()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageViewMainLayoutDelegate;->mPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->getListener()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageViewMainLayoutDelegate;->mPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->getListener()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;->onLoadUrlInNewTab(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onBottombarShadowVisibilityChanged(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageViewMainLayoutDelegate;->mPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->getListener()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    if-nez p2, :cond_0

    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageViewMainLayoutDelegate;->mIsBottombarShadowVisible:Z

    if-ne p2, p1, :cond_0

    return-void

    :cond_0
    const-string p2, "onBottombarShadowVisibilityChanged: request visible "

    const-string v0, "QuickAccessMainLayoutDelegateImpl"

    invoke-static {p2, v0, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageViewMainLayoutDelegate;->mIsBottombarShadowVisible:Z

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageViewMainLayoutDelegate;->mPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->getListener()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageViewMainLayoutDelegate;->mPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->getListener()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;->onBottombarShadowVisibilityChanged(Z)V

    :cond_1
    return-void
.end method

.method public onBottombarVisibilityChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageViewMainLayoutDelegate;->mPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->getListener()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onBottombarVisibilityChanged: request visible "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickAccessMainLayoutDelegateImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageViewMainLayoutDelegate;->mPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->getListener()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageViewMainLayoutDelegate;->mPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->getListener()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;->onBottombarVisibilityChanged(Z)V

    :cond_0
    return-void
.end method

.method public onEditModeEntered()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageViewMainLayoutDelegate;->mPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->getListener()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageViewMainLayoutDelegate;->mPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->getListener()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;->onEditModeEntered()V

    :cond_0
    return-void
.end method

.method public onEditModeExited(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageViewMainLayoutDelegate;->mPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->getListener()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageViewMainLayoutDelegate;->mPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->getListener()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;->onEditModeExited(Z)V

    :cond_0
    return-void
.end method

.method public onReadyToShow()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageViewMainLayoutDelegate;->mPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->getListener()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageViewMainLayoutDelegate;->mPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->getListener()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;->onReadyToShow()V

    :cond_0
    return-void
.end method

.method public onScrollEnded()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageViewMainLayoutDelegate;->mPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->getListener()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageViewMainLayoutDelegate;->mPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->getListener()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;->onScrollEnded()V

    :cond_0
    return-void
.end method

.method public onScrollStarted()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageViewMainLayoutDelegate;->mPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->getListener()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageViewMainLayoutDelegate;->mPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->getListener()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;->onScrollStarted()V

    :cond_0
    return-void
.end method

.method public onToolbarShadowVisibilityChanged(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageViewMainLayoutDelegate;->mPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->getListener()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    if-nez p2, :cond_0

    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageViewMainLayoutDelegate;->mIsToolbarShadowVisible:Z

    if-ne p2, p1, :cond_0

    return-void

    :cond_0
    const-string p2, "onToolbarShadowVisibilityChanged: request visible "

    const-string v0, "QuickAccessMainLayoutDelegateImpl"

    invoke-static {p2, v0, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageViewMainLayoutDelegate;->mIsToolbarShadowVisible:Z

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageViewMainLayoutDelegate;->mPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->getListener()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageViewMainLayoutDelegate;->mPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->getListener()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;->onToolbarShadowVisibilityChanged(Z)V

    :cond_1
    return-void
.end method

.method public onToolbarVisibilityChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageViewMainLayoutDelegate;->mPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->getListener()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onToolbarVisibilityChanged: request visible "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickAccessMainLayoutDelegateImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageViewMainLayoutDelegate;->mPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->getListener()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageViewMainLayoutDelegate;->mPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->getListener()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;->onToolbarVisibilityChanged(Z)V

    :cond_0
    return-void
.end method

.method public requestUrlEditMode(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageViewMainLayoutDelegate;->mPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->getListener()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageViewMainLayoutDelegate;->mPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->getListener()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;->requestUrlEditMode(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setTranslationBottomBarY(FZ)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageViewMainLayoutDelegate;->mPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->getListener()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageViewMainLayoutDelegate;->mPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->getListener()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;->setTranslationBottomBarY(FZ)V

    :cond_0
    return-void
.end method

.method public setTranslationToolBarY(FZ)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageViewMainLayoutDelegate;->mPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->getListener()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageViewMainLayoutDelegate;->mPageView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessPageView;->getListener()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;->setTranslationToolbarY(FZ)V

    :cond_0
    return-void
.end method
