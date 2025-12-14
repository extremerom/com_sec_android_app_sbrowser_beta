.class final Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1$isChild$1;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.sec.android.app.sbrowser.common.parental_control.ParentalControlStatusManager$getUpdatedParentalControlStatus$1$isChild$1"
    f = "ParentalControlStatusManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $isChildAccount:Ljava/lang/Boolean;

.field label:I


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Lib/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Lib/c<",
            "-",
            "Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1$isChild$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1$isChild$1;->$isChildAccount:Ljava/lang/Boolean;

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

    new-instance p1, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1$isChild$1;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1$isChild$1;->$isChildAccount:Ljava/lang/Boolean;

    invoke-direct {p1, p0, p2}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1$isChild$1;-><init>(Ljava/lang/Boolean;Lib/c;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1$isChild$1;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1$isChild$1;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1$isChild$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1$isChild$1;->invoke(LNc/B;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1$isChild$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager;->isEnabledByGlobalConfig()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1$isChild$1;->$isChildAccount:Ljava/lang/Boolean;

    const/4 p1, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-static {v0, p1, p0}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager;->isSupportedBySamsungAccount$default(ZILjava/lang/Object;)Z

    move-result p0

    :goto_0
    if-eqz p0, :cond_1

    move v0, p1

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
