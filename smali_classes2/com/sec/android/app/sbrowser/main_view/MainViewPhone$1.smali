.class Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$TabAnimatorDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$1;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$1;->lambda$getCurrentTabBitmap$0(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private synthetic lambda$getCurrentTabBitmap$0(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Landroid/graphics/Bitmap;)V
    .locals 2

    const-string v0, "si__MainViewPhone"

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "[getCurrentTabBitmap] bitmap is captured completely"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewUtil:Lcom/sec/android/app/sbrowser/main_view/MainViewUtil;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTopMargin()I

    move-result v0

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getBottomMargin()I

    move-result p2

    invoke-virtual {p0, p3, v0, p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewUtil;->getFullscreenBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    filled-new-array {p0, p3}, [Ljava/lang/Object;

    move-result-object p0

    new-instance p2, Ljava/util/ArrayList;

    const/4 p3, 0x2

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    aget-object v1, p0, v0

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    return-void

    :cond_2
    :goto_1
    const-string p0, "[getCurrentTabBitmap] received bitmap is invalid"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBottomMargin()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getBottomMargin()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getCurrentTabBitmap(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mTabManager:Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    const/4 v2, 0x0

    const-string v3, "si__MainViewPhone"

    if-nez v1, :cond_0

    const-string p0, "[getCurrentTabBitmap] tab manager is null"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1, v2}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "[getCurrentTabBitmap] current tab is invalid"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1, v2}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string v0, "[getCurrentTabBitmap] request tab bitmap"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getBitmapHandler()Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;

    move-result-object v4

    new-instance v7, Lcom/sec/android/app/sbrowser/main_view/O;

    invoke-direct {v7, p0, p1, v6}, Lcom/sec/android/app/sbrowser/main_view/O;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$1;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    const/4 v10, 0x1

    const/4 v5, 0x1

    const-wide/16 v8, 0x1f4

    invoke-interface/range {v4 .. v10}, Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;->captureTabAsync(ILcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;JI)V

    return-void
.end method

.method public getTopMargin()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTopMargin()I

    move-result p0

    :goto_0
    return p0
.end method

.method public isMainViewShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->isMainViewShowing()Z

    move-result p0

    return p0
.end method

.method public isSplitMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isSplitMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSummarizedViewShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mMainViewAI:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->getSummarizeController()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ISummarizeController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ISummarizeController;->isSummarizedViewShowing()Z

    move-result p0

    return p0
.end method
