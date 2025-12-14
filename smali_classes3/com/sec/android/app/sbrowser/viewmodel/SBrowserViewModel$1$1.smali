.class final Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$1$1;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.sec.android.app.sbrowser.viewmodel.SBrowserViewModel$1$1"
    f = "SBrowserViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $minorInfo:Z

.field final synthetic $status:Ljava/lang/Integer;

.field label:I

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;Ljava/lang/Integer;ZLib/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;",
            "Ljava/lang/Integer;",
            "Z",
            "Lib/c<",
            "-",
            "Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$1$1;->this$0:Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$1$1;->$status:Ljava/lang/Integer;

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$1$1;->$minorInfo:Z

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

    new-instance p1, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$1$1;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$1$1;->this$0:Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$1$1;->$status:Ljava/lang/Integer;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$1$1;->$minorInfo:Z

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$1$1;-><init>(Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;Ljava/lang/Integer;ZLib/c;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$1$1;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$1$1;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$1$1;->invoke(LNc/B;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v0, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$1$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$1$1;->this$0:Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$1$1;->$status:Ljava/lang/Integer;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$1$1;->$minorInfo:Z

    invoke-static {p1, v0, p0}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->access$getAccountType(Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;IZ)Ljava/lang/String;

    move-result-object p0

    const-string p1, "5013"

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
