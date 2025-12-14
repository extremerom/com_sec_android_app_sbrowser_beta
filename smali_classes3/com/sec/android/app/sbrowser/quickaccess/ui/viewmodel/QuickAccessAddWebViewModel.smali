.class public final Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel;
.super Landroidx/lifecycle/a;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008f\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t*\u0001:\u0008\u0007\u0018\u0000 J2\u00020\u0001:\u0001JB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001b\u0010\t\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0013\u001a\u00020\u00122\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0015\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u0019\u001a\u00020\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\r0\u001b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u001a\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u001b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001dR\u001d\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\r0\u001f8\u0006\u00a2\u0006\u000c\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#R#\u0010*\u001a\n %*\u0004\u0018\u00010$0$8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008&\u0010\'\u001a\u0004\u0008(\u0010)R#\u0010/\u001a\n %*\u0004\u0018\u00010+0+8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008,\u0010\'\u001a\u0004\u0008-\u0010.R\u001b\u00104\u001a\u0002008BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00081\u0010\'\u001a\u0004\u00082\u00103R\u001b\u00109\u001a\u0002058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00086\u0010\'\u001a\u0004\u00087\u00108R\u0014\u0010;\u001a\u00020:8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008;\u0010<R \u0010?\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020>0\u00070=8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008?\u0010@R \u0010A\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u001b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008A\u0010\u001dR\u0014\u0010C\u001a\u00020B8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008C\u0010DR\u001d\u0010G\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020>0\u00070=8F\u00a2\u0006\u0006\u001a\u0004\u0008E\u0010FR\u001d\u0010I\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u001f8F\u00a2\u0006\u0006\u001a\u0004\u0008H\u0010#\u00a8\u0006K"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel;",
        "Landroidx/lifecycle/a;",
        "Landroid/app/Application;",
        "application",
        "<init>",
        "(Landroid/app/Application;)V",
        "LQc/h;",
        "",
        "Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;",
        "filterHistoryItems",
        "()LQc/h;",
        "",
        "url",
        "",
        "isSharableUrl",
        "(Ljava/lang/String;)Z",
        "Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;",
        "topSuggestion",
        "Ldb/r;",
        "updateTopSuggestion",
        "(Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;)V",
        "isDataLakeNotEmpty",
        "updateDataLakeSuggestion",
        "(Z)V",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessAddWebRepository;",
        "repository",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessAddWebRepository;",
        "LQc/f0;",
        "topSuggestionExists",
        "LQc/f0;",
        "dataLakeSuggestionExists",
        "LQc/y0;",
        "popupVisibility",
        "LQc/y0;",
        "getPopupVisibility",
        "()LQc/y0;",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;",
        "kotlin.jvm.PlatformType",
        "mostVisitedSitesRepository$delegate",
        "Ldb/f;",
        "getMostVisitedSitesRepository",
        "()Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;",
        "mostVisitedSitesRepository",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;",
        "quickAccessRepository$delegate",
        "getQuickAccessRepository",
        "()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;",
        "quickAccessRepository",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository;",
        "historyRepository$delegate",
        "getHistoryRepository",
        "()Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository;",
        "historyRepository",
        "Lcom/sec/android/app/sbrowser/quickaccess/domain/usecase/UpdateFilteredMostVisitedItemsUseCase;",
        "updateFilteredMostVisitedItem$delegate",
        "getUpdateFilteredMostVisitedItem",
        "()Lcom/sec/android/app/sbrowser/quickaccess/domain/usecase/UpdateFilteredMostVisitedItemsUseCase;",
        "updateFilteredMostVisitedItem",
        "com/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel$mostVisitedListener$1",
        "mostVisitedListener",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel$mostVisitedListener$1;",
        "Landroidx/lifecycle/W;",
        "Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;",
        "_filteredMostVisitedItems",
        "Landroidx/lifecycle/W;",
        "_filteredHistoryItems",
        "Lcom/sec/android/app/sbrowser/viewmodel/MainUIEventLiveData;",
        "_uiEvent",
        "Lcom/sec/android/app/sbrowser/viewmodel/MainUIEventLiveData;",
        "getMostVisitedItems",
        "()Landroidx/lifecycle/W;",
        "mostVisitedItems",
        "getHistoryItems",
        "historyItems",
        "Companion",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final _filteredHistoryItems:LQc/f0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LQc/f0;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final _filteredMostVisitedItems:Landroidx/lifecycle/W;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/W;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final _uiEvent:Lcom/sec/android/app/sbrowser/viewmodel/MainUIEventLiveData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final dataLakeSuggestionExists:LQc/f0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LQc/f0;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final historyRepository$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mostVisitedListener:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel$mostVisitedListener$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mostVisitedSitesRepository$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final popupVisibility:LQc/y0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LQc/y0;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final quickAccessRepository$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final repository:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessAddWebRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final topSuggestionExists:LQc/f0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LQc/f0;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final updateFilteredMostVisitedItem$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel;->Companion:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 17
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "application"

    move-object/from16 v5, p1

    invoke-static {v5, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p1}, Landroidx/lifecycle/a;-><init>(Landroid/app/Application;)V

    sget-object v4, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessAddWebRepository;->Companion:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessAddWebRepository$Companion;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v4, v5, v6, v5}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessAddWebRepository$Companion;->getInstance$default(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessAddWebRepository$Companion;Landroid/content/Context;ILjava/lang/Object;)Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessAddWebRepository;

    move-result-object v4

    iput-object v4, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel;->repository:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessAddWebRepository;

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v11}, LQc/n0;->c(Ljava/lang/Object;)LQc/A0;

    move-result-object v7

    iput-object v7, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel;->topSuggestionExists:LQc/f0;

    invoke-static {v11}, LQc/n0;->c(Ljava/lang/Object;)LQc/A0;

    move-result-object v8

    iput-object v8, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel;->dataLakeSuggestionExists:LQc/f0;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessAddWebRepository;->isUrlSuggestionEnabled()LQc/h;

    move-result-object v4

    new-instance v9, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel$popupVisibility$1;

    invoke-direct {v9, v5}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel$popupVisibility$1;-><init>(Lib/c;)V

    new-array v10, v1, [LQc/h;

    aput-object v4, v10, v3

    aput-object v7, v10, v6

    aput-object v8, v10, v2

    new-instance v4, LQc/c0;

    invoke-direct {v4, v10, v9, v3}, LQc/c0;-><init>([LQc/h;Ldb/b;I)V

    invoke-static/range {p0 .. p0}, Landroidx/lifecycle/l0;->k(Landroidx/lifecycle/s0;)LNc/B;

    move-result-object v13

    const-wide/16 v7, 0x1388

    invoke-static {v2, v7, v8}, LQc/q0;->a(IJ)LQc/x0;

    move-result-object v8

    invoke-static {v4}, LQc/n0;->j(LQc/h;)LZ4/i;

    move-result-object v4

    invoke-static {v11}, LQc/n0;->c(Ljava/lang/Object;)LQc/A0;

    move-result-object v14

    iget-object v7, v4, LZ4/i;->b:Ljava/lang/Object;

    move-object v9, v7

    check-cast v9, LQc/h;

    sget-object v7, LQc/q0;->a:LQc/s0;

    invoke-virtual {v8, v7}, LQc/x0;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, LNc/D;->DEFAULT:LNc/D;

    :goto_0
    move-object v15, v7

    goto :goto_1

    :cond_0
    sget-object v7, LNc/D;->UNDISPATCHED:LNc/D;

    goto :goto_0

    :goto_1
    new-instance v12, LQc/V;

    const/16 v16, 0x0

    move-object v7, v12

    move-object v10, v14

    move-object v1, v12

    move-object/from16 v12, v16

    invoke-direct/range {v7 .. v12}, LQc/V;-><init>(LQc/r0;LQc/h;LQc/e0;Ljava/lang/Object;Lib/c;)V

    iget-object v4, v4, LZ4/i;->d:Ljava/lang/Object;

    check-cast v4, Lib/h;

    invoke-static {v13, v4, v15, v1}, LNc/E;->x(LNc/B;Lib/h;LNc/D;Lsb/n;)LNc/C0;

    new-instance v1, LQc/h0;

    invoke-direct {v1, v14}, LQc/h0;-><init>(LQc/A0;)V

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel;->popupVisibility:LQc/y0;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/i;

    invoke-direct {v1, v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/i;-><init>(I)V

    invoke-static {v1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel;->mostVisitedSitesRepository$delegate:Ldb/f;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/i;

    invoke-direct {v1, v6}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/i;-><init>(I)V

    invoke-static {v1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel;->quickAccessRepository$delegate:Ldb/f;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/i;

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/i;-><init>(I)V

    invoke-static {v1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel;->historyRepository$delegate:Ldb/f;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/q;

    invoke-direct {v1, v2, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/q;-><init>(ILjava/lang/Object;)V

    invoke-static {v1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel;->updateFilteredMostVisitedItem$delegate:Ldb/f;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel$mostVisitedListener$1;

    invoke-direct {v1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel$mostVisitedListener$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel;)V

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel;->mostVisitedListener:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel$mostVisitedListener$1;

    new-instance v1, Landroidx/lifecycle/W;

    invoke-direct {v1}, Landroidx/lifecycle/W;-><init>()V

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel;->_filteredMostVisitedItems:Landroidx/lifecycle/W;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2}, LQc/n0;->c(Ljava/lang/Object;)LQc/A0;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel;->_filteredHistoryItems:LQc/f0;

    new-instance v2, Lcom/sec/android/app/sbrowser/viewmodel/MainUIEventLiveData;

    invoke-direct {v2}, Lcom/sec/android/app/sbrowser/viewmodel/MainUIEventLiveData;-><init>()V

    iput-object v2, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel;->_uiEvent:Lcom/sec/android/app/sbrowser/viewmodel/MainUIEventLiveData;

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel;->getMostVisitedSitesRepository()Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;->getItems()Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;

    move-result-object v2

    new-instance v4, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/j;

    invoke-direct {v4, v0, v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/j;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel;I)V

    new-instance v3, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v3, v4}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel$sam$androidx_lifecycle_Observer$0;-><init>(Lsb/k;)V

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/W;->addSource(Landroidx/lifecycle/S;Landroidx/lifecycle/Y;)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel;->getQuickAccessRepository()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->getItems()Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/j;

    invoke-direct {v3, v0, v6}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/j;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel;I)V

    new-instance v4, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v4, v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel$sam$androidx_lifecycle_Observer$0;-><init>(Lsb/k;)V

    invoke-virtual {v1, v2, v4}, Landroidx/lifecycle/W;->addSource(Landroidx/lifecycle/S;Landroidx/lifecycle/Y;)V

    invoke-static/range {p0 .. p0}, Landroidx/lifecycle/l0;->k(Landroidx/lifecycle/s0;)LNc/B;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel$3;

    invoke-direct {v2, v0, v5}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel$3;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel;Lib/c;)V

    const/4 v0, 0x3

    invoke-static {v1, v5, v5, v2, v0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method

.method private static final _init_$lambda$4(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel;Ljava/util/List;)Ldb/r;
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel;->getUpdateFilteredMostVisitedItem()Lcom/sec/android/app/sbrowser/quickaccess/domain/usecase/UpdateFilteredMostVisitedItemsUseCase;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel;->_filteredMostVisitedItems:Landroidx/lifecycle/W;

    invoke-virtual {v0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel;->mostVisitedListener:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel$mostVisitedListener$1;

    const/16 v1, 0xa

    invoke-virtual {p1, v0, p0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/domain/usecase/UpdateFilteredMostVisitedItemsUseCase;->invoke(Ljava/util/List;Lcom/sec/android/app/sbrowser/quickaccess/domain/usecase/UpdateFilteredMostVisitedItemsUseCase$ItemsListener;I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method private static final _init_$lambda$5(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel;Ljava/util/List;)Ldb/r;
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel;->getUpdateFilteredMostVisitedItem()Lcom/sec/android/app/sbrowser/quickaccess/domain/usecase/UpdateFilteredMostVisitedItemsUseCase;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel;->_filteredMostVisitedItems:Landroidx/lifecycle/W;

    invoke-virtual {v0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel;->mostVisitedListener:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel$mostVisitedListener$1;

    const/16 v1, 0xa

    invoke-virtual {p1, v0, p0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/domain/usecase/UpdateFilteredMostVisitedItemsUseCase;->invoke(Ljava/util/List;Lcom/sec/android/app/sbrowser/quickaccess/domain/usecase/UpdateFilteredMostVisitedItemsUseCase$ItemsListener;I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public static final synthetic access$filterHistoryItems(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel;)LQc/h;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel;->filterHistoryItems()LQc/h;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$get_filteredHistoryItems$p(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel;)LQc/f0;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel;->_filteredHistoryItems:LQc/f0;

    return-object p0
.end method

.method public static final synthetic access$get_filteredMostVisitedItems$p(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel;)Landroidx/lifecycle/W;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel;->_filteredMostVisitedItems:Landroidx/lifecycle/W;

    return-object p0
.end method

.method public static final synthetic access$isSharableUrl(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel;->isSharableUrl(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel;->quickAccessRepository_delegate$lambda$1()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel;Ljava/util/List;)Ldb/r;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel;->_init_$lambda$4(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel;Ljava/util/List;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d()Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel;->mostVisitedSitesRepository_delegate$lambda$0()Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic e()Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel;->historyRepository_delegate$lambda$2()Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel;Ljava/util/List;)Ldb/r;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel;->_init_$lambda$5(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel;Ljava/util/List;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method private final filterHistoryItems()LQc/h;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQc/h;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel;->getHistoryRepository()Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository;->getItemsFlow()LQc/h;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel;->getQuickAccessRepository()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->getItems()Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;

    move-result-object v1

    const-string v2, "getItems(...)"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Landroidx/lifecycle/l0;->a(Landroidx/lifecycle/S;)LQc/h;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel$filterHistoryItems$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel$filterHistoryItems$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel;Lib/c;)V

    new-instance p0, LL2/l;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, LL2/l;-><init>(LQc/h;Ljava/lang/Object;Ldb/b;I)V

    return-object p0
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel;)Lcom/sec/android/app/sbrowser/quickaccess/domain/usecase/UpdateFilteredMostVisitedItemsUseCase;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel;->updateFilteredMostVisitedItem_delegate$lambda$3(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel;)Lcom/sec/android/app/sbrowser/quickaccess/domain/usecase/UpdateFilteredMostVisitedItemsUseCase;

    move-result-object p0

    return-object p0
.end method

.method private final getHistoryRepository()Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel;->historyRepository$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository;

    return-object p0
.end method

.method private final getMostVisitedSitesRepository()Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel;->mostVisitedSitesRepository$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;

    return-object p0
.end method

.method private final getQuickAccessRepository()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel;->quickAccessRepository$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    return-object p0
.end method

.method private final getUpdateFilteredMostVisitedItem()Lcom/sec/android/app/sbrowser/quickaccess/domain/usecase/UpdateFilteredMostVisitedItemsUseCase;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel;->updateFilteredMostVisitedItem$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/usecase/UpdateFilteredMostVisitedItemsUseCase;

    return-object p0
.end method

.method private static final historyRepository_delegate$lambda$2()Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository;->Companion:Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository$Companion;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository$Companion;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository;

    move-result-object v0

    return-object v0
.end method

.method private final isSharableUrl(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "quickaccess.internet.apps.samsung.com"

    invoke-static {p0, v0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isInternalUrl(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final mostVisitedSitesRepository_delegate$lambda$0()Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;

    move-result-object v0

    return-object v0
.end method

.method private static final quickAccessRepository_delegate$lambda$1()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    move-result-object v0

    return-object v0
.end method

.method private static final updateFilteredMostVisitedItem_delegate$lambda$3(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel;)Lcom/sec/android/app/sbrowser/quickaccess/domain/usecase/UpdateFilteredMostVisitedItemsUseCase;
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/domain/usecase/UpdateFilteredMostVisitedItemsUseCase;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel;->getQuickAccessRepository()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    move-result-object v1

    const-string v2, "<get-quickAccessRepository>(...)"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel;->getMostVisitedSitesRepository()Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;

    move-result-object p0

    const-string v2, "<get-mostVisitedSitesRepository>(...)"

    invoke-static {p0, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/domain/usecase/UpdateFilteredMostVisitedItemsUseCase;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;)V

    return-object v0
.end method


# virtual methods
.method public final getHistoryItems()LQc/y0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQc/y0;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel;->_filteredHistoryItems:LQc/f0;

    return-object p0
.end method

.method public final getMostVisitedItems()Landroidx/lifecycle/W;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/W;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel;->_filteredMostVisitedItems:Landroidx/lifecycle/W;

    return-object p0
.end method

.method public final getPopupVisibility()LQc/y0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQc/y0;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel;->popupVisibility:LQc/y0;

    return-object p0
.end method

.method public final updateDataLakeSuggestion(Z)V
    .locals 3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel;->dataLakeSuggestionExists:LQc/f0;

    :cond_0
    move-object v0, p0

    check-cast v0, LQc/A0;

    invoke-virtual {v0}, LQc/A0;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LQc/A0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final updateTopSuggestion(Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;)V
    .locals 3
    .param p1    # Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessAddWebViewModel;->topSuggestionExists:LQc/f0;

    :cond_0
    move-object v0, p0

    check-cast v0, LQc/A0;

    invoke-virtual {v0}, LQc/A0;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LQc/A0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method
