.class final Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter$dispatchListUpdates$1$1;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter$dispatchListUpdates$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.sec.android.app.sbrowser.quickaccess.ui.page.QuickAccessSyncBaseAdapter$dispatchListUpdates$1$1"
    f = "QuickAccessSyncBaseAdapter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $currentUpdateCount:I

.field final synthetic $diffResult:Landroidx/recyclerview/widget/z;

.field final synthetic $updateCallback:Lsb/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsb/a;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter;


# direct methods
.method public constructor <init>(ILcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter;Lsb/a;Landroidx/recyclerview/widget/z;Lib/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter;",
            "Lsb/a;",
            "Landroidx/recyclerview/widget/z;",
            "Lib/c<",
            "-",
            "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter$dispatchListUpdates$1$1;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter$dispatchListUpdates$1$1;->$currentUpdateCount:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter$dispatchListUpdates$1$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter$dispatchListUpdates$1$1;->$updateCallback:Lsb/a;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter$dispatchListUpdates$1$1;->$diffResult:Landroidx/recyclerview/widget/z;

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

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter$dispatchListUpdates$1$1;

    iget v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter$dispatchListUpdates$1$1;->$currentUpdateCount:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter$dispatchListUpdates$1$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter$dispatchListUpdates$1$1;->$updateCallback:Lsb/a;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter$dispatchListUpdates$1$1;->$diffResult:Landroidx/recyclerview/widget/z;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter$dispatchListUpdates$1$1;-><init>(ILcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter;Lsb/a;Landroidx/recyclerview/widget/z;Lib/c;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter$dispatchListUpdates$1$1;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter$dispatchListUpdates$1$1;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter$dispatchListUpdates$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter$dispatchListUpdates$1$1;->invoke(LNc/B;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter$dispatchListUpdates$1$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter$dispatchListUpdates$1$1;->$currentUpdateCount:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter$dispatchListUpdates$1$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter;->getTotalUpdateCount()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter$dispatchListUpdates$1$1;->$updateCallback:Lsb/a;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lsb/a;->invoke()Ljava/lang/Object;

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter$dispatchListUpdates$1$1;->$diffResult:Landroidx/recyclerview/widget/z;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter$dispatchListUpdates$1$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter;->getAdapterCallback()Landroidx/recyclerview/widget/c;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/z;->b(Landroidx/recyclerview/widget/i0;)V

    :cond_1
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
