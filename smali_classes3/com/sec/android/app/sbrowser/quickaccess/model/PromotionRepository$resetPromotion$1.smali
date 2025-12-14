.class final Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$resetPromotion$1;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;->resetPromotion()V
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
    c = "com.sec.android.app.sbrowser.quickaccess.model.PromotionRepository$resetPromotion$1"
    f = "PromotionRepository.kt"
    l = {
        0x95,
        0x96,
        0x97,
        0x98,
        0x99
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;Lib/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;",
            "Lib/c<",
            "-",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$resetPromotion$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$resetPromotion$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;

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

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$resetPromotion$1;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$resetPromotion$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;

    invoke-direct {p1, p0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$resetPromotion$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;Lib/c;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$resetPromotion$1;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$resetPromotion$1;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$resetPromotion$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$resetPromotion$1;->invoke(LNc/B;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$resetPromotion$1;->label:I

    const-wide/16 v2, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v1, :cond_5

    if-eq v1, v8, :cond_4

    if-eq v1, v7, :cond_3

    if-eq v1, v6, :cond_2

    if-eq v1, v5, :cond_1

    if-ne v1, v4, :cond_0

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_4

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$resetPromotion$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;->access$getPromotionCountPreference$p(Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;)Lcom/sec/android/app/sbrowser/common/livedata/IntPreference;

    move-result-object p1

    iput v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$resetPromotion$1;->label:I

    invoke-virtual {p1, v9, p0}, Lcom/sec/android/app/sbrowser/common/livedata/IntPreference;->setValue(ILib/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$resetPromotion$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;->access$getPromotionSettingCountPreference$p(Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;)Lcom/sec/android/app/sbrowser/common/livedata/IntPreference;

    move-result-object p1

    iput v7, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$resetPromotion$1;->label:I

    invoke-virtual {p1, v9, p0}, Lcom/sec/android/app/sbrowser/common/livedata/IntPreference;->setValue(ILib/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$resetPromotion$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;->access$getPromotionLastDisplayedTimePreference$p(Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;)Lcom/sec/android/app/sbrowser/common/livedata/LongPreference;

    move-result-object p1

    iput v6, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$resetPromotion$1;->label:I

    invoke-virtual {p1, v2, v3, p0}, Lcom/sec/android/app/sbrowser/common/livedata/LongPreference;->setValue(JLib/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$resetPromotion$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;->access$getPromotionSettingLastDisplayedTimePreference$p(Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;)Lcom/sec/android/app/sbrowser/common/livedata/LongPreference;

    move-result-object p1

    iput v5, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$resetPromotion$1;->label:I

    invoke-virtual {p1, v2, v3, p0}, Lcom/sec/android/app/sbrowser/common/livedata/LongPreference;->setValue(JLib/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    return-object v0

    :cond_9
    :goto_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$resetPromotion$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;->access$getPromotionSettingButtonPressedPreference$p(Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;)Lcom/sec/android/app/sbrowser/common/livedata/BooleanPreference;

    move-result-object p1

    iput v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$resetPromotion$1;->label:I

    invoke-virtual {p1, v9, p0}, Lcom/sec/android/app/sbrowser/common/livedata/BooleanPreference;->setValue(ZLib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_a

    return-object v0

    :cond_a
    :goto_4
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
