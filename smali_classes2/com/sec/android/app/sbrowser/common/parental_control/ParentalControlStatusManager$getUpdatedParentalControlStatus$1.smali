.class final Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager;->getUpdatedParentalControlStatus(Ljava/lang/Boolean;Ljava/lang/Boolean;Lsb/k;)LNc/j0;
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
    c = "com.sec.android.app.sbrowser.common.parental_control.ParentalControlStatusManager$getUpdatedParentalControlStatus$1"
    f = "ParentalControlStatusManager.kt"
    l = {
        0x4d,
        0x53,
        0x54,
        0x55,
        0x58,
        0x59
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $initialize:Lsb/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsb/k;"
        }
    .end annotation
.end field

.field final synthetic $isChildAccount:Ljava/lang/Boolean;

.field final synthetic $isMinorAccount:Ljava/lang/Boolean;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lsb/k;Ljava/lang/Boolean;Ljava/lang/Boolean;Lib/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsb/k;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Lib/c<",
            "-",
            "Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1;->$initialize:Lsb/k;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1;->$isChildAccount:Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1;->$isMinorAccount:Ljava/lang/Boolean;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 3
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

    new-instance v0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1;->$initialize:Lsb/k;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1;->$isChildAccount:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1;->$isMinorAccount:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2, p0, p2}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1;-><init>(Lsb/k;Ljava/lang/Boolean;Ljava/lang/Boolean;Lib/c;)V

    iput-object p1, v0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1;->L$0:Ljava/lang/Object;

    return-object v0
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

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1;->invoke(LNc/B;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1;->label:I

    sget-object v2, Ldb/r;->a:Ldb/r;

    const/4 v3, 0x3

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1;->L$0:Ljava/lang/Object;

    check-cast v1, LNc/H;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_2
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1;->L$1:Ljava/lang/Object;

    check-cast v1, LNc/H;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1;->L$0:Ljava/lang/Object;

    check-cast v3, LNc/H;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_4
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1;->L$2:Ljava/lang/Object;

    check-cast v1, LNc/H;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1;->L$1:Ljava/lang/Object;

    check-cast v5, LNc/H;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1;->L$0:Ljava/lang/Object;

    check-cast v6, LNc/H;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1;->L$3:Ljava/lang/Object;

    check-cast v1, LNc/H;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1;->L$2:Ljava/lang/Object;

    check-cast v5, LNc/H;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1;->L$1:Ljava/lang/Object;

    check-cast v6, LNc/H;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1;->L$0:Ljava/lang/Object;

    check-cast v7, LNc/H;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_6
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1;->L$0:Ljava/lang/Object;

    check-cast p1, LNc/B;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1$isParentalCareInstalled$1;

    invoke-direct {v1, v4}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1$isParentalCareInstalled$1;-><init>(Lib/c;)V

    invoke-static {p1, v4, v1, v3}, LNc/E;->f(LNc/B;LNc/A;Lsb/n;I)LNc/I;

    move-result-object v1

    new-instance v5, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1$isChild$1;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1;->$isChildAccount:Ljava/lang/Boolean;

    invoke-direct {v5, v6, v4}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1$isChild$1;-><init>(Ljava/lang/Boolean;Lib/c;)V

    invoke-static {p1, v4, v5, v3}, LNc/E;->f(LNc/B;LNc/A;Lsb/n;I)LNc/I;

    move-result-object v7

    new-instance v5, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1$isMinor$1;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1;->$isMinorAccount:Ljava/lang/Boolean;

    invoke-direct {v5, v6, v4}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1$isMinor$1;-><init>(Ljava/lang/Boolean;Lib/c;)V

    invoke-static {p1, v4, v5, v3}, LNc/E;->f(LNc/B;LNc/A;Lsb/n;I)LNc/I;

    move-result-object v5

    new-instance v6, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1$isSpcEnabled$1;

    invoke-direct {v6, v4}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1$isSpcEnabled$1;-><init>(Lib/c;)V

    invoke-static {p1, v4, v6, v3}, LNc/E;->f(LNc/B;LNc/A;Lsb/n;I)LNc/I;

    move-result-object v6

    new-instance v8, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1$protectLevel$1;

    invoke-direct {v8, v4}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1$protectLevel$1;-><init>(Lib/c;)V

    invoke-static {p1, v4, v8, v3}, LNc/E;->f(LNc/B;LNc/A;Lsb/n;I)LNc/I;

    move-result-object p1

    iput-object v7, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1;->L$0:Ljava/lang/Object;

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1;->L$1:Ljava/lang/Object;

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1;->L$2:Ljava/lang/Object;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1;->L$3:Ljava/lang/Object;

    const/4 v8, 0x1

    iput v8, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1;->label:I

    invoke-virtual {v1, p0}, LNc/t0;->z(Lkb/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    return-object v0

    :cond_0
    move-object v9, v1

    move-object v1, p1

    move-object p1, v9

    move-object v10, v6

    move-object v6, v5

    move-object v5, v10

    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1;->$initialize:Lsb/k;

    sget-object p1, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;->DISABLED:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;

    invoke-interface {p0, p1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :cond_1
    iput-object v6, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1;->L$0:Ljava/lang/Object;

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1;->L$1:Ljava/lang/Object;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1;->L$2:Ljava/lang/Object;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1;->L$3:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1;->label:I

    invoke-interface {v7, p0}, LNc/H;->e(Lkb/i;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;->CHILD:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;

    goto :goto_6

    :cond_3
    iput-object v5, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1;->L$1:Ljava/lang/Object;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1;->L$2:Ljava/lang/Object;

    iput v3, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1;->label:I

    invoke-interface {v6, p0}, LNc/H;->e(Lkb/i;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v3, v5

    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1;->L$0:Ljava/lang/Object;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1;->L$1:Ljava/lang/Object;

    const/4 p1, 0x4

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1;->label:I

    invoke-interface {v3, p0}, LNc/H;->e(Lkb/i;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;->SPC_MINOR:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;

    goto :goto_6

    :cond_6
    sget-object p1, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;->MINOR:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;

    goto :goto_6

    :cond_7
    iput-object v1, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1;->L$0:Ljava/lang/Object;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1;->L$1:Ljava/lang/Object;

    const/4 p1, 0x5

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1;->label:I

    invoke-interface {v3, p0}, LNc/H;->e(Lkb/i;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    :cond_8
    :goto_4
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_9

    sget-object p1, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;->SPC_ADULT:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;

    goto :goto_6

    :cond_9
    iput-object v4, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1;->L$0:Ljava/lang/Object;

    const/4 p1, 0x6

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1;->label:I

    invoke-interface {v1, p0}, LNc/H;->e(Lkb/i;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_a

    return-object v0

    :cond_a
    :goto_5
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_b

    sget-object p1, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;->DW:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;

    goto :goto_6

    :cond_b
    sget-object p1, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;->DISABLED:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;

    :goto_6
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1;->$initialize:Lsb/k;

    invoke-interface {p0, p1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;->getValue()I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ParentalControlStatusManager"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "5014"

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
