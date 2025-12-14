.class Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarEmptyListener;


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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$4;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$4;Lt/x0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$4;->lambda$showPopupMenuForEmptySpace$0(Lt/x0;)V

    return-void
.end method

.method private synthetic lambda$showPopupMenuForEmptySpace$0(Lt/x0;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$4;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->u(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;Lt/x0;)V

    return-void
.end method

.method private showPopupMenuForEmptySpace(Landroid/graphics/Point;Landroid/view/View;)V
    .locals 9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$4;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->G(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;

    sget-object v4, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$TYPE;->BAR:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$TYPE;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$4;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->H(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Z

    move-result v7

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$4;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->g(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->isOpenInOtherWindowAvailable(Landroid/content/Context;)Z

    move-result v8

    const-wide/16 v2, 0x0

    const-string v5, ""

    move-object v1, v0

    move-object v6, p2

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;-><init>(JLcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$TYPE;Ljava/lang/String;Landroid/view/View;ZZ)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$4;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->d(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarMenuListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;->setListener(Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarMenuListener;)V

    iget p1, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$4;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->g(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {v0, p1, v1}, Lt/x0;->seslSetOffset(II)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;->show()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$4;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->u(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;Lt/x0;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$4;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->e(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lt/x0;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/main_view/a;

    const/4 v0, 0x2

    invoke-direct {p2, v0, p0}, Lcom/sec/android/app/sbrowser/main_view/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Lt/x0;->setOnDismissListener(Lt/v0;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$4;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->o(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/sbrowser/common/model/PopupMenuType;->FROM_BOOKMARK_BUTTON:Lcom/sec/android/app/sbrowser/common/model/PopupMenuType;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->onPopupMenuShown(Lcom/sec/android/app/sbrowser/common/model/PopupMenuType;)V

    return-void
.end method


# virtual methods
.method public onBookmarkLongClicked(Landroid/graphics/Point;Landroid/view/View;)V
    .locals 2

    const-string v0, "si__BookmarkBarHelper"

    const-string v1, "onBookmarkLongClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$4;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->o(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;->getScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "5807"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$4;->showPopupMenuForEmptySpace(Landroid/graphics/Point;Landroid/view/View;)V

    return-void
.end method

.method public onBookmarkTouched(Landroid/graphics/Point;Landroid/view/View;)V
    .locals 2

    const-string v0, "si__BookmarkBarHelper"

    const-string v1, "onBookmarkTouched"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$4;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->o(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;->getScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "5807"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$4;->showPopupMenuForEmptySpace(Landroid/graphics/Point;Landroid/view/View;)V

    return-void
.end method
