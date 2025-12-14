.class final synthetic Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel$quickAccessAddButtonVisibility$1;
.super Ltb/a;
.source "SourceFile"

# interfaces
.implements Lsb/q;


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
        "Lsb/q;"
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

    const-string v5, "isAddButtonVisible(ZZLjava/lang/String;Ljava/util/List;)Z"

    const/4 v6, 0x4

    const/4 v1, 0x5

    const-class v3, Lcom/sec/android/app/sbrowser/search_window/viewmodel/QuickAccessAddButtonVisibility;

    const-string v4, "isAddButtonVisible"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Ltb/a;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move-object v3, p3

    check-cast v3, Ljava/lang/String;

    move-object v4, p4

    check-cast v4, Ljava/util/List;

    move-object v5, p5

    check-cast v5, Lib/c;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel$quickAccessAddButtonVisibility$1;->invoke(ZZLjava/lang/String;Ljava/util/List;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(ZZLjava/lang/String;Ljava/util/List;Lib/c;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;",
            ">;",
            "Lib/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Ltb/a;->receiver:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/QuickAccessAddButtonVisibility;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->access$quickAccessAddButtonVisibility$isAddButtonVisible(Lcom/sec/android/app/sbrowser/search_window/viewmodel/QuickAccessAddButtonVisibility;ZZLjava/lang/String;Ljava/util/List;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
