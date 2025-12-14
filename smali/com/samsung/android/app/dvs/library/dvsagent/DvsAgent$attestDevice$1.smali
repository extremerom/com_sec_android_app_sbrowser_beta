.class final Lcom/samsung/android/app/dvs/library/dvsagent/DvsAgent$attestDevice$1;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/dvs/library/dvsagent/DvsAgent;->attestDevice(Landroid/content/Context;Lsb/k;Lsb/k;Lsb/k;Lsb/a;)V
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
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u008a@\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Ldb/r;",
        "it",
        "",
        "<anonymous>",
        "(V)Ljava/lang/String;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.samsung.android.app.dvs.library.dvsagent.DvsAgent$attestDevice$1"
    f = "DvsAgent.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field label:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lib/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lib/c<",
            "-",
            "Lcom/samsung/android/app/dvs/library/dvsagent/DvsAgent$attestDevice$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/dvs/library/dvsagent/DvsAgent$attestDevice$1;->$context:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p1, Lcom/samsung/android/app/dvs/library/dvsagent/DvsAgent$attestDevice$1;

    iget-object p0, p0, Lcom/samsung/android/app/dvs/library/dvsagent/DvsAgent$attestDevice$1;->$context:Landroid/content/Context;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/app/dvs/library/dvsagent/DvsAgent$attestDevice$1;-><init>(Landroid/content/Context;Lib/c;)V

    return-object p1
.end method

.method public final invoke(Ldb/r;Lib/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ldb/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldb/r;",
            "Lib/c<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/dvs/library/dvsagent/DvsAgent$attestDevice$1;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/dvs/library/dvsagent/DvsAgent$attestDevice$1;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/dvs/library/dvsagent/DvsAgent$attestDevice$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ldb/r;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/dvs/library/dvsagent/DvsAgent$attestDevice$1;->invoke(Ldb/r;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v0, p0, Lcom/samsung/android/app/dvs/library/dvsagent/DvsAgent$attestDevice$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    new-instance p1, Lcom/samsung/android/app/dvs/library/dvsagent/DvsAgent;

    invoke-direct {p1}, Lcom/samsung/android/app/dvs/library/dvsagent/DvsAgent;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/app/dvs/library/dvsagent/DvsAgent$attestDevice$1;->$context:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/dvs/library/dvsagent/DvsAgent;->attestDevice(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
