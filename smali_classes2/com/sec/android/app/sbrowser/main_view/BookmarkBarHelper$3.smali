.class Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$3;Lt/x0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$3;->lambda$showBookmarkBarPopupMenu$0(Lt/x0;)V

    return-void
.end method

.method private synthetic lambda$showBookmarkBarPopupMenu$0(Lt/x0;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->u(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;Lt/x0;)V

    return-void
.end method

.method private showBookmarkBarPopupMenu(JZLjava/lang/String;Landroid/view/View;)V
    .locals 9

    new-instance v8, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;

    if-eqz p3, :cond_0

    sget-object p3, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$TYPE;->FOLDER:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$TYPE;

    :goto_0
    move-object v3, p3

    goto :goto_1

    :cond_0
    sget-object p3, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$TYPE;->URL:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$TYPE;

    goto :goto_0

    :goto_1
    iget-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->H(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Z

    move-result v6

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object p3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->g(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->isOpenInOtherWindowAvailable(Landroid/content/Context;)Z

    move-result v7

    move-object v0, v8

    move-wide v1, p1

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;-><init>(JLcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$TYPE;Ljava/lang/String;Landroid/view/View;ZZ)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->d(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarMenuListener;

    move-result-object p1

    invoke-virtual {v8, p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;->setListener(Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarMenuListener;)V

    invoke-virtual {p5}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p5}, Landroid/view/View;->getHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->g(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f0701fe

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    add-int/2addr p3, p2

    invoke-virtual {v8, p1, p3}, Lt/x0;->seslSetOffset(II)V

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;->show()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p1, v8}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->u(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;Lt/x0;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->e(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lt/x0;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/main_view/a;

    const/4 p3, 0x1

    invoke-direct {p2, p3, p0}, Lcom/sec/android/app/sbrowser/main_view/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Lt/x0;->setOnDismissListener(Lt/v0;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->o(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/sbrowser/common/model/PopupMenuType;->FROM_BOOKMARK_BUTTON:Lcom/sec/android/app/sbrowser/common/model/PopupMenuType;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->onPopupMenuShown(Lcom/sec/android/app/sbrowser/common/model/PopupMenuType;)V

    return-void
.end method


# virtual methods
.method public onAddBookmarkBarButtonClicked()V
    .locals 7

    const-string v0, "si__BookmarkBarHelper"

    const-string v1, "onAddBookmarkBarButtonClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "5800"

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLogWithoutScreenID(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->n(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)J

    move-result-wide v3

    sub-long v3, v1, v3

    const-wide/16 v5, 0x3e8

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    const-string p0, "onAddBookmarkBarButtonClicked - ignored"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->A(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;J)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->o(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->addBookmarkBar()V

    return-void
.end method

.method public onBookmarkBarEnabled(Z)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->dismissBookmarkBarPopup()V

    :cond_0
    return-void
.end method

.method public onBookmarkBarItemTouched(JZLjava/lang/String;Landroid/view/View;)V
    .locals 2

    const-string v0, "si__BookmarkBarHelper"

    const-string v1, "onBookmarkBarItemTouched"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->o(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;->getScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "5809"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->o(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;->getScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "5808"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$3;->showBookmarkBarPopupMenu(JZLjava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public onBookmarkBarMoreButtonClicked(ILandroid/view/View;)V
    .locals 2

    const-string v0, "onBookmarkBarMoreButtonClicked, shownItemCount : "

    const-string v1, "si__BookmarkBarHelper"

    invoke-static {p1, v0, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->o(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;->getScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "5803"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->c(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkBarFolderController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkBarFolderController;->setAnchorView(Landroid/view/View;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->c(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkBarFolderController;

    move-result-object p2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->b(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkQueryUtil;->getBookmarkBarId(Landroid/app/Activity;)J

    move-result-wide v0

    const/4 p0, 0x1

    invoke-virtual {p2, v0, v1, p1, p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkBarFolderController;->showPopup(JIZ)V

    return-void
.end method

.method public onBookmarkItemClicked(JZLjava/lang/String;Landroid/view/View;)V
    .locals 2
    .param p5    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "onBookmarkItemClicked"

    const-string v1, "si__BookmarkBarHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->o(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p3

    invoke-interface {p3}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    move-result-object p3

    invoke-interface {p3}, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;->getScreenID()Ljava/lang/String;

    move-result-object p3

    const-string p4, "5802"

    invoke-static {p3, p4}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->e(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lt/x0;

    move-result-object p3

    if-eqz p3, :cond_0

    return-void

    :cond_0
    iget-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->c(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkBarFolderController;

    move-result-object p3

    invoke-virtual {p3, p5}, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkBarFolderController;->setAnchorView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->c(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkBarFolderController;

    move-result-object p0

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3, p3}, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkBarFolderController;->showPopup(JIZ)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->o(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;->getScreenID()Ljava/lang/String;

    move-result-object p1

    const-string p2, "5801"

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->G(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p0, "onBookmarkItemClicked, currentTab == null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 p2, 0x2

    invoke-interface {p1, p4, p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->loadUrl(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->o(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->finishEditMode()V

    :goto_0
    return-void
.end method

.method public onBookmarkItemLongClicked(JZZLjava/lang/String;Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->G(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "si__BookmarkBarHelper"

    const-string v1, "onBookmarkItemLongClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_2

    if-eqz p3, :cond_1

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p4}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->o(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p4

    invoke-interface {p4}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    move-result-object p4

    invoke-interface {p4}, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;->getScreenID()Ljava/lang/String;

    move-result-object p4

    const-string v0, "5809"

    invoke-static {p4, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p4, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p4}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->o(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p4

    invoke-interface {p4}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    move-result-object p4

    invoke-interface {p4}, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;->getScreenID()Ljava/lang/String;

    move-result-object p4

    const-string v0, "5808"

    invoke-static {p4, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$3;->showBookmarkBarPopupMenu(JZLjava/lang/String;Landroid/view/View;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->e(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lt/x0;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->e(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lt/x0;

    move-result-object p1

    invoke-virtual {p1}, Lt/x0;->dismiss()V

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->I(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->o(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;->getScreenID()Ljava/lang/String;

    move-result-object p1

    const-string p2, "5810"

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->j(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;

    move-result-object p0

    invoke-virtual {p0, p6}, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->startDrag(Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method public onFocusOutTop()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->g(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->F(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Z

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->o(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isTabBarShowingWithTwoLine()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->o(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->focusNewTabButton()Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->t(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->focusInRight()V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method
