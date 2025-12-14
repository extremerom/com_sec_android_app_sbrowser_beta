.class final Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatusLiveData$1;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatusLiveData;-><init>(Landroid/content/Context;LNc/x;Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkb/i;",
        "Lsb/r;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\n\u001a\u00020\t2\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0004H\n\u00a2\u0006\u0004\u0008\n\u0010\u000b"
    }
    d2 = {
        "",
        "enable",
        "",
        "url",
        "",
        "count",
        "",
        "lastDisplayedTime",
        "iuid",
        "Ldb/r;",
        "<anonymous>",
        "(ZLjava/lang/String;IJI)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.sec.android.app.sbrowser.quickaccess.ui.viewmodel.PromotionStatusLiveData$1"
    f = "PromotionStatusLiveData.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field synthetic I$0:I

.field synthetic I$1:I

.field synthetic J$0:J

.field synthetic L$0:Ljava/lang/Object;

.field synthetic Z$0:Z

.field label:I

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatusLiveData;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatusLiveData;Lib/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatusLiveData;",
            "Lib/c<",
            "-",
            "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatusLiveData$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatusLiveData$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatusLiveData;

    const/4 p1, 0x6

    invoke-direct {p0, p1, p2}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result v3

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    check-cast p5, Ljava/lang/Number;

    invoke-virtual {p5}, Ljava/lang/Number;->intValue()I

    move-result v6

    move-object v7, p6

    check-cast v7, Lib/c;

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatusLiveData$1;->invoke(ZLjava/lang/String;IJILib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(ZLjava/lang/String;IJILib/c;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "IJI",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatusLiveData$1;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatusLiveData$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatusLiveData;

    invoke-direct {v0, p0, p7}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatusLiveData$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatusLiveData;Lib/c;)V

    iput-boolean p1, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatusLiveData$1;->Z$0:Z

    iput-object p2, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatusLiveData$1;->L$0:Ljava/lang/Object;

    iput p3, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatusLiveData$1;->I$0:I

    iput-wide p4, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatusLiveData$1;->J$0:J

    iput p6, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatusLiveData$1;->I$1:I

    sget-object p0, Ldb/r;->a:Ldb/r;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatusLiveData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatusLiveData$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatusLiveData$1;->Z$0:Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatusLiveData$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatusLiveData$1;->I$0:I

    iget-wide v5, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatusLiveData$1;->J$0:J

    iget v7, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatusLiveData$1;->I$1:I

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatus;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatusLiveData$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatusLiveData;

    move-object v3, p1

    invoke-static/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatusLiveData;->access$isVisible(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatusLiveData;ZLjava/lang/String;IJI)Z

    move-result v1

    invoke-direct {v0, v1, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatus;-><init>(ZLjava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatusLiveData$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatusLiveData;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatusLiveData;->access$setValueIfChanged(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatusLiveData;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatus;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
