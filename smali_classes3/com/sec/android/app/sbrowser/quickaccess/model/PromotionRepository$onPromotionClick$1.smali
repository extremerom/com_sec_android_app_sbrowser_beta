.class final Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$onPromotionClick$1;
.super Lkb/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;->onPromotionClick(Lib/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
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

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.sec.android.app.sbrowser.quickaccess.model.PromotionRepository"
    f = "PromotionRepository.kt"
    l = {
        0xa3,
        0xa7,
        0xa8
    }
    m = "onPromotionClick"
.end annotation


# instance fields
.field I$0:I

.field J$0:J

.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

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
            "Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$onPromotionClick$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$onPromotionClick$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$onPromotionClick$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$onPromotionClick$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$onPromotionClick$1;->label:I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository$onPromotionClick$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;->onPromotionClick(Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
