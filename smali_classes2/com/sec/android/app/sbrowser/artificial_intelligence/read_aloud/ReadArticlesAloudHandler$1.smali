.class Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/IdentifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler;->createArticleListener(ZI)Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler;

.field final synthetic val$article:Ljava/lang/String;

.field final synthetic val$autoPlay:Z

.field final synthetic val$itemIndex:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler;ZLjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler$1;->val$autoPlay:Z

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler$1;->val$article:Ljava/lang/String;

    iput p4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler$1;->val$itemIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createArticleListener(): onFailure -> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler$1;->val$itemIndex:I

    const-string v2, "si__ReadArticlesAloudHandler"

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler;

    iget p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler$1;->val$itemIndex:I

    const-string v1, "Summarize_Error_Others"

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler;->g0(ILcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createArticleListener(): onSuccess -> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "si__ReadArticlesAloudHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler$1;->val$autoPlay:Z

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler;->onLanguageDetected(Ljava/lang/String;Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler;->isArticleHomepage()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler;->e0(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler;->i0(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler;Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler$1;->val$article:Ljava/lang/String;

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler;

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudDelegate;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler$1;->val$article:Ljava/lang/String;

    iget p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler$1;->val$itemIndex:I

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler;->d0(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler;II)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudSummaryListener;

    move-result-object p1

    invoke-interface {v1, v2, p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudDelegate;->getSummary(Ljava/lang/String;ILcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudSummaryListener;)V

    return-void
.end method
