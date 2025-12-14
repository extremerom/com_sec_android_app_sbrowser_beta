.class final Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$1;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkb/i;",
        "Lsb/q;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00002\u000e\u0010\u0006\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004H\n\u00a2\u0006\u0004\u0008\u0008\u0010\t"
    }
    d2 = {
        "",
        "signedIn",
        "minorInfo",
        "nativeInitialized",
        "",
        "kotlin.jvm.PlatformType",
        "status",
        "Ldb/r;",
        "<anonymous>",
        "(ZZZI)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.sec.android.app.sbrowser.viewmodel.SBrowserViewModel$1"
    f = "SBrowserViewModel.kt"
    l = {
        0x90,
        0x96
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic Z$0:Z

.field synthetic Z$1:Z

.field synthetic Z$2:Z

.field label:I

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;Lib/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;",
            "Lib/c<",
            "-",
            "Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$1;->this$0:Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;

    const/4 p1, 0x5

    invoke-direct {p0, p1, p2}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    move-object v4, p4

    check-cast v4, Ljava/lang/Integer;

    move-object v5, p5

    check-cast v5, Lib/c;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$1;->invoke(ZZZLjava/lang/Integer;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(ZZZLjava/lang/Integer;Lib/c;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ",
            "Ljava/lang/Integer;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$1;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$1;->this$0:Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;

    invoke-direct {v0, p0, p5}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$1;-><init>(Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;Lib/c;)V

    iput-boolean p1, v0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$1;->Z$0:Z

    iput-boolean p2, v0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$1;->Z$1:Z

    iput-boolean p3, v0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$1;->Z$2:Z

    iput-object p4, v0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$1;->L$0:Ljava/lang/Object;

    sget-object p0, Ldb/r;->a:Ldb/r;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$1;->label:I

    sget-object v2, Ldb/r;->a:Ldb/r;

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$1;->Z$1:Z

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$1;->Z$0:Z

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$1;->L$0:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$1;->Z$0:Z

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$1;->Z$1:Z

    iget-boolean v5, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$1;->Z$2:Z

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$1;->L$0:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    if-nez v5, :cond_3

    return-object v2

    :cond_3
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$1;->this$0:Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->access$get_parentalControlUpdateRequired$p(Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;)LQc/e0;

    move-result-object v5

    new-instance v7, Ldb/p;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-direct {v7, v8, v9, v6}, Ldb/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$1;->L$0:Ljava/lang/Object;

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$1;->Z$0:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$1;->Z$1:Z

    iput v4, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$1;->label:I

    invoke-interface {v5, v7, p0}, LQc/e0;->emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_4

    return-object v0

    :cond_4
    move v4, p1

    move-object v5, v6

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$1;->this$0:Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->access$get_parentalControlViewModelStatus$p(Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;)LQc/f0;

    move-result-object p1

    new-instance v6, Lcom/sec/android/app/sbrowser/viewmodel/ParentalControlViewModelStatus$Initialized;

    invoke-direct {v6, v4, v1}, Lcom/sec/android/app/sbrowser/viewmodel/ParentalControlViewModelStatus$Initialized;-><init>(ZZ)V

    check-cast p1, LQc/A0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v6}, LQc/A0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$1;->this$0:Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->access$get_parentalControlViewModelStatus$p(Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;)LQc/f0;

    move-result-object p1

    check-cast p1, LQc/A0;

    invoke-virtual {p1}, LQc/A0;->getValue()Ljava/lang/Object;

    move-result-object p1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ParentalAccount init: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v6, "SBrowserViewModel"

    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, LNc/N;->c:LWc/e;

    new-instance v6, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$1$1;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$1;->this$0:Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;

    invoke-direct {v6, v7, v5, v1, v4}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$1$1;-><init>(Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;Ljava/lang/Integer;ZLib/c;)V

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$1;->label:I

    invoke-static {p1, v6, p0}, LNc/E;->K(Lib/h;Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_5

    return-object v0

    :cond_5
    :goto_1
    return-object v2
.end method
