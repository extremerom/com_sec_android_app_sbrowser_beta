.class final Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefHandler$removeReadArticlesAloudByIndexAsync$1;
.super Lkb/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefHandler;->removeReadArticlesAloudByIndexAsync(Landroid/content/Context;ILib/c;)Ljava/lang/Object;
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
    c = "com.sec.android.app.sbrowser.artificial_intelligence.ai_brief.AiBriefHandler"
    f = "AiBriefHandler.kt"
    l = {
        0x12b,
        0x12f,
        0x13b
    }
    m = "removeReadArticlesAloudByIndexAsync"
.end annotation


# instance fields
.field I$0:I

.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefHandler;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefHandler;Lib/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefHandler;",
            "Lib/c<",
            "-",
            "Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefHandler$removeReadArticlesAloudByIndexAsync$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefHandler$removeReadArticlesAloudByIndexAsync$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefHandler;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefHandler$removeReadArticlesAloudByIndexAsync$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefHandler$removeReadArticlesAloudByIndexAsync$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefHandler$removeReadArticlesAloudByIndexAsync$1;->label:I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefHandler$removeReadArticlesAloudByIndexAsync$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefHandler;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefHandler;->access$removeReadArticlesAloudByIndexAsync(Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefHandler;Landroid/content/Context;ILib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
