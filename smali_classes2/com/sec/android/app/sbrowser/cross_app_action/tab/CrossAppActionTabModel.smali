.class public final Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001d\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\u000c\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\'\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J+\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J+\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0006H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u0018J!\u0010\u001f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0017\u0010\"\u001a\u00020!2\u0006\u0010\u001d\u001a\u00020\u001cH\u0002\u00a2\u0006\u0004\u0008\"\u0010#J#\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u00062\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008$\u0010%J\u001d\u0010\'\u001a\u00020&2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\n\u00a2\u0006\u0004\u0008\'\u0010(R\u001a\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00070)8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008*\u0010+\u00a8\u0006,"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabModel;",
        "",
        "<init>",
        "()V",
        "Lcom/google/android/appfunctions/schema/common/v1/browser/FindTabsParams;",
        "findTabsParams",
        "",
        "Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabState;",
        "findTabsByQuery",
        "(Lcom/google/android/appfunctions/schema/common/v1/browser/FindTabsParams;)Ljava/util/List;",
        "",
        "receivedCount",
        "reviseMaxCount",
        "(I)I",
        "",
        "url",
        "title",
        "inputQuery",
        "",
        "matchWithQuery",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z",
        "stateList",
        "Lcom/google/android/appfunctions/schema/common/v1/browser/Tab;",
        "createTabListFromFile",
        "(Lcom/google/android/appfunctions/schema/common/v1/browser/FindTabsParams;Ljava/util/List;)Ljava/util/List;",
        "Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;",
        "tabList",
        "createTabListFromTabManager",
        "Landroid/content/Context;",
        "context",
        "tabId",
        "findTabUrlById",
        "(Landroid/content/Context;I)Ljava/lang/String;",
        "Ldb/r;",
        "readAllTabs",
        "(Landroid/content/Context;)V",
        "findTabs",
        "(Landroid/content/Context;Lcom/google/android/appfunctions/schema/common/v1/browser/FindTabsParams;)Ljava/util/List;",
        "Landroid/app/PendingIntent;",
        "showTab",
        "(Landroid/content/Context;I)Landroid/app/PendingIntent;",
        "Ljava/util/LinkedList;",
        "crossAppActionTabList",
        "Ljava/util/LinkedList;",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final crossAppActionTabList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabState;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabModel;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabModel;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabModel;->INSTANCE:Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabModel;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabModel;->crossAppActionTabList:Ljava/util/LinkedList;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabModel;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCrossAppActionTabList$p()Ljava/util/LinkedList;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabModel;->crossAppActionTabList:Ljava/util/LinkedList;

    return-object v0
.end method

