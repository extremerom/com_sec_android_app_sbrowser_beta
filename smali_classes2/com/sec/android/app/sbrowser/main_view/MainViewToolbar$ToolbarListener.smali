.class abstract Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$ToolbarListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "ToolbarListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$ToolbarListener;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$ToolbarListener;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)V

    return-void
.end method


# virtual methods
.method public getAddToAvailable()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$ToolbarListener;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->b(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->getAddToAvailable()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public isBrowsingAssistAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$ToolbarListener;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->b(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->isBrowsingAssistAvailable()Z

    move-result p0

    return p0
.end method

.method public isFindAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$ToolbarListener;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->b(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->isFindAvailable()Z

    move-result p0

    return p0
.end method

.method public isPageUsesMyanmarUnicode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$ToolbarListener;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->b(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->isPageUsesMyanmarUnicode()Z

    move-result p0

    return p0
.end method

.method public isPcVersionAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$ToolbarListener;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->b(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->isPcVersionAvailable()Z

    move-result p0

    return p0
.end method

.method public isPrintMenuAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$ToolbarListener;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->b(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->isPrintMenuAvailable()Z

    move-result p0

    return p0
.end method

.method public isReadAloudAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$ToolbarListener;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->b(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->isReadAloudAvailable()Z

    move-result p0

    return p0
.end method

.method public isReadArticlesAloudAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$ToolbarListener;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->b(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->isReadArticlesAloudAvailable()Z

    move-result p0

    return p0
.end method

.method public isRefreshMenuAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$ToolbarListener;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->b(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->isRefreshMenuAvailable()Z

    move-result p0

    return p0
.end method

.method public isResultViewShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$ToolbarListener;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->h(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isResultViewShowing()Z

    move-result p0

    return p0
.end method

.method public isShareMenuAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$ToolbarListener;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->b(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->isShareMenuAvailable()Z

    move-result p0

    return p0
.end method

.method public isSummaryAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$ToolbarListener;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->b(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->isSummaryAvailable()Z

    move-result p0

    return p0
.end method

.method public isTemporarilyAllowAdsAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$ToolbarListener;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->b(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->isTemporarilyAllowAdsAvailable()Z

    move-result p0

    return p0
.end method

.method public isZoomMenuAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$ToolbarListener;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->b(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->isZoomInOutAvailable()Z

    move-result p0

    return p0
.end method

.method public onEditModeFinished()V
    .locals 0

    return-void
.end method

.method public onToolbarButtonClicked(ILandroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$ToolbarListener;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->u(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "si__MainViewToolbar"

    const-string p1, "[CustomizeToolbar] onBottombarButtonClicked failed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$ToolbarListener;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->F(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;ILandroid/view/View;)V

    return-void
.end method

.method public onToolbarButtonLongClicked(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$ToolbarListener;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->G(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;I)Z

    move-result p0

    return p0
.end method

.method public shouldSupportReadArticleAloudMenuClickable()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$ToolbarListener;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->b(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->shouldSupportReadArticleAloudMenuClickable()Z

    move-result p0

    return p0
.end method

.method public shouldSupportSummaryMenuClickable()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$ToolbarListener;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->b(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->shouldSupportSummaryMenuClickable()Z

    move-result p0

    return p0
.end method
