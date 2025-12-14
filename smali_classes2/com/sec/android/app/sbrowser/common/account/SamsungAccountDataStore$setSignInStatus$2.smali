.class final Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore$setSignInStatus$2;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;->setSignInStatus(ZLib/c;)Ljava/lang/Object;
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
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lp1/b;",
        "preferences",
        "Ldb/r;",
        "<anonymous>",
        "(Lp1/b;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.sec.android.app.sbrowser.common.account.SamsungAccountDataStore$setSignInStatus$2"
    f = "SamsungAccountDataStore.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $isSignIn:Z

.field synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(ZLib/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lib/c<",
            "-",
            "Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore$setSignInStatus$2;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore$setSignInStatus$2;->$isSignIn:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkb/i;-><init>(ILib/c;)V

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

    new-instance v0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore$setSignInStatus$2;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore$setSignInStatus$2;->$isSignIn:Z

    invoke-direct {v0, p0, p2}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore$setSignInStatus$2;-><init>(ZLib/c;)V

    iput-object p1, v0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore$setSignInStatus$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lp1/b;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore$setSignInStatus$2;->invoke(Lp1/b;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lp1/b;Lib/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp1/b;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore$setSignInStatus$2;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore$setSignInStatus$2;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore$setSignInStatus$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore$setSignInStatus$2;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore$setSignInStatus$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lp1/b;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;->access$getPREF_SAMSUNG_ACCOUNT_SIGN_IN_STATUS$cp()Lp1/f;

    move-result-object v0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore$setSignInStatus$2;->$isSignIn:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lp1/b;->b(Lp1/f;Ljava/lang/Object;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
