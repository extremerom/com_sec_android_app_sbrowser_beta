.class final Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefHandler$sendReadArticlesAloudAsync$1;
.super Lkb/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefHandler;->sendReadArticlesAloudAsync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILib/c;)Ljava/lang/Object;
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
        0x77,
        0x7b,
        0xd9,
        0xdb
    }
    m = "sendReadArticlesAloudAsync"
.end annotation


# instance fields
.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

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
            "Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefHandler$sendReadArticlesAloudAsync$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefHandler$sendReadArticlesAloudAsync$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefHandler;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefHandler$sendReadArticlesAloudAsync$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefHandler$sendReadArticlesAloudAsync$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefHandler$sendReadArticlesAloudAsync$1;->label:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefHandler$sendReadArticlesAloudAsync$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefHandler;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v7, p0

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefHandler;->access$sendReadArticlesAloudAsync(Lcom/sec/android/app/sbrowser/artificial_intelligence/ai_brief/AiBriefHandler;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
