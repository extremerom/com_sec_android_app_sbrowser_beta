.class final Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper$restoreQuickAccess$1;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper;->restoreQuickAccess(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "LNc/B;",
        "",
        "<anonymous>",
        "(LNc/B;)Z"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.sec.android.app.sbrowser.backup.QuickAccessDataHelper$restoreQuickAccess$1"
    f = "QuickAccessDataHelper.kt"
    l = {
        0x39
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $restoreDBDelegator:Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegator;

.field final synthetic $restorePath:Ljava/lang/String;

.field label:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegator;Lib/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegator;",
            "Lib/c<",
            "-",
            "Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper$restoreQuickAccess$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper$restoreQuickAccess$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper$restoreQuickAccess$1;->$restorePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper$restoreQuickAccess$1;->$restoreDBDelegator:Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegator;

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

    new-instance p1, Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper$restoreQuickAccess$1;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper$restoreQuickAccess$1;->$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper$restoreQuickAccess$1;->$restorePath:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper$restoreQuickAccess$1;->$restoreDBDelegator:Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegator;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper$restoreQuickAccess$1;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegator;Lib/c;)V

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
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper$restoreQuickAccess$1;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper$restoreQuickAccess$1;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper$restoreQuickAccess$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper$restoreQuickAccess$1;->invoke(LNc/B;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper$restoreQuickAccess$1;->label:I

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

    sget-object p1, Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper;->INSTANCE:Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper$restoreQuickAccess$1;->$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper$restoreQuickAccess$1;->$restorePath:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper$restoreQuickAccess$1;->$restoreDBDelegator:Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegator;

    iput v2, p0, Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper$restoreQuickAccess$1;->label:I

    invoke-virtual {p1, v1, v3, v4, p0}, Lcom/sec/android/app/sbrowser/backup/QuickAccessDataHelper;->migrateQuickAccessItems(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegator;Lib/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method
