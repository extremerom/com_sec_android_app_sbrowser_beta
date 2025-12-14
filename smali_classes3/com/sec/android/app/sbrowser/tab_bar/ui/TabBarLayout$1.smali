.class Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public captureTabAsyncForPreview(ILcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->i(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;)Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->captureTabAsyncForPreview(ILcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    return-void
.end method

.method public existCurrentTabInGroup(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getCurrentTabButton()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getCurrentTabButton()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getGroupName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public getFavicon(I)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->i(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;)Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->getFavicon(I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getFirstTabButtonMargin()I
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getLayoutManager()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->getFirstTabButtonMargin()D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method public getFullscreenBitmapFromCache(I)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->i(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;)Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->getFullscreenBitmapFromCache(I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getGroupColorId(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->isTabRestoring()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->i(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;)Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->getGroupColorId(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getGroupName(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->i(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;)Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->getGroupName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIndex(I)I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->i(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;)Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->i(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;)Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->isIncognitoTab(I)Z

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->getIndexByTabId(ZI)I

    move-result p0

    return p0
.end method

.method public getIndexByGroup(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->i(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;)Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->i(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;)Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->isIncognitoGroup(Ljava/lang/String;)Z

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->getIndexByGroup(ZLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getOriginalUrl(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->i(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;)Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->getOriginalUrl(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getScrollX()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarScrollView()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p0

    return p0
.end method

.method public getTabColor(I)I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->i(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;)Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->getTabColor(I)I

    move-result p0

    return p0
.end method

.method public getTabHeight()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getCurrentTabButton()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->i(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;)Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getCurrentTabButton()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getTabId()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->getTabHeight(I)I

    move-result p0

    return p0
.end method

.method public getTabWidth()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getCurrentTabButton()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->i(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;)Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getCurrentTabButton()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getTabId()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->getTabWidth(I)I

    move-result p0

    return p0
.end method

.method public getThemeManager()Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getThemeManager()Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;

    move-result-object p0

    return-object p0
.end method

.method public getTitleOrUrl(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->i(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;)Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->getTitleOrUrl(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUrl(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->i(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;)Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->getUrl(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isCurrentTab(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->i(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;)Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->isCurrentTab(I)Z

    move-result p0

    return p0
.end method

.method public isIncognitoTab(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->i(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;)Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->isIncognitoTab(I)Z

    move-result p0

    return p0
.end method

.method public isLockedTab(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->i(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;)Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->isLockedTab(I)Z

    move-result p0

    return p0
.end method

.method public isValidTab(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->i(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;)Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->isValidTab(I)Z

    move-result p0

    return p0
.end method

.method public shouldFetchFaviconFromHistory(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout$1;->this$0:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;->i(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayout;)Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;->shouldFetchFaviconFromHistory(I)Z

    move-result p0

    return p0
.end method
