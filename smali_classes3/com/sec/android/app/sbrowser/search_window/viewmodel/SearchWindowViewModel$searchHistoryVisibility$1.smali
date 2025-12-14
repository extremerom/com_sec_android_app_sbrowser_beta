.class final synthetic Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel$searchHistoryVisibility$1;
.super Ltb/a;
.source "SourceFile"

# interfaces
.implements Lsb/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltb/a;",
        "Lsb/p;"
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

    const-string v5, "getVisibility(ZZLjava/util/List;)Z"

    const/4 v6, 0x4

    const/4 v1, 0x4

    const-class v3, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryVisibility;

    const-string v4, "getVisibility"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Ltb/a;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    check-cast p3, Ljava/util/List;

    check-cast p4, Lib/c;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel$searchHistoryVisibility$1;->invoke(ZZLjava/util/List;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(ZZLjava/util/List;Lib/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;",
            ">;",
            "Lib/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Ltb/a;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryVisibility;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->access$searchHistoryVisibility$getVisibility$2(Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryVisibility;ZZLjava/util/List;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
