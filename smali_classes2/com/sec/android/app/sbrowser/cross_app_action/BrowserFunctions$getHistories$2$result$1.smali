.class final Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$2$result$1;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions;->getHistories(Lz4/a;Lcom/google/android/appfunctions/schema/common/v1/browser/GetHistoriesParams;Lib/c;)Ljava/lang/Object;
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
    c = "com.sec.android.app.sbrowser.cross_app_action.BrowserFunctions$getHistories$2$result$1"
    f = "BrowserFunctions.kt"
    l = {
        0x136
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $appFunctionContext:Lz4/a;

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

.field final synthetic $selection:Ljava/lang/String;

.field final synthetic $selectionArgs:[Ljava/lang/String;

.field final synthetic $startTime:Ltb/v;

.field label:I


# direct methods
.method public constructor <init>(Lz4/a;Ljava/lang/String;[Ljava/lang/String;Ltb/v;Ltb/v;Ljava/util/ArrayList;Lib/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz4/a;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ltb/v;",
            "Ltb/v;",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/CrossAppBookmarkItem;",
            ">;",
            "Lib/c<",
            "-",
            "Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$2$result$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$2$result$1;->$appFunctionContext:Lz4/a;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$2$result$1;->$selection:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$2$result$1;->$selectionArgs:[Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$2$result$1;->$startTime:Ltb/v;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$2$result$1;->$endTime:Ltb/v;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$2$result$1;->$historyList:Ljava/util/ArrayList;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 8
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

    new-instance p1, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$2$result$1;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$2$result$1;->$appFunctionContext:Lz4/a;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$2$result$1;->$selection:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$2$result$1;->$selectionArgs:[Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$2$result$1;->$startTime:Ltb/v;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$2$result$1;->$endTime:Ltb/v;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$2$result$1;->$historyList:Ljava/util/ArrayList;

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$2$result$1;-><init>(Lz4/a;Ljava/lang/String;[Ljava/lang/String;Ltb/v;Ltb/v;Ljava/util/ArrayList;Lib/c;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$2$result$1;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$2$result$1;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$2$result$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$2$result$1;->invoke(LNc/B;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$2$result$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$2$result$1;->$appFunctionContext:Lz4/a;

    check-cast v2, LA4/b;

    iget-object v2, v2, LA4/b;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/sbrowser/common/constants/sites/SBrowserProviderConstants;->HISTORY_URI:Landroid/net/Uri;

    iget-object v7, v0, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$2$result$1;->$selection:Ljava/lang/String;

    iget-object v8, v0, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$2$result$1;->$selectionArgs:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_2

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "history count "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "BrowserFunctions"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    :cond_2
    sget-object v2, LNc/N;->a:LWc/f;

    sget-object v2, LUc/q;->a:LNc/w0;

    new-instance v4, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$2$result$1$2;

    iget-object v12, v0, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$2$result$1;->$startTime:Ltb/v;

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$2$result$1;->$endTime:Ltb/v;

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$2$result$1;->$historyList:Ljava/util/ArrayList;

    const/4 v15, 0x0

    move-object v10, v4

    invoke-direct/range {v10 .. v15}, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$2$result$1$2;-><init>(Landroid/database/Cursor;Ltb/v;Ltb/v;Ljava/util/ArrayList;Lib/c;)V

    iput v3, v0, Lcom/sec/android/app/sbrowser/cross_app_action/BrowserFunctions$getHistories$2$result$1;->label:I

    invoke-static {v2, v4, v0}, LNc/E;->K(Lib/h;Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_0
    sget-object v0, Ldb/r;->a:Ldb/r;

    return-object v0
.end method
