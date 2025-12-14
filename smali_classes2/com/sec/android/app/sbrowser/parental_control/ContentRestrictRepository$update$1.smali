.class final Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository$update$1;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository;->update()V
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
    c = "com.sec.android.app.sbrowser.parental_control.ContentRestrictRepository$update$1"
    f = "ContentRestrictRepository.kt"
    l = {
        0x46
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I


# direct methods
.method public constructor <init>(Lib/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lib/c<",
            "-",
            "Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository$update$1;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lkb/i;-><init>(ILib/c;)V

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

    new-instance p0, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository$update$1;

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository$update$1;-><init>(Lib/c;)V

    return-object p0
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

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository$update$1;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository$update$1;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository$update$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository$update$1;->invoke(LNc/B;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository$update$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    check-cast p1, Ldb/m;

    iget-object p0, p1, Ldb/m;->a:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    sget-object p1, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository;->INSTANCE:Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository;

    iput v2, p0, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository$update$1;->label:I

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository;->access$fetchParentalControlData-IoAF18A(Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    instance-of p1, p0, Ldb/l;

    const-string v0, "ContentRestrictRepository"

    if-nez p1, :cond_4

    move-object p1, p0

    check-cast p1, Landroid/os/Bundle;

    invoke-static {}, Lcom/sec/android/app/sbrowser/parental_control/ContentRestrictRepository;->access$getParentalControlData$p()Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;->getProtectLevelWithoutUpdate()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "websites_selected"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "fetchProtectionLevel(): protectLevel: "

    invoke-static {v2, v3, v0}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;->saveParentalControlData(Landroid/os/Bundle;)V

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq v2, p1, :cond_4

    :goto_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->onContentRestrictDataUpdated()V

    :cond_4
    invoke-static {p0}, Ldb/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "fetchProtectionLevel(): failed to get protectLevel "

    invoke-static {p1, p0, v0}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;->resetParentalControlData()V

    :cond_5
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
