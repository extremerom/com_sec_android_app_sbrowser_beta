.class final Lcom/sec/android/app/sbrowser/common/livedata/ContentResolverFlowKt$observe$1;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/livedata/ContentResolverFlowKt;->observe(Landroid/content/ContentResolver;Ljava/lang/String;)LQc/h;
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u0002*\u0008\u0012\u0004\u0012\u00020\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "LPc/y;",
        "",
        "Ldb/r;",
        "<anonymous>",
        "(LPc/y;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.sec.android.app.sbrowser.common.livedata.ContentResolverFlowKt$observe$1"
    f = "ContentResolverFlow.kt"
    l = {
        0x24
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $this_observe:Landroid/content/ContentResolver;

.field final synthetic $uri:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;Lib/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "Lib/c<",
            "-",
            "Lcom/sec/android/app/sbrowser/common/livedata/ContentResolverFlowKt$observe$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/livedata/ContentResolverFlowKt$observe$1;->$this_observe:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/livedata/ContentResolverFlowKt$observe$1;->$uri:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method

.method public static synthetic f(Landroid/content/ContentResolver;Lcom/sec/android/app/sbrowser/common/livedata/ContentResolverFlowKt$observe$1$observer$1;)Ldb/r;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/livedata/ContentResolverFlowKt$observe$1;->invokeSuspend$lambda$0(Landroid/content/ContentResolver;Lcom/sec/android/app/sbrowser/common/livedata/ContentResolverFlowKt$observe$1$observer$1;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method private static final invokeSuspend$lambda$0(Landroid/content/ContentResolver;Lcom/sec/android/app/sbrowser/common/livedata/ContentResolverFlowKt$observe$1$observer$1;)Ldb/r;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 2
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

    new-instance v0, Lcom/sec/android/app/sbrowser/common/livedata/ContentResolverFlowKt$observe$1;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/livedata/ContentResolverFlowKt$observe$1;->$this_observe:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/livedata/ContentResolverFlowKt$observe$1;->$uri:Ljava/lang/String;

    invoke-direct {v0, v1, p0, p2}, Lcom/sec/android/app/sbrowser/common/livedata/ContentResolverFlowKt$observe$1;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Lib/c;)V

    iput-object p1, v0, Lcom/sec/android/app/sbrowser/common/livedata/ContentResolverFlowKt$observe$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(LPc/y;Lib/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LPc/y;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/livedata/ContentResolverFlowKt$observe$1;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/livedata/ContentResolverFlowKt$observe$1;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/livedata/ContentResolverFlowKt$observe$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LPc/y;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/livedata/ContentResolverFlowKt$observe$1;->invoke(LPc/y;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lcom/sec/android/app/sbrowser/common/livedata/ContentResolverFlowKt$observe$1;->label:I

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

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/livedata/ContentResolverFlowKt$observe$1;->L$0:Ljava/lang/Object;

    check-cast p1, LPc/y;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/livedata/ContentResolverFlowKt$observe$1$observer$1;

    invoke-direct {v1, p1}, Lcom/sec/android/app/sbrowser/common/livedata/ContentResolverFlowKt$observe$1$observer$1;-><init>(LPc/y;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/livedata/ContentResolverFlowKt$observe$1;->$this_observe:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/livedata/ContentResolverFlowKt$observe$1;->$uri:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/livedata/ContentResolverFlowKt$observe$1;->$this_observe:Landroid/content/ContentResolver;

    new-instance v4, Lcom/sec/android/app/sbrowser/common/livedata/a;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v3, v1}, Lcom/sec/android/app/sbrowser/common/livedata/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput v2, p0, Lcom/sec/android/app/sbrowser/common/livedata/ContentResolverFlowKt$observe$1;->label:I

    invoke-static {p1, v4, p0}, LG5/t;->b(LPc/y;Lsb/a;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
