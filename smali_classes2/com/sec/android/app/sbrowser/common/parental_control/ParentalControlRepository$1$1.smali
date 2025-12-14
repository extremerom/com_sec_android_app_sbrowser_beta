.class final Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository$1$1;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "\u0000\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "",
        "it",
        "Ldb/r;",
        "<anonymous>",
        "(Z)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.sec.android.app.sbrowser.common.parental_control.ParentalControlRepository$1$1"
    f = "ParentalControlRepository.kt"
    l = {
        0x56
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;Lib/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;",
            "Lib/c<",
            "-",
            "Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository$1$1;->this$0:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 0
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

    new-instance p1, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository$1$1;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository$1$1;->this$0:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;

    invoke-direct {p1, p0, p2}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository$1$1;-><init>(Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;Lib/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository$1$1;->invoke(ZLib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(ZLib/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository$1$1;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository$1$1;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository$1$1;->label:I

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

    const-string p1, "ParentalControlRepository"

    const-string v1, "observe parental control settings change"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;->Companion:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository$Companion;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository$Companion;->shouldCheckPermission()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository$1$1;->this$0:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;->getStatus()Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;

    move-result-object p1

    sget-object v1, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;->CHILD:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository$1$1;->this$0:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;

    iput v2, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository$1$1;->label:I

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;->checkPermission(Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
