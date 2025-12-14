.class final Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$deleteItems$6;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->deleteItems(Ljava/util/List;Ljava/util/List;Lib/c;)Ljava/lang/Object;
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
    c = "com.sec.android.app.sbrowser.quickaccess.model.QuickAccessItemDao_Impl$deleteItems$6"
    f = "QuickAccessItemDao_Impl.kt"
    l = {
        0x12c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $toBeDeletedNonSyncableEntities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $toBeDeletedSyncableEntities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;Ljava/util/List;Ljava/util/List;Lib/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;",
            ">;",
            "Lib/c<",
            "-",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$deleteItems$6;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$deleteItems$6;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$deleteItems$6;->$toBeDeletedSyncableEntities:Ljava/util/List;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$deleteItems$6;->$toBeDeletedNonSyncableEntities:Ljava/util/List;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p4}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Lib/c;)Lib/c;
    .locals 3
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

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$deleteItems$6;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$deleteItems$6;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$deleteItems$6;->$toBeDeletedSyncableEntities:Ljava/util/List;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$deleteItems$6;->$toBeDeletedNonSyncableEntities:Ljava/util/List;

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$deleteItems$6;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;Ljava/util/List;Ljava/util/List;Lib/c;)V

    return-object v0
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

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$deleteItems$6;->create(Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$deleteItems$6;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$deleteItems$6;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lib/c;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$deleteItems$6;->invoke(Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$deleteItems$6;->label:I

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

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$deleteItems$6;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$deleteItems$6;->$toBeDeletedSyncableEntities:Ljava/util/List;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$deleteItems$6;->$toBeDeletedNonSyncableEntities:Ljava/util/List;

    iput v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl$deleteItems$6;->label:I

    invoke-static {p1, v1, v3, p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao$DefaultImpls;->deleteItems(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;Ljava/util/List;Ljava/util/List;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
