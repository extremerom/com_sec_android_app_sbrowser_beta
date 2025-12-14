.class public Lcom/sec/android/app/sbrowser/webapp/WebappContextMenuPopulator;
.super Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;-><init>()V

    return-void
.end method


# virtual methods
.method public buildContextMenuInternal(Landroid/view/Menu;Landroid/content/Context;Lcom/sec/terrace/TerraceContextMenuParams;)V
    .locals 4
    .param p1    # Landroid/view/Menu;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/sec/terrace/TerraceContextMenuParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p3}, Lcom/sec/terrace/TerraceContextMenuParams;->getUnfilteredLinkUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isJavaScriptUrl(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p3}, Lcom/sec/terrace/TerraceContextMenuParams;->isImage()Z

    move-result v1

    const v2, 0x7f1403c2

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p3}, Lcom/sec/terrace/TerraceContextMenuParams;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p3}, Lcom/sec/terrace/TerraceContextMenuParams;->getLinkUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    if-nez v0, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1, v3, v2, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    const v0, 0x7f14086e

    invoke-interface {p1, v3, v2, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_3
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->buildContextMenuInternal(Landroid/view/Menu;Landroid/content/Context;Lcom/sec/terrace/TerraceContextMenuParams;)V

    iget p2, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mVisibleGroupId:I

    const/4 p3, -0x1

    if-ne p2, p3, :cond_4

    invoke-virtual {p0, p1, v2, v3}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->setMenuVisible(Landroid/view/Menu;IZ)V

    :cond_4
    const p2, 0x7f0b034f

    invoke-virtual {p0, p1, p2, v3}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->setMenuVisible(Landroid/view/Menu;IZ)V

    const p2, 0x7f0b0318

    invoke-virtual {p0, p1, p2, v3}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->setMenuVisible(Landroid/view/Menu;IZ)V

    const p2, 0x7f0b0327

    invoke-virtual {p0, p1, p2, v3}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->setMenuVisible(Landroid/view/Menu;IZ)V

    const p2, 0x7f0b033e

    invoke-virtual {p0, p1, p2, v3}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->setMenuVisible(Landroid/view/Menu;IZ)V

    const p2, 0x7f0b0326

    invoke-virtual {p0, p1, p2, v3}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->setMenuVisible(Landroid/view/Menu;IZ)V

    const p2, 0x7f0b0343

    invoke-virtual {p0, p1, p2, v3}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->setMenuVisible(Landroid/view/Menu;IZ)V

    const p2, 0x7f0b031b

    invoke-virtual {p0, p1, p2, v3}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->setMenuVisible(Landroid/view/Menu;IZ)V

    const p2, 0x7f0b0328

    invoke-virtual {p0, p1, p2, v3}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->setMenuVisible(Landroid/view/Menu;IZ)V

    const p2, 0x7f0b0315

    invoke-virtual {p0, p1, p2, v3}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->setMenuVisible(Landroid/view/Menu;IZ)V

    const p2, 0x7f0b0352

    invoke-virtual {p0, p1, p2, v3}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->setMenuVisible(Landroid/view/Menu;IZ)V

    const p2, 0x7f0b031d

    invoke-virtual {p0, p1, p2, v3}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->setMenuVisible(Landroid/view/Menu;IZ)V

    const p2, 0x7f0b0354

    invoke-virtual {p0, p1, p2, v3}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->setMenuVisible(Landroid/view/Menu;IZ)V

    const p2, 0x7f0b031e

    invoke-virtual {p0, p1, p2, v3}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->setMenuVisible(Landroid/view/Menu;IZ)V

    const p2, 0x7f0b0358

    invoke-virtual {p0, p1, p2, v3}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->setMenuVisible(Landroid/view/Menu;IZ)V

    const p2, 0x7f0b0322

    invoke-virtual {p0, p1, p2, v3}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->setMenuVisible(Landroid/view/Menu;IZ)V

    const p2, 0x7f0b0350

    invoke-virtual {p0, p1, p2, v3}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->setMenuVisible(Landroid/view/Menu;IZ)V

    const p2, 0x7f0b035b

    invoke-virtual {p0, p1, p2, v3}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->setMenuVisible(Landroid/view/Menu;IZ)V

    const p2, 0x7f0b0355

    invoke-virtual {p0, p1, p2, v3}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->setMenuVisible(Landroid/view/Menu;IZ)V

    const p2, 0x7f0b031f

    invoke-virtual {p0, p1, p2, v3}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->setMenuVisible(Landroid/view/Menu;IZ)V

    const p2, 0x7f0b0337

    invoke-virtual {p0, p1, p2, v3}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->setMenuVisible(Landroid/view/Menu;IZ)V

    const p2, 0x7f0b033a

    invoke-virtual {p0, p1, p2, v3}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->setMenuVisible(Landroid/view/Menu;IZ)V

    const p2, 0x7f0b0332

    invoke-virtual {p0, p1, p2, v3}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->setMenuVisible(Landroid/view/Menu;IZ)V

    const p2, 0x7f0b0335

    invoke-virtual {p0, p1, p2, v3}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->setMenuVisible(Landroid/view/Menu;IZ)V

    const p2, 0x7f0b0357

    invoke-virtual {p0, p1, p2, v3}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->setMenuVisible(Landroid/view/Menu;IZ)V

    const p2, 0x7f0b0321

    invoke-virtual {p0, p1, p2, v3}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->setMenuVisible(Landroid/view/Menu;IZ)V

    const p2, 0x7f0b0362

    invoke-virtual {p0, p1, p2, v3}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->setMenuVisible(Landroid/view/Menu;IZ)V

    return-void
.end method

.method public getEventName(Lcom/sec/terrace/TerraceContextMenuParams;I)Ljava/lang/String;
    .locals 0
    .param p1    # Lcom/sec/terrace/TerraceContextMenuParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p0, 0x0

    return-object p0
.end method

.method public onItemSelected(Lcom/sec/terrace/TerraceContextMenuParams;I)Z
    .locals 4
    .param p1    # Lcom/sec/terrace/TerraceContextMenuParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const v0, 0x7f0b032d

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/tab/Tab;->getTitle()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks$AddBookmarkAction;->ADD_BOOKMARK_DIRECTLY:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks$AddBookmarkAction;

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks;->bookmarkAction(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks$AddBookmarkAction;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/webapp/WebappContextMenuPopulator;->getEventName(Lcom/sec/terrace/TerraceContextMenuParams;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/context_menu/util/ContextMenuSALogging;->sendEventLogForItem(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->onItemSelected(Lcom/sec/terrace/TerraceContextMenuParams;I)Z

    move-result p0

    return p0
.end method
