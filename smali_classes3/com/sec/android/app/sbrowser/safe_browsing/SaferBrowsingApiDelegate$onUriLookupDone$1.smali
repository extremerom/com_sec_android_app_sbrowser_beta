.class final Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$onUriLookupDone$1;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;->onUriLookupDone(JLjava/lang/String;IZLjava/lang/String;I)V
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
    c = "com.sec.android.app.sbrowser.safe_browsing.SaferBrowsingApiDelegate$onUriLookupDone$1"
    f = "SaferBrowsingApiDelegate.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callbackId:J

.field final synthetic $metadata:Ljava/lang/String;

.field final synthetic $resultStatus:I

.field final synthetic $threatDetected:Z

.field final synthetic $threatType:I

.field final synthetic $uri:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;Ljava/lang/String;ZJILjava/lang/String;ILib/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;",
            "Ljava/lang/String;",
            "ZJI",
            "Ljava/lang/String;",
            "I",
            "Lib/c<",
            "-",
            "Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$onUriLookupDone$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$onUriLookupDone$1;->this$0:Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$onUriLookupDone$1;->$uri:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$onUriLookupDone$1;->$threatDetected:Z

    iput-wide p4, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$onUriLookupDone$1;->$callbackId:J

    iput p6, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$onUriLookupDone$1;->$resultStatus:I

    iput-object p7, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$onUriLookupDone$1;->$metadata:Ljava/lang/String;

    iput p8, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$onUriLookupDone$1;->$threatType:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p9}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 10
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

    new-instance p1, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$onUriLookupDone$1;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$onUriLookupDone$1;->this$0:Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$onUriLookupDone$1;->$uri:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$onUriLookupDone$1;->$threatDetected:Z

    iget-wide v4, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$onUriLookupDone$1;->$callbackId:J

    iget v6, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$onUriLookupDone$1;->$resultStatus:I

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$onUriLookupDone$1;->$metadata:Ljava/lang/String;

    iget v8, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$onUriLookupDone$1;->$threatType:I

    move-object v0, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$onUriLookupDone$1;-><init>(Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;Ljava/lang/String;ZJILjava/lang/String;ILib/c;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$onUriLookupDone$1;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$onUriLookupDone$1;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$onUriLookupDone$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$onUriLookupDone$1;->invoke(LNc/B;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$onUriLookupDone$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$onUriLookupDone$1;->this$0:Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;->access$getDelegate$p(Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;)Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$onUriLookupDone$1;->$uri:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$onUriLookupDone$1;->$threatDetected:Z

    iget-wide v3, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$onUriLookupDone$1;->$callbackId:J

    iget v5, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$onUriLookupDone$1;->$resultStatus:I

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$onUriLookupDone$1;->$metadata:Ljava/lang/String;

    iget v7, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$onUriLookupDone$1;->$threatType:I

    invoke-virtual/range {v0 .. v7}, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;->onUriLookupDone(Ljava/lang/String;ZJILjava/lang/String;I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :cond_0
    const-string p0, "delegate"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
