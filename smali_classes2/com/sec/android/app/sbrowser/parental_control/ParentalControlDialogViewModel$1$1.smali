.class final Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel$1$1;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;-><init>(Landroid/app/Application;)V
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
    c = "com.sec.android.app.sbrowser.parental_control.ParentalControlDialogViewModel$1$1"
    f = "ParentalControlDialogViewModel.kt"
    l = {
        0x57
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $it:Ljava/lang/Integer;

.field label:I

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;Lib/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;",
            "Lib/c<",
            "-",
            "Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel$1$1;->$it:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel$1$1;->this$0:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 1
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

    new-instance p1, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel$1$1;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel$1$1;->$it:Ljava/lang/Integer;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel$1$1;->this$0:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;

    invoke-direct {p1, v0, p0, p2}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel$1$1;-><init>(Ljava/lang/Integer;Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;Lib/c;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel$1$1;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel$1$1;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel$1$1;->invoke(LNc/B;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel$1$1;->$it:Ljava/lang/Integer;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;->CHILD:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;->getValue()I

    move-result v1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v1, :cond_3

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel$1$1;->this$0:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;->access$get_shouldDismiss$p(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;)LQc/e0;

    move-result-object p1

    iput v2, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel$1$1;->label:I

    const-string v1, ""

    invoke-interface {p1, v1, p0}, LQc/e0;->emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
