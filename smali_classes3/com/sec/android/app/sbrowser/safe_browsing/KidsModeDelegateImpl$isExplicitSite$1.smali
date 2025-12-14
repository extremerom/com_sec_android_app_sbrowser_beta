.class final Lcom/sec/android/app/sbrowser/safe_browsing/KidsModeDelegateImpl$isExplicitSite$1;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/safe_browsing/KidsModeDelegateImpl;->isExplicitSite(Ljava/lang/String;)Z
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
    c = "com.sec.android.app.sbrowser.safe_browsing.KidsModeDelegateImpl$isExplicitSite$1"
    f = "KidsModeDelegateImpl.kt"
    l = {
        0x29
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $url:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/safe_browsing/KidsModeDelegateImpl;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/safe_browsing/KidsModeDelegateImpl;Ljava/lang/String;Lib/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/safe_browsing/KidsModeDelegateImpl;",
            "Ljava/lang/String;",
            "Lib/c<",
            "-",
            "Lcom/sec/android/app/sbrowser/safe_browsing/KidsModeDelegateImpl$isExplicitSite$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/KidsModeDelegateImpl$isExplicitSite$1;->this$0:Lcom/sec/android/app/sbrowser/safe_browsing/KidsModeDelegateImpl;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/safe_browsing/KidsModeDelegateImpl$isExplicitSite$1;->$url:Ljava/lang/String;

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

    new-instance p1, Lcom/sec/android/app/sbrowser/safe_browsing/KidsModeDelegateImpl$isExplicitSite$1;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/KidsModeDelegateImpl$isExplicitSite$1;->this$0:Lcom/sec/android/app/sbrowser/safe_browsing/KidsModeDelegateImpl;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/KidsModeDelegateImpl$isExplicitSite$1;->$url:Ljava/lang/String;

    invoke-direct {p1, v0, p0, p2}, Lcom/sec/android/app/sbrowser/safe_browsing/KidsModeDelegateImpl$isExplicitSite$1;-><init>(Lcom/sec/android/app/sbrowser/safe_browsing/KidsModeDelegateImpl;Ljava/lang/String;Lib/c;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/safe_browsing/KidsModeDelegateImpl$isExplicitSite$1;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/safe_browsing/KidsModeDelegateImpl$isExplicitSite$1;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/KidsModeDelegateImpl$isExplicitSite$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/safe_browsing/KidsModeDelegateImpl$isExplicitSite$1;->invoke(LNc/B;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/KidsModeDelegateImpl$isExplicitSite$1;->label:I

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

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/KidsModeDelegateImpl$isExplicitSite$1;->this$0:Lcom/sec/android/app/sbrowser/safe_browsing/KidsModeDelegateImpl;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/safe_browsing/KidsModeDelegateImpl;->access$getRepository(Lcom/sec/android/app/sbrowser/safe_browsing/KidsModeDelegateImpl;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/KidsModeDelegateImpl$isExplicitSite$1;->$url:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->findHashPrefixCollisions(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/KidsModeDelegateImpl$isExplicitSite$1;->this$0:Lcom/sec/android/app/sbrowser/safe_browsing/KidsModeDelegateImpl;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/safe_browsing/KidsModeDelegateImpl;->access$getRepository(Lcom/sec/android/app/sbrowser/safe_browsing/KidsModeDelegateImpl;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;

    move-result-object v1

    iput v2, p0, Lcom/sec/android/app/sbrowser/safe_browsing/KidsModeDelegateImpl$isExplicitSite$1;->label:I

    invoke-virtual {v1, p1, p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->findAndMatchCollision(Ljava/util/List;Lib/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Ljava/util/List;

    move-object p0, p1

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_5

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;->getThreatType()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_4

    const-string p0, "NULL"

    :cond_4
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager;->setLatestCategory(Ljava/lang/String;)V

    :cond_5
    invoke-static {}, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingSILogManager;->getInstance()Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingSILogManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingSILogManager;->onThreatDetected(Ljava/util/List;)V

    return-object v0
.end method
