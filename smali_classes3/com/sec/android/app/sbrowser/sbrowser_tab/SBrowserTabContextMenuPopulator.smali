.class public Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabContextMenuPopulator;
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
    .locals 0
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

    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->buildContextMenuInternal(Landroid/view/Menu;Landroid/content/Context;Lcom/sec/terrace/TerraceContextMenuParams;)V

    return-void
.end method

.method public getEventName(Lcom/sec/terrace/TerraceContextMenuParams;I)Ljava/lang/String;
    .locals 1
    .param p1    # Lcom/sec/terrace/TerraceContextMenuParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/sec/terrace/TerraceContextMenuParams;->getUnfilteredLinkUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isJavaScriptUrl(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {p1}, Lcom/sec/terrace/TerraceContextMenuParams;->isAnchor()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/terrace/TerraceContextMenuParams;->isImage()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    sget-object p0, Lcom/sec/android/app/sbrowser/common/constants/logging/SALoggingConstantsMap;->EVENT_MAP_CONTEXTUAL_NORMAL:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/terrace/TerraceContextMenuParams;->isAnchor()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/terrace/TerraceContextMenuParams;->isImage()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/sec/android/app/sbrowser/common/constants/logging/SALoggingConstantsMap;->EVENT_MAP_CONTEXTUAL_IMAGE:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/sec/terrace/TerraceContextMenuParams;->isImage()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p0, :cond_2

    sget-object p0, Lcom/sec/android/app/sbrowser/common/constants/logging/SALoggingConstantsMap;->EVENT_MAP_CONTEXTUAL_JAVASCRIPT:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_2
    invoke-virtual {p1}, Lcom/sec/terrace/TerraceContextMenuParams;->isVideo()Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/sec/android/app/sbrowser/common/constants/logging/SALoggingConstantsMap;->EVENT_MAP_CONTEXTUAL_VIDEO:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_3
    sget-object p0, Lcom/sec/android/app/sbrowser/common/constants/logging/SALoggingConstantsMap;->EVENT_MAP_CONTEXTUAL_IMAGE_LINK:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
