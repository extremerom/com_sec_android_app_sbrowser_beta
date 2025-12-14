.class final synthetic Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel$searchWindowMainAdapterType$4;
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

    const-string v5, "updateValue(Ljava/lang/String;Ljava/lang/String;ZLcom/sec/android/app/sbrowser/common/livedata/Event;)I"

    const/4 v6, 0x4

    const/4 v1, 0x5

    const-class v3, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowMainAdapterType;

    const-string v4, "updateValue"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Ltb/a;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    check-cast p4, Lcom/sec/android/app/sbrowser/common/livedata/Event;

    check-cast p5, Lib/c;

    invoke-virtual/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel$searchWindowMainAdapterType$4;->invoke(Ljava/lang/String;Ljava/lang/String;ZLcom/sec/android/app/sbrowser/common/livedata/Event;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Ljava/lang/String;Ljava/lang/String;ZLcom/sec/android/app/sbrowser/common/livedata/Event;Lib/c;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/sec/android/app/sbrowser/common/livedata/Event<",
            "Ljava/lang/Object;",
            ">;",
            "Lib/c<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Ltb/a;->receiver:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowMainAdapterType;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->access$searchWindowMainAdapterType$updateValue(Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowMainAdapterType;Ljava/lang/String;Ljava/lang/String;ZLcom/sec/android/app/sbrowser/common/livedata/Event;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
