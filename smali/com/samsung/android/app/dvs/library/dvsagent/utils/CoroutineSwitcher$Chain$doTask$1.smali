.class final Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$doTask$1;
.super Lkb/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain;->doTask(Lib/h;Lsb/n;Lib/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Return:",
        "Ljava/lang/Object;",
        ">",
        "Lkb/c;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.samsung.android.app.dvs.library.dvsagent.utils.CoroutineSwitcher$Chain"
    f = "CoroutineSwitcher.kt"
    l = {
        0x42,
        0x43
    }
    m = "doTask"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain<",
            "TParam;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain;Lib/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain<",
            "+TParam;>;",
            "Lib/c<",
            "-",
            "Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$doTask$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$doTask$1;->this$0:Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain;

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

    iput-object p1, p0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$doTask$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$doTask$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$doTask$1;->label:I

    iget-object p1, p0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$doTask$1;->this$0:Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, p0}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain;->access$doTask(Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain;Lib/h;Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
