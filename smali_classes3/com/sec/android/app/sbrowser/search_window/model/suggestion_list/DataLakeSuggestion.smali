.class public final Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 \'2\u00020\u0001:\u0001\'B\u0011\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ1\u0010\u0011\u001a\u00020\u000e2\u0018\u0010\u000f\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0\u000c\u0012\u0004\u0012\u00020\u000e0\u000b2\u0006\u0010\u0010\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012JK\u0010\u0017\u001a\u00020\u000e2\u0018\u0010\u000f\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0\u000c\u0012\u0004\u0012\u00020\u000e0\u000b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\r\u0010\u0019\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0019\u0010\u001aR\u0017\u0010\u001c\u001a\u00020\u001b8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001fR\u0014\u0010!\u001a\u00020 8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u001e\u0010%\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010$0#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u0010&\u00a8\u0006("
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion;",
        "",
        "LNc/x;",
        "ioDispatcher",
        "<init>",
        "(LNc/x;)V",
        "",
        "query",
        "",
        "calcDebounceDelay",
        "(Ljava/lang/String;)J",
        "Lkotlin/Function1;",
        "",
        "Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;",
        "Ldb/r;",
        "listener",
        "message",
        "onFailure",
        "(Lsb/k;Ljava/lang/String;)V",
        "",
        "size",
        "timeout",
        "debounceDelay",
        "fetchSuggestionItems",
        "(Lsb/k;Ljava/lang/String;IJJ)V",
        "stopFetchingSuggestionItems",
        "()V",
        "Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeClient;",
        "client",
        "Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeClient;",
        "getClient",
        "()Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeClient;",
        "LNc/B;",
        "backgroundScope",
        "LNc/B;",
        "Ljava/util/concurrent/atomic/AtomicReference;",
        "LNc/j0;",
        "fetchJob",
        "Ljava/util/concurrent/atomic/AtomicReference;",
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


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final backgroundScope:LNc/B;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final client:Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeClient;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private fetchJob:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "LNc/j0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion;->Companion:Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion;->$stable:I

    return-void
.end method

.method public constructor <init>(LNc/x;)V
    .locals 1
    .param p1    # LNc/x;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "ioDispatcher"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeClient;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeClient;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion;->client:Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeClient;

    invoke-static {p1}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion;->backgroundScope:LNc/B;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion;->fetchJob:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(LNc/x;ILtb/f;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, LNc/N;->c:LWc/e;

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion;-><init>(LNc/x;)V

    return-void
.end method

.method public static final synthetic access$onFailure(Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion;Lsb/k;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion;->onFailure(Lsb/k;Ljava/lang/String;)V

    return-void
.end method

.method private final calcDebounceDelay(Ljava/lang/String;)J
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    rsub-int/lit8 p0, p0, 0x3

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-long p0, p0

    const-wide/16 v0, 0x32

    mul-long/2addr p0, v0

    const-wide/16 v0, 0x64

    add-long/2addr p0, v0

    return-wide p0
.end method

.method public static synthetic fetchSuggestionItems$default(Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion;Lsb/k;Ljava/lang/String;IJJILjava/lang/Object;)V
    .locals 10

    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x5dc

    move-wide v6, v0

    goto :goto_0

    :cond_0
    move-wide v6, p4

    :goto_0
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_1

    move-object v0, p0

    move-object v1, p2

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion;->calcDebounceDelay(Ljava/lang/String;)J

    move-result-wide v2

    move-wide v8, v2

    goto :goto_1

    :cond_1
    move-object v0, p0

    move-object v1, p2

    move-wide/from16 v8, p6

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion;->fetchSuggestionItems(Lsb/k;Ljava/lang/String;IJJ)V

    return-void
.end method

.method private final onFailure(Lsb/k;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsb/k;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string p0, "Failed to fetch data from Data Lake: "

    const-string v0, "DataLakeSuggestion"

    invoke-static {p0, p2, v0}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lfb/v;->a:Lfb/v;

    invoke-interface {p1, p0}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final fetchSuggestionItems(Lsb/k;Ljava/lang/String;IJJ)V
    .locals 13
    .param p1    # Lsb/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsb/k;",
            "Ljava/lang/String;",
            "IJJ)V"
        }
    .end annotation

    move-object v10, p0

    const-string v0, "listener"

    move-object v8, p1

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "query"

    move-object v6, p2

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v11, v10, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion;->backgroundScope:LNc/B;

    new-instance v12, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion$fetchSuggestionItems$newJob$1;

    const/4 v9, 0x0

    move-object v0, v12

    move-wide/from16 v1, p6

    move-wide/from16 v3, p4

    move-object v5, p0

    move/from16 v7, p3

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion$fetchSuggestionItems$newJob$1;-><init>(JJLcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion;Ljava/lang/String;ILsb/k;Lib/c;)V

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {v11, v0, v0, v12, v1}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    move-result-object v1

    iget-object v2, v10, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion;->fetchJob:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LNc/j0;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, LNc/j0;->a(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    return-void
.end method

.method public final getClient()Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeClient;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion;->client:Lcom/sec/android/app/sbrowser/search_window/model/data_lake/client/DataLakeClient;

    return-object p0
.end method

.method public final stopFetchingSuggestionItems()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/DataLakeSuggestion;->fetchJob:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LNc/j0;

    if-eqz p0, :cond_0

    invoke-interface {p0, v0}, LNc/j0;->a(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    return-void
.end method
