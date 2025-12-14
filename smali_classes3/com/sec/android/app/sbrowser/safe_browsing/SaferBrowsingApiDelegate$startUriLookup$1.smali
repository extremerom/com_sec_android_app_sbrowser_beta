.class final Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$startUriLookup$1;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;->startUriLookup(JLjava/lang/String;[I)V
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
    c = "com.sec.android.app.sbrowser.safe_browsing.SaferBrowsingApiDelegate$startUriLookup$1"
    f = "SaferBrowsingApiDelegate.kt"
    l = {
        0x84,
        0x9f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callbackId:J

.field final synthetic $uri:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;JLjava/lang/String;Lib/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;",
            "J",
            "Ljava/lang/String;",
            "Lib/c<",
            "-",
            "Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$startUriLookup$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$startUriLookup$1;->this$0:Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;

    iput-wide p2, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$startUriLookup$1;->$callbackId:J

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$startUriLookup$1;->$uri:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 6
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

    new-instance p1, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$startUriLookup$1;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$startUriLookup$1;->this$0:Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$startUriLookup$1;->$callbackId:J

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$startUriLookup$1;->$uri:Ljava/lang/String;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$startUriLookup$1;-><init>(Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;JLjava/lang/String;Lib/c;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$startUriLookup$1;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$startUriLookup$1;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$startUriLookup$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$startUriLookup$1;->invoke(LNc/B;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$startUriLookup$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v5, "repository"

    sget-object v6, Ldb/r;->a:Ldb/r;

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v8, :cond_1

    if-ne v2, v4, :cond_0

    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto :goto_0

    :cond_2
    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;->getInstance()Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;->getKidsModeDbEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v9, v0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$startUriLookup$1;->this$0:Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;

    iget-wide v10, v0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$startUriLookup$1;->$callbackId:J

    iget-object v12, v0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$startUriLookup$1;->$uri:Ljava/lang/String;

    const/16 v17, 0x3c

    const/16 v18, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v9 .. v18}, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;->onUriLookupDone$default(Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;JLjava/lang/String;IZLjava/lang/String;IILjava/lang/Object;)V

    return-object v6

    :cond_3
    iget-object v2, v0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$startUriLookup$1;->$uri:Ljava/lang/String;

    if-eqz v2, :cond_d

    invoke-static {v2}, LKc/k;->x(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_3

    :cond_4
    iget-object v2, v0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$startUriLookup$1;->this$0:Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;->access$getRepository$p(Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;

    move-result-object v2

    if-eqz v2, :cond_c

    iget-object v9, v0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$startUriLookup$1;->$uri:Ljava/lang/String;

    invoke-virtual {v2, v9}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->findHashPrefixCollisions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v10, v0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$startUriLookup$1;->this$0:Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;

    iget-wide v11, v0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$startUriLookup$1;->$callbackId:J

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$startUriLookup$1;->$uri:Ljava/lang/String;

    const/16 v18, 0x3c

    const/16 v19, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v10 .. v19}, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;->onUriLookupDone$default(Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;JLjava/lang/String;IZLjava/lang/String;IILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_5
    iget-object v9, v0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$startUriLookup$1;->this$0:Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;

    invoke-static {v9}, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;->access$getRepository$p(Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;

    move-result-object v9

    if-eqz v9, :cond_b

    iput v8, v0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$startUriLookup$1;->label:I

    invoke-virtual {v9, v2, v0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->findAndMatchCollision(Ljava/util/List;Lib/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_6

    return-object v1

    :cond_6
    :goto_0
    check-cast v2, Ljava/util/List;

    move-object v9, v2

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_8

    new-instance v9, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/domain/LookupResultMetadata$LookupResult;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;->getThreatType()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/domain/LookupResultMetadata$LookupResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/domain/LookupResultMetadata$LookupResult;->getThreatType()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_7

    const-string v9, "0"

    :cond_7
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, v0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$startUriLookup$1;->this$0:Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;

    iget-wide v11, v0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$startUriLookup$1;->$callbackId:J

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$startUriLookup$1;->$uri:Ljava/lang/String;

    invoke-virtual {v10, v2}, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;->createMetadata(Ljava/util/List;)Ljava/lang/String;

    move-result-object v16

    invoke-static {v9}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v17

    const/16 v18, 0x4

    const/16 v19, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-static/range {v10 .. v19}, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;->onUriLookupDone$default(Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;JLjava/lang/String;IZLjava/lang/String;IILjava/lang/Object;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;->getInstance()Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;->getSaferBrowsingDetectedCount()I

    move-result v9

    invoke-static {}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;->getInstance()Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;

    move-result-object v10

    add-int/2addr v9, v8

    invoke-virtual {v10, v9}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;->updateSaferBrowsingDetectedCount(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingSILogManager;->getInstance()Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingSILogManager;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingSILogManager;->onThreatDetected(Ljava/util/List;)V

    goto :goto_1

    :cond_8
    iget-object v10, v0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$startUriLookup$1;->this$0:Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;

    iget-wide v11, v0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$startUriLookup$1;->$callbackId:J

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$startUriLookup$1;->$uri:Ljava/lang/String;

    const/16 v18, 0x3c

    const/16 v19, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v10 .. v19}, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;->onUriLookupDone$default(Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;JLjava/lang/String;IZLjava/lang/String;IILjava/lang/Object;)V

    :goto_1
    iget-object v2, v0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$startUriLookup$1;->this$0:Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;->access$getRepository$p(Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;

    move-result-object v2

    if-eqz v2, :cond_a

    iput v4, v0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$startUriLookup$1;->label:I

    invoke-static {v2, v3, v0, v8, v7}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->updateIfNeeded$default(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;ZLib/c;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_9

    return-object v1

    :cond_9
    :goto_2
    return-object v6

    :cond_a
    invoke-static {v5}, Ltb/k;->l(Ljava/lang/String;)V

    throw v7

    :cond_b
    invoke-static {v5}, Ltb/k;->l(Ljava/lang/String;)V

    throw v7

    :cond_c
    invoke-static {v5}, Ltb/k;->l(Ljava/lang/String;)V

    throw v7

    :cond_d
    :goto_3
    iget-object v7, v0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$startUriLookup$1;->this$0:Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;

    iget-wide v8, v0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$startUriLookup$1;->$callbackId:J

    iget-object v10, v0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$startUriLookup$1;->$uri:Ljava/lang/String;

    const/16 v15, 0x3c

    const/16 v16, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v7 .. v16}, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;->onUriLookupDone$default(Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;JLjava/lang/String;IZLjava/lang/String;IILjava/lang/Object;)V

    return-object v6
.end method
