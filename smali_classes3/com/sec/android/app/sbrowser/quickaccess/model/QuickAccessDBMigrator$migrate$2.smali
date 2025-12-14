.class final Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDBMigrator$migrate$2;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDBMigrator;->migrate(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModel;Lib/c;)Ljava/lang/Object;
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "LNc/B;",
        "",
        "<anonymous>",
        "(LNc/B;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.sec.android.app.sbrowser.quickaccess.model.QuickAccessDBMigrator$migrate$2"
    f = "QuickAccessDBMigrator.kt"
    l = {
        0x2f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $dao:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;

.field final synthetic $quickAccessModel:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModel;

.field label:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModel;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;Lib/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModel;",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;",
            "Lib/c<",
            "-",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDBMigrator$migrate$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDBMigrator$migrate$2;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDBMigrator$migrate$2;->$quickAccessModel:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModel;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDBMigrator$migrate$2;->$dao:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 2
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

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDBMigrator$migrate$2;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDBMigrator$migrate$2;->$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDBMigrator$migrate$2;->$quickAccessModel:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModel;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDBMigrator$migrate$2;->$dao:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDBMigrator$migrate$2;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModel;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;Lib/c;)V

    return-object p1
.end method

.method public final invoke(LNc/B;Lib/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LNc/B;",
            "Lib/c<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDBMigrator$migrate$2;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDBMigrator$migrate$2;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDBMigrator$migrate$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDBMigrator$migrate$2;->invoke(LNc/B;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const-string v0, "migrate items : "

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDBMigrator$migrate$2;->label:I

    const/4 v3, 0x1

    const-string v4, "QuickAccessDBMigrator"

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    :try_start_0
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    const-string p1, "migrate"

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    sget-object p1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDBMigrator;->INSTANCE:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDBMigrator;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDBMigrator$migrate$2;->$context:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDBMigrator$migrate$2;->$quickAccessModel:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModel;

    invoke-static {p1, v2, v5}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDBMigrator;->access$getItemsFromLegacyDB(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDBMigrator;Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModel;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDBMigrator$migrate$2;->$dao:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;

    iput v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDBMigrator$migrate$2;->label:I

    invoke-interface {v0, p1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao;->insertItems(Ljava/util/List;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_2

    return-object v1

    :cond_2
    :goto_0
    sget-object p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDBMigrator;->INSTANCE:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDBMigrator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDBMigrator;->access$onMigrationSuccess(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDBMigrator;)V

    sget-object p0, Ldb/r;->a:Ldb/r;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {p0}, LG5/y2;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "migration error : "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p0}, Ljava/lang/Integer;-><init>(I)V

    move-object p0, p1

    :goto_2
    return-object p0
.end method
