.class final Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQc/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LQc/i;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$1$2;->this$0:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$1$2;->emit(ZLib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final emit(ZLib/c;)Ljava/lang/Object;
    .locals 2
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

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$1$2;->this$0:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->access$getPreference$p(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;->getKidsModeDbEnabled()Z

    move-result v0

    sget-object v1, Ldb/r;->a:Ldb/r;

    if-ne p1, v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$1$2;->this$0:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->access$getPreference$p(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;->updateKidsModeDbEnabled(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$1$2;->this$0:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;

    const/4 p1, 0x1

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->access$updateIfNeededInternal(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;ZLib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    return-object v1
.end method
