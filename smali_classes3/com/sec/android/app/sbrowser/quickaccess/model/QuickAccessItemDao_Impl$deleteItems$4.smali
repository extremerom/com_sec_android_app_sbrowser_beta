.class final Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$deleteItems$4;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->deleteItems(Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLib/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkb/i;",
        "Lsb/k;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Ldb/r;",
        "<anonymous>",
        "()V"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.sec.android.app.sbrowser.quickaccess.model.QuickAccessItemDao_Impl$deleteItems$4"
    f = "QuickAccessItemDao_Impl.kt"
    l = {
        0x126
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $currentTime:J

.field final synthetic $deviceId:Ljava/lang/String;

.field final synthetic $nonSyncableUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $syncableUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLib/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J",
            "Lib/c<",
            "-",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$deleteItems$4;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$deleteItems$4;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$deleteItems$4;->$deviceId:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$deleteItems$4;->$syncableUrls:Ljava/util/List;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$deleteItems$4;->$nonSyncableUrls:Ljava/util/List;

    iput-wide p5, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$deleteItems$4;->$currentTime:J

    const/4 p1, 0x1

    invoke-direct {p0, p1, p7}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Lib/c;)Lib/c;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lib/c<",
            "*>;)",
            "Lib/c<",
            "Ldb/r;",
            ">;"
        }
    .end annotation

    new-instance v8, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$deleteItems$4;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$deleteItems$4;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$deleteItems$4;->$deviceId:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$deleteItems$4;->$syncableUrls:Ljava/util/List;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$deleteItems$4;->$nonSyncableUrls:Ljava/util/List;

    iget-wide v5, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$deleteItems$4;->$currentTime:J

    move-object v0, v8

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$deleteItems$4;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLib/c;)V

    return-object v8
.end method

.method public final invoke(Lib/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$deleteItems$4;->create(Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$deleteItems$4;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$deleteItems$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lib/c;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$deleteItems$4;->invoke(Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$deleteItems$4;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$deleteItems$4;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$deleteItems$4;->$deviceId:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$deleteItems$4;->$syncableUrls:Ljava/util/List;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$deleteItems$4;->$nonSyncableUrls:Ljava/util/List;

    iget-wide v5, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$deleteItems$4;->$currentTime:J

    iput v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$deleteItems$4;->label:I

    move-object v2, p1

    move-object v7, p0

    invoke-static/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$DefaultImpls;->deleteItems(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