.method private final createTabListFromFile(Lcom/google/android/appfunctions/schema/common/v1/browser/FindTabsParams;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/appfunctions/schema/common/v1/browser/FindTabsParams;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabState;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/android/appfunctions/schema/common/v1/browser/Tab;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabState;

    new-instance v1, Lcom/google/android/appfunctions/schema/common/v1/types/Uri;

    iget-object v2, p1, Lcom/google/android/appfunctions/schema/common/v1/browser/FindTabsParams;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabState;->getUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/appfunctions/schema/common/v1/browser/FindTabsParams;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v4, v3}, Lcom/google/android/appfunctions/schema/common/v1/types/Uri;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/appfunctions/schema/common/v1/browser/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabState;->getTabId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabState;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p1, Lcom/google/android/appfunctions/schema/common/v1/browser/FindTabsParams;->a:Ljava/lang/String;

    invoke-direct {v2, v4, v3, v0, v1}, Lcom/google/android/appfunctions/schema/common/v1/browser/Tab;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/appfunctions/schema/common/v1/types/Uri;)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private final createTabListFromTabManager(Lcom/google/android/appfunctions/schema/common/v1/browser/FindTabsParams;Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/appfunctions/schema/common/v1/browser/FindTabsParams;",
            "Ljava/util/List<",
            "+",
            "Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/android/appfunctions/schema/common/v1/browser/Tab;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p1, Lcom/google/android/appfunctions/schema/common/v1/browser/FindTabsParams;->c:Ljava/lang/String;

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    iget v3, p1, Lcom/google/android/appfunctions/schema/common/v1/browser/FindTabsParams;->d:I

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabModel;->reviseMaxCount(I)I

    move-result v3

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "getTitle(...)"

    const-string v6, "getUrl(...)"

    if-eqz v4, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v7, v6, v2}, Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabModel;->matchWithQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {v3, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 p2, 0x0

    invoke-interface {v1, p2, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    new-instance v1, Lcom/google/android/appfunctions/schema/common/v1/types/Uri;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p1, Lcom/google/android/appfunctions/schema/common/v1/browser/FindTabsParams;->a:Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/appfunctions/schema/common/v1/browser/FindTabsParams;->b:Ljava/lang/String;

    invoke-direct {v1, v3, v4, v2}, Lcom/google/android/appfunctions/schema/common/v1/types/Uri;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/appfunctions/schema/common/v1/browser/Tab;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v5}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3, v4, p2, v1}, Lcom/google/android/appfunctions/schema/common/v1/browser/Tab;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/appfunctions/schema/common/v1/types/Uri;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method private final findTabUrlById(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->get(I)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabModel;->readAllTabs(Landroid/content/Context;)V

    sget-object p0, Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabModel;->crossAppActionTabList:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string p1, "iterator(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "next(...)"

    invoke-static {p1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabState;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabState;->getTabId()I

    move-result v0

    if-ne v0, p2, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabState;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getActivityByInstanceId(I)Landroid/app/Activity;

    move-result-object p0

    if-nez p0, :cond_3

    return-object v1

    :cond_3
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabList(Z)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v0

    if-ne v0, p2, :cond_4

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    return-object v1

    :cond_6
    new-instance p0, Lz4/d;

    const/16 p1, 0x3ea

    const-string p2, "Not supported in Secret Mode"

    invoke-direct {p0, p1, p2}, Lz4/d;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method private final findTabsByQuery(Lcom/google/android/appfunctions/schema/common/v1/browser/FindTabsParams;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/appfunctions/schema/common/v1/browser/FindTabsParams;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabState;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p1, Lcom/google/android/appfunctions/schema/common/v1/browser/FindTabsParams;->c:Ljava/lang/String;

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    iget p1, p1, Lcom/google/android/appfunctions/schema/common/v1/browser/FindTabsParams;->d:I

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabModel;->reviseMaxCount(I)I

    move-result p1

    sget-object v2, Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabModel;->crossAppActionTabList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-string v3, "iterator(...)"

    invoke-static {v2, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "next(...)"

    invoke-static {v3, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabState;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabState;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabState;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5, v1}, Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabModel;->matchWithQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 p1, 0x0

    invoke-interface {v0, p1, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final matchWithQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {p3}, LKc/k;->Q(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p3, "%"

    const-string v1, "\\%"

    invoke-static {p0, p3, v1}, LKc/r;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "quote(...)"

    invoke-static {p3, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, " "

    const-string v2, "\\E\\s?\\Q"

    invoke-static {p3, v1, v2}, LKc/r;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "(?i)"

    invoke-virtual {v1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isKorea()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p3, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p0

    :cond_1
    invoke-static {p2, p0}, Lcom/sec/android/app/sbrowser/common/utils/decoder/StringUtils;->containsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/utils/decoder/StringUtils;->containsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method private final readAllTabs(Landroid/content/Context;)V
    .locals 1

    new-instance p0, Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabStateReader;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabStateReader;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabModel;->crossAppActionTabList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    const/4 p1, 0x1

    const-string v0, "tab_state"

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabStateReader;->setFile(ILjava/lang/String;)Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabStateReader;

    move-result-object p0

    new-instance p1, Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabModel$readAllTabs$1;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabModel$readAllTabs$1;-><init>()V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabStateReader;->setCallback(Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabStateReader$OnTabStateReadCallback;)Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabStateReader;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabStateReader;->read()V

    return-void
.end method

.method private final reviseMaxCount(I)I
    .locals 0

    const/16 p0, 0x1e

    if-le p1, p0, :cond_0

    move p1, p0

    :cond_0
    return p1
.end method


# virtual methods
.method public final findTabs(Landroid/content/Context;Lcom/google/android/appfunctions/schema/common/v1/browser/FindTabsParams;)Ljava/util/List;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/appfunctions/schema/common/v1/browser/FindTabsParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/appfunctions/schema/common/v1/browser/FindTabsParams;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/appfunctions/schema/common/v1/browser/Tab;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "findTabsParams"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p2, Lcom/google/android/appfunctions/schema/common/v1/browser/FindTabsParams;->c:Ljava/lang/String;

    const/16 v1, 0x3e9

    if-eqz v0, :cond_4

    iget v0, p2, Lcom/google/android/appfunctions/schema/common/v1/browser/FindTabsParams;->d:I

    if-lez v0, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->get(I)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabModel;->readAllTabs(Landroid/content/Context;)V

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabModel;->findTabsByQuery(Lcom/google/android/appfunctions/schema/common/v1/browser/FindTabsParams;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabModel;->createTabListFromFile(Lcom/google/android/appfunctions/schema/common/v1/browser/FindTabsParams;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getActivityByInstanceId(I)Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_1
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabList(Z)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabModel;->createTabListFromTabManager(Lcom/google/android/appfunctions/schema/common/v1/browser/FindTabsParams;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Lz4/d;

    const/16 p1, 0x3ea

    const-string p2, "Not supported in Secret Mode"

    invoke-direct {p0, p1, p2}, Lz4/d;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lz4/d;

    const-string p1, "Invalid Max Count: "

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lz4/d;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Lz4/d;

    const-string p1, "Invalid Argument"

    invoke-direct {p0, v1, p1}, Lz4/d;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public final showTab(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabModel;->findTabUrlById(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_0
    const/4 p0, 0x0

    const/4 v0, 0x0

    const/high16 v1, 0x4000000

    invoke-static {p1, v0, p2, v1, p0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object p0

    const-string p1, "getActivity(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    new-instance p0, Lz4/d;

    const/16 p1, 0x5dc

    const-string p2, "Invalid Tab ID"

    invoke-direct {p0, p1, p2}, Lz4/d;-><init>(ILjava/lang/String;)V

    throw p0
.end method
