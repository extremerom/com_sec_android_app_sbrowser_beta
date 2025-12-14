.class public final Lcom/sec/android/app/sbrowser/search_window/utils/SuggestionSALoggingUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0013\u0008\u0007\u0018\u00002\u00020\u0001B#\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\r\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\r\u0010\u000fJ\r\u0010\u0010\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\r\u0010\u0012\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0012\u0010\u0011J\r\u0010\u0013\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0013\u0010\u0011J\r\u0010\u0014\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0014\u0010\u0011J\r\u0010\u0015\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0015\u0010\u0011R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018R\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0019\u001a\u0004\u0008\u0005\u0010\u001aR\u0017\u0010\u0007\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001dR\u0016\u0010\u001e\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u0019\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/search_window/utils/SuggestionSALoggingUtils;",
        "",
        "Landroid/content/Context;",
        "context",
        "",
        "isFromWidget",
        "Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchSuggestionItem;",
        "item",
        "<init>",
        "(Landroid/content/Context;ZLcom/sec/android/app/sbrowser/search_window/viewmodel/SearchSuggestionItem;)V",
        "",
        "eventDetail",
        "Ldb/r;",
        "sendEventLog",
        "(Ljava/lang/String;)V",
        "()V",
        "getBookmarkEventDetail",
        "()Ljava/lang/String;",
        "getHistoryEventDetail",
        "getSuggestionEventDetail",
        "getDirectSearchEventDetail",
        "getDefaultEventDetail",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "Z",
        "()Z",
        "Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchSuggestionItem;",
        "getItem",
        "()Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchSuggestionItem;",
        "isLoggingSearchEngine",
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
.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final isFromWidget:Z

.field private isLoggingSearchEngine:Z

