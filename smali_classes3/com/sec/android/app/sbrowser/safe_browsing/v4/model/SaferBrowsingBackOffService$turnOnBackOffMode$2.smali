.class final Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService$turnOnBackOffMode$2;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;->turnOnBackOffMode(Lib/c;)Ljava/lang/Object;
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
    c = "com.sec.android.app.sbrowser.safe_browsing.v4.model.SaferBrowsingBackOffService$turnOnBackOffMode$2"
    f = "SaferBrowsingBackOffService.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;Lib/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;",
            "Lib/c<",
            "-",
            "Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService$turnOnBackOffMode$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService$turnOnBackOffMode$2;->this$0:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;

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

    new-instance p1, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService$turnOnBackOffMode$2;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService$turnOnBackOffMode$2;->this$0:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;

    invoke-direct {p1, p0, p2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService$turnOnBackOffMode$2;-><init>(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;Lib/c;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService$turnOnBackOffMode$2;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService$turnOnBackOffMode$2;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService$turnOnBackOffMode$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService$turnOnBackOffMode$2;->invoke(LNc/B;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService$turnOnBackOffMode$2;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService$turnOnBackOffMode$2;->this$0:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;->access$isWaitingTimeOver(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;)Z

    move-result p1

    sget-object v0, Ldb/r;->a:Ldb/r;

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService$turnOnBackOffMode$2;->this$0:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;->access$getRequestTry$p(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;)I

    move-result p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService$turnOnBackOffMode$2;->this$0:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;

    add-int/lit8 p1, p1, 0x1

    invoke-static {v1, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;->access$setRequestTry$p(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService$turnOnBackOffMode$2;->this$0:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;->access$getPreference$p(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService$turnOnBackOffMode$2;->this$0:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;->access$getRequestTry$p(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;->updateSBBackOffRequestTry(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService$turnOnBackOffMode$2;->this$0:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;->access$calculateWaitingTime(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;)J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;->access$setWaitingTimeMillis$p(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;J)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService$turnOnBackOffMode$2;->this$0:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;->access$getPreference$p(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService$turnOnBackOffMode$2;->this$0:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;->access$getWaitingTimeMillis$p(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;->updateSBBackOffWaitingTime(J)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService$turnOnBackOffMode$2;->this$0:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;->access$getWaitingTimeMillis$p(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;)J

    move-result-wide p0

    const-string v1, "turnOnBackOffMode: "

    const-string v2, "SaferBrowsingBackOffService"

    invoke-static {p0, p1, v1, v2}, Landroidx/recyclerview/widget/P;->k(JLjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
