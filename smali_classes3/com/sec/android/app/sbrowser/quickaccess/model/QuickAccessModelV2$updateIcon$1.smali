.class final Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$updateIcon$1;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->updateIcon(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/Integer;ZLcom/sec/android/app/sbrowser/common/model/quickaccess/Callback;)V
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
    c = "com.sec.android.app.sbrowser.quickaccess.model.QuickAccessModelV2$updateIcon$1"
    f = "QuickAccessModelV2.kt"
    l = {
        0xd6
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $bitmapByteArray:[B

.field final synthetic $callback:Lcom/sec/android/app/sbrowser/common/model/quickaccess/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/Callback<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $dominantColor:Ljava/lang/Integer;

.field final synthetic $iconUrl:Ljava/lang/String;

.field final synthetic $url:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/Integer;Lcom/sec/android/app/sbrowser/common/model/quickaccess/Callback;Lib/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/Callback<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lib/c<",
            "-",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$updateIcon$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$updateIcon$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$updateIcon$1;->$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$updateIcon$1;->$bitmapByteArray:[B

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$updateIcon$1;->$iconUrl:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$updateIcon$1;->$dominantColor:Ljava/lang/Integer;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$updateIcon$1;->$callback:Lcom/sec/android/app/sbrowser/common/model/quickaccess/Callback;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 9
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

    new-instance v8, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$updateIcon$1;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$updateIcon$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$updateIcon$1;->$url:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$updateIcon$1;->$bitmapByteArray:[B

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$updateIcon$1;->$iconUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$updateIcon$1;->$dominantColor:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$updateIcon$1;->$callback:Lcom/sec/android/app/sbrowser/common/model/quickaccess/Callback;

    move-object v0, v8

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$updateIcon$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/Integer;Lcom/sec/android/app/sbrowser/common/model/quickaccess/Callback;Lib/c;)V

    iput-object p1, v8, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$updateIcon$1;->L$0:Ljava/lang/Object;

    return-object v8
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

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$updateIcon$1;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$updateIcon$1;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$updateIcon$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$updateIcon$1;->invoke(LNc/B;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$updateIcon$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$updateIcon$1;->L$0:Ljava/lang/Object;

    check-cast v0, LNc/B;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$updateIcon$1;->L$0:Ljava/lang/Object;

    check-cast p1, LNc/B;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$updateIcon$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->access$getQuickAccessItemDao$p(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;)Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$updateIcon$1;->$url:Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->getUniqueDeviceId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getUniqueDeviceId(...)"

    invoke-static {v4, v5}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$updateIcon$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$updateIcon$1;->label:I

    invoke-interface {v1, v3, v4, p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;->getItem(Ljava/lang/String;Ljava/lang/String;Lib/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$updateIcon$1;->$bitmapByteArray:[B

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$updateIcon$1;->$iconUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$updateIcon$1;->$dominantColor:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$updateIcon$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$updateIcon$1;->$callback:Lcom/sec/android/app/sbrowser/common/model/quickaccess/Callback;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->setTouchIcon([B)V

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->setTouchIconUrl(Ljava/lang/String;)V

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;->setDominant(I)V

    :cond_3
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->access$getContext$p(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntityKt;->insertSyncFieldsOnUpdate(Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;J)V

    :try_start_0
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->access$getQuickAccessItemDao$p(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;)Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;->updateItem(Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;)I

    if-eqz p0, :cond_4

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/Callback;->onResult(Ljava/lang/Object;)V

    :cond_4
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->access$requestLocalSync(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    if-eqz p0, :cond_6

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/Callback;->onResult(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2$updateIcon$1;->$callback:Lcom/sec/android/app/sbrowser/common/model/quickaccess/Callback;

    if-eqz p0, :cond_6

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/Callback;->onResult(Ljava/lang/Object;)V

    :cond_6
    :goto_1
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
