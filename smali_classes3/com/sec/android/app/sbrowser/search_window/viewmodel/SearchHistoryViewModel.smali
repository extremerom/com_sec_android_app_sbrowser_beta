.class public final Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;
.super Landroidx/lifecycle/a;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0019\u0010\u000c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n0\t\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0019\u0010\u000f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\u000e0\t\u00a2\u0006\u0004\u0008\u000f\u0010\rJ\u0015\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0015\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\r\u0010\u0017\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0017\u0010\u0008J\u0015\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0018\u0010\u0012R\u001b\u0010\u001e\u001a\u00020\u00198BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001dR\'\u0010!\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\u000e0\t8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010\u001b\u001a\u0004\u0008 \u0010\rR \u0010#\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n0\"8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\"\u0010&\u001a\u00020%8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008&\u0010\'\u001a\u0004\u0008&\u0010(\"\u0004\u0008)\u0010*\u00a8\u0006+"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;",
        "Landroidx/lifecycle/a;",
        "Landroid/app/Application;",
        "application",
        "<init>",
        "(Landroid/app/Application;)V",
        "Ldb/r;",
        "deleteOldHistory",
        "()V",
        "Landroidx/lifecycle/S;",
        "Lcom/sec/android/app/sbrowser/common/livedata/Event;",
        "Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;",
        "getHistoryItemSelectedEvent",
        "()Landroidx/lifecycle/S;",
        "",
        "getHistory",
        "item",
        "insert",
        "(Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;)V",
        "",
        "keyword",
        "delete",
        "(Ljava/lang/String;)V",
        "deleteAll",
        "onHistoryItemSelected",
        "Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository;",
        "repository$delegate",
        "Ldb/f;",
        "getRepository",
        "()Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository;",
        "repository",
        "searchHistory$delegate",
        "getSearchHistory",
        "searchHistory",
        "Landroidx/lifecycle/X;",
        "historyItemSelectedEvent",
        "Landroidx/lifecycle/X;",
        "",
        "isFromWidget",
        "Z",
        "()Z",
        "setFromWidget",
        "(Z)V",
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


# instance fields
.field private final historyItemSelectedEvent:Landroidx/lifecycle/X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/X;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isFromWidget:Z

.field private final repository$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final searchHistory$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 2
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "application"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/lifecycle/a;-><init>(Landroid/app/Application;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/a;-><init>(ILjava/lang/Object;)V

    invoke-static {v0}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;->repository$delegate:Ldb/f;

    new-instance p1, Lcom/sec/android/app/sbrowser/search_window/viewmodel/a;

    const/4 v0, 0x1

    invoke-direct {p1, v0, p0}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/a;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;->searchHistory$delegate:Ldb/f;

    new-instance p1, Landroidx/lifecycle/X;

    invoke-direct {p1}, Landroidx/lifecycle/S;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;->historyItemSelectedEvent:Landroidx/lifecycle/X;

    return-void
.end method

.method public static final synthetic access$getRepository(Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;)Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;->getRepository()Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroid/app/Application;)Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;->repository_delegate$lambda$0(Landroid/app/Application;)Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;)Landroidx/lifecycle/S;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;->searchHistory_delegate$lambda$1(Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;)Landroidx/lifecycle/S;

    move-result-object p0

    return-object p0
.end method

.method private final deleteOldHistory()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/l0;->k(Landroidx/lifecycle/s0;)LNc/B;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel$deleteOldHistory$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel$deleteOldHistory$1;-><init>(Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method

.method private final getRepository()Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;->repository$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository;

    return-object p0
.end method

.method private final getSearchHistory()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;->searchHistory$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/S;

    return-object p0
.end method

.method private static final repository_delegate$lambda$0(Landroid/app/Application;)Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository;
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository;->Companion:Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository$Companion;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p0, v1, v2, v1}, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository$Companion;->getInstance$default(Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository$Companion;Landroid/content/Context;LNc/x;ILjava/lang/Object;)Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository;

    move-result-object p0

    return-object p0
.end method

.method private static final searchHistory_delegate$lambda$1(Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;)Landroidx/lifecycle/S;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;->deleteOldHistory()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;->getRepository()Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository;->getHistory()Landroidx/lifecycle/S;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final delete(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "keyword"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/l0;->k(Landroidx/lifecycle/s0;)LNc/B;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel$delete$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel$delete$1;-><init>(Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;Ljava/lang/String;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method

.method public final deleteAll()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/l0;->k(Landroidx/lifecycle/s0;)LNc/B;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel$deleteAll$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel$deleteAll$1;-><init>(Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method

.method public final getHistory()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;->getSearchHistory()Landroidx/lifecycle/S;

    move-result-object p0

    return-object p0
.end method

.method public final getHistoryItemSelectedEvent()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;->historyItemSelectedEvent:Landroidx/lifecycle/X;

    return-object p0
.end method

.method public final insert(Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;)V
    .locals 3
    .param p1    # Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "item"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->isSaveRecentSearchesEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/l0;->k(Landroidx/lifecycle/s0;)LNc/B;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel$insert$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel$insert$1;-><init>(Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method

.method public final isFromWidget()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;->isFromWidget:Z

    return p0
.end method

.method public final onHistoryItemSelected(Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "item"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;->historyItemSelectedEvent:Landroidx/lifecycle/X;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/livedata/Event;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/common/livedata/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setFromWidget(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;->isFromWidget:Z

    return-void
.end method