.field private final item:Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchSuggestionItem;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchSuggestionItem;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchSuggestionItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/search_window/utils/SuggestionSALoggingUtils;-><init>(Landroid/content/Context;ZLcom/sec/android/app/sbrowser/search_window/viewmodel/SearchSuggestionItem;ILtb/f;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/sec/android/app/sbrowser/search_window/viewmodel/SearchSuggestionItem;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchSuggestionItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/utils/SuggestionSALoggingUtils;->context:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/search_window/utils/SuggestionSALoggingUtils;->isFromWidget:Z

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/search_window/utils/SuggestionSALoggingUtils;->item:Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchSuggestionItem;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;ZLcom/sec/android/app/sbrowser/search_window/viewmodel/SearchSuggestionItem;ILtb/f;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/search_window/utils/SuggestionSALoggingUtils;-><init>(Landroid/content/Context;ZLcom/sec/android/app/sbrowser/search_window/viewmodel/SearchSuggestionItem;)V

    return-void
.end method

.method private final sendEventLog(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/search_window/utils/SuggestionSALoggingUtils;->isFromWidget:Z

    if-eqz v0, :cond_0

    const-string p0, "750"

    const-string v0, "7513"

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/utils/SuggestionSALoggingUtils;->item:Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchSuggestionItem;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchSuggestionItem;->getSuggestionCount()I

    move-result p0

    int-to-long v0, p0

    const-string p0, "201"

    const-string v2, "2040"

    invoke-static {p0, v2, p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final getBookmarkEventDetail()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/search_window/utils/SuggestionSALoggingUtils;->isFromWidget:Z

    if-eqz p0, :cond_0

    const-string p0, "BOOKMARK"

    goto :goto_0

    :cond_0
    const-string p0, "5"

    :goto_0
    return-object p0
.end method

.method public final getDefaultEventDetail()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/search_window/utils/SuggestionSALoggingUtils;->isFromWidget:Z

    if-eqz p0, :cond_0

    const-string p0, "DOMAIN"

    goto :goto_0

    :cond_0
    const-string p0, "1"

    :goto_0
    return-object p0
.end method

.method public final getDirectSearchEventDetail()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/search_window/utils/SuggestionSALoggingUtils;->isFromWidget:Z

    if-eqz v0, :cond_0

    const-string p0, "DIRECT"

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/search_window/utils/SuggestionSALoggingUtils;->isLoggingSearchEngine:Z

    const-string p0, "2"

    :goto_0
    return-object p0
.end method

.method public final getHistoryEventDetail()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/search_window/utils/SuggestionSALoggingUtils;->isFromWidget:Z

    if-eqz p0, :cond_0

    const-string p0, "HISTORY"

    goto :goto_0

    :cond_0
    const-string p0, "4"

    :goto_0
    return-object p0
.end method

.method public final getSuggestionEventDetail()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/search_window/utils/SuggestionSALoggingUtils;->isFromWidget:Z

    if-eqz v0, :cond_0

    const-string p0, "SUGGESTION"

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/search_window/utils/SuggestionSALoggingUtils;->isLoggingSearchEngine:Z

    const-string p0, "3"

    :goto_0
    return-object p0
.end method

.method public final sendEventLog()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_window/utils/SuggestionSALoggingUtils;->getDefaultEventDetail()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/search_window/utils/SuggestionSALoggingUtils;->item:Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchSuggestionItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchSuggestionItem;->getTransitionType()I

    move-result v1

    sget-object v2, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;->URL_WHAT_YOU_TYPED:Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;

    invoke-virtual {v2}, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;->nativeType()I

    move-result v2

    if-eq v1, v2, :cond_7

    sget-object v2, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;->HISTORY_TITLE:Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;

    invoke-virtual {v2}, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;->nativeType()I

    move-result v2

    if-eq v1, v2, :cond_7

    sget-object v2, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;->HISTORY_BODY:Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;

    invoke-virtual {v2}, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;->nativeType()I

    move-result v2

    if-eq v1, v2, :cond_7

    sget-object v2, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;->HISTORY_KEYWORD:Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;

    invoke-virtual {v2}, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;->nativeType()I

    move-result v2

    if-eq v1, v2, :cond_7

    sget-object v2, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;->NAVSUGGEST:Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;

    invoke-virtual {v2}, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;->nativeType()I

    move-result v2

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    sget-object v2, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;->SEARCH_WHAT_YOU_TYPED:Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;

    invoke-virtual {v2}, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;->nativeType()I

    move-result v2

    if-eq v1, v2, :cond_6

    sget-object v2, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;->SEARCH_HISTORY:Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;

    invoke-virtual {v2}, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;->nativeType()I

    move-result v2

    if-eq v1, v2, :cond_6

    sget-object v2, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;->VOICE_SUGGEST:Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;

    invoke-virtual {v2}, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;->nativeType()I

    move-result v2

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;->SEARCH_SUGGEST:Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;

    invoke-virtual {v2}, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;->nativeType()I

    move-result v2

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_window/utils/SuggestionSALoggingUtils;->getSuggestionEventDetail()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    sget-object v2, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;->HISTORY_URL:Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;

    invoke-virtual {v2}, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;->nativeType()I

    move-result v2

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_window/utils/SuggestionSALoggingUtils;->getHistoryEventDetail()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    sget-object v2, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;->BOOKMARK_TITLE:Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;

    invoke-virtual {v2}, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;->nativeType()I

    move-result v2

    if-ne v1, v2, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_window/utils/SuggestionSALoggingUtils;->getBookmarkEventDetail()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    sget-object v2, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;->SEARCH_SUGGEST_ENTITY:Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;

    invoke-virtual {v2}, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;->nativeType()I

    move-result v2

    if-ne v1, v2, :cond_5

    const-string v0, "7"

    goto :goto_2

    :cond_5
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/search_window/utils/SuggestionSALoggingUtils;->isFromWidget:Z

    if-nez v1, :cond_8

    const-string v0, "1"

    goto :goto_2

    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_window/utils/SuggestionSALoggingUtils;->getDirectSearchEventDetail()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_7
    :goto_1
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/search_window/utils/SuggestionSALoggingUtils;->sendEventLog(Ljava/lang/String;)V

    :cond_8
    :goto_2
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/search_window/utils/SuggestionSALoggingUtils;->isLoggingSearchEngine:Z

    if-eqz v1, :cond_9

    new-instance v1, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/search_window/utils/SuggestionSALoggingUtils;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;-><init>(Landroid/content/Context;)V

    const-string v2, "2220"

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;->getCurrentSearchEngine()Ljava/lang/String;

    move-result-object v1

    const-string v3, "201"

    invoke-static {v3, v2, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/search_window/utils/SuggestionSALoggingUtils;->sendEventLog(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/search_window/utils/SuggestionSALoggingUtils;->isFromWidget:Z

    if-nez v1, :cond_a

    sget-object v1, Lcom/sec/android/app/sbrowser/search_window/ui/base/SearchWindowSILog;->Companion:Lcom/sec/android/app/sbrowser/search_window/ui/base/SearchWindowSILog$Companion;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/utils/SuggestionSALoggingUtils;->item:Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchSuggestionItem;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchSuggestionItem;->getGroup()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0, p0}, Lcom/sec/android/app/sbrowser/search_window/ui/base/SearchWindowSILog$Companion;->sendClick(ILjava/lang/String;Ljava/lang/String;)V

    :cond_a
    return-void
.end method
