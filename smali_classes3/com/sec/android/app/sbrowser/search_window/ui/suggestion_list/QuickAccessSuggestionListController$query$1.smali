.class final synthetic Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/QuickAccessSuggestionListController$query$1;
.super Ltb/j;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/QuickAccessSuggestionListController;->query(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltb/j;",
        "Lsb/k;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const/4 v1, 0x1

    const-class v3, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/QuickAccessSuggestionListController;

    const-string v4, "onDataLakeSuggestionFetched"

    const-string v5, "onDataLakeSuggestionFetched(Ljava/util/List;)V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Ltb/i;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/QuickAccessSuggestionListController$query$1;->invoke(Ljava/util/List;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public final invoke(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;",
            ">;)V"
        }
    .end annotation

    const-string v0, "p0"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ltb/c;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/QuickAccessSuggestionListController;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/QuickAccessSuggestionListController;->access$onDataLakeSuggestionFetched(Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/QuickAccessSuggestionListController;Ljava/util/List;)V

    return-void
.end method
