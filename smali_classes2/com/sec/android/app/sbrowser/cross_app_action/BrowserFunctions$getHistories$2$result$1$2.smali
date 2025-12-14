.class final Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$2$result$1$2;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$2$result$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkb/i;",
        "Lsb/n;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "LNc/B;",
        "Ldb/r;",
        "<anonymous>",
        "(LNc/B;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.sec.android.app.sbrowser.cross_app_action.BrowserFunctions$getHistories$2$result$1$2"
    f = "BrowserFunctions.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $cursor:Landroid/database/Cursor;

.field final synthetic $endTime:Ltb/v;

.field final synthetic $historyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/CrossAppBookmarkItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $startTime:Ltb/v;

.field label:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Ltb/v;Ltb/v;Ljava/util/ArrayList;Lib/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ltb/v;",
            "Ltb/v;",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/CrossAppBookmarkItem;",
            ">;",
            "Lib/c<",
            "-",
            "Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$2$result$1$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$2$result$1$2;->$cursor:Landroid/database/Cursor;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$2$result$1$2;->$startTime:Ltb/v;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$2$result$1$2;->$endTime:Ltb/v;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$2$result$1$2;->$historyList:Ljava/util/ArrayList;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lib/c<",
            "*>;)",
            "Lib/c<",
            "Ldb/r;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$2$result$1$2;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$2$result$1$2;->$cursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$2$result$1$2;->$startTime:Ltb/v;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$2$result$1$2;->$endTime:Ltb/v;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$2$result$1$2;->$historyList:Ljava/util/ArrayList;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$2$result$1$2;-><init>(Landroid/database/Cursor;Ltb/v;Ltb/v;Ljava/util/ArrayList;Lib/c;)V

    return-object p1
.end method

.method public final invoke(LNc/B;Lib/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LNc/B;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$2$result$1$2;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$2$result$1$2;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$2$result$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$2$result$1$2;->invoke(LNc/B;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v0, p0, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$2$result$1$2;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$2$result$1$2;->$cursor:Landroid/database/Cursor;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$2$result$1$2;->$cursor:Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$2$result$1$2;->$cursor:Landroid/database/Cursor;

    const-string v0, "url"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string p1, "getString(...)"

    invoke-static {v5, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$2$result$1$2;->$cursor:Landroid/database/Cursor;

    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$2$result$1$2;->$cursor:Landroid/database/Cursor;

    const-string v2, "date"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$2$result$1$2;->$startTime:Ltb/v;

    iget-wide v1, p1, Ltb/v;->a:J

    cmp-long p1, v1, v6

    if-gtz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$2$result$1$2;->$endTime:Ltb/v;

    iget-wide v1, p1, Ltb/v;->a:J

    cmp-long p1, v6, v1

    if-gtz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$2$result$1$2;->$historyList:Ljava/util/ArrayList;

    new-instance v8, Lcom/sec/android/app/sbrowser/common/constants/sites/CrossAppBookmarkItem;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, ""

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/common/constants/sites/CrossAppBookmarkItem;-><init>(JLjava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
