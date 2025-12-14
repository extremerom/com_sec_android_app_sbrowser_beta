.class Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudSummaryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler;->createSummaryListener(II)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudSummaryListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler;

.field final synthetic val$articleLength:I

.field final synthetic val$itemIndex:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler;

    iput p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler$2;->val$itemIndex:I

    iput p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler$2;->val$articleLength:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler$2;Ljava/util/List;ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler$2;->lambda$onSuccess$0(Ljava/util/List;ILjava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$onSuccess$0(Ljava/util/List;ILjava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler;

    invoke-static {v0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler;->f0(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler;Ljava/util/List;I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler;

    invoke-static {p4, p0, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler;->h0(ILcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createSummaryListener(): onFailure -> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler$2;->val$itemIndex:I

    const-string v2, "si__ReadArticlesAloudHandler"

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler;->c0(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler;

    iget v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler$2;->val$itemIndex:I

    invoke-static {v1, v0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler;->g0(ILcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler;

    iget p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler$2;->val$articleLength:I

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler;->h0(ILcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createSummaryListener(): onSuccess -> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler$2;->val$itemIndex:I

    const-string v2, "si__ReadArticlesAloudHandler"

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler$2;->val$itemIndex:I

    iget v6, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler$2;->val$articleLength:I

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/Q;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/Q;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler$2;Ljava/util/List;ILjava/lang/String;I)V

    invoke-static {v0}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
