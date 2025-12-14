.class Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->summarizeArticle(Ljava/lang/String;ILcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudSummaryListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;

.field final synthetic val$itemIndex:I

.field final synthetic val$listener:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudSummaryListener;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;ILcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudSummaryListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;

    iput p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$1;->val$itemIndex:I

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$1;->val$listener:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudSummaryListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthTokenExpiredFailure()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[summarizeArticle] onAuthTokenExpiredFailure, itemIndex: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$1;->val$itemIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "si__ReadArticlesAloud"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$1;->val$listener:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudSummaryListener;

    const-string v0, "Summarize_Error_Others"

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudSummaryListener;->onFailure(Ljava/lang/String;)V

    return-void
.end method

.method public onFailure(Ljava/lang/String;I)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string p1, "[summarizeArticle] onFailure, type: "

    const-string v0, ", itemIndex: "

    invoke-static {p2, p1, v0}, Lt/b;->l(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$1;->val$itemIndex:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "si__ReadArticlesAloud"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$1;->val$listener:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudSummaryListener;

    const/16 p1, 0x2711

    if-ne p2, p1, :cond_0

    const-string p1, "Samsung_Error_Account"

    goto :goto_0

    :cond_0
    const-string p1, "Summarize_Error_Others"

    :goto_0
    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudSummaryListener;->onFailure(Ljava/lang/String;)V

    return-void
.end method

.method public onInappropriateContentFailure(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[summarizeArticle] onInappropriateContentFailure, isSelfSafety: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", itemIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$1;->val$itemIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "si__ReadArticlesAloud"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$1;->val$listener:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudSummaryListener;

    if-eqz p1, :cond_0

    const-string p1, "Summarize_Error_SelfSafety"

    goto :goto_0

    :cond_0
    const-string p1, "Summarize_Error_Safety"

    :goto_0
    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudSummaryListener;->onFailure(Ljava/lang/String;)V

    return-void
.end method

.method public onRecitationCheckerFailure()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[summarizeArticle] onRecitationCheckerFailure, itemIndex: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$1;->val$itemIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "si__ReadArticlesAloud"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$1;->val$listener:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudSummaryListener;

    const-string v0, "Summarize_Error_Copyright"

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudSummaryListener;->onFailure(Ljava/lang/String;)V

    return-void
.end method

.method public onRestrictedUserFailure()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[summarizeArticle] onRestrictedUserFailure, itemIndex: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$1;->val$itemIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "si__ReadArticlesAloud"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$1;->val$listener:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudSummaryListener;

    const-string v0, "Summarize_Error_Personal_Data_Restricted"

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudSummaryListener;->onFailure(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;II)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;->getSummary()Ljava/util/List;

    move-result-object p1

    const-string p2, "si__ReadArticlesAloud"

    if-nez p1, :cond_0

    const-string p1, "[summarizeArticle] onSuccess, but null summary"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "[summarizeArticle] onSuccess, but empty summary, , itemIndex: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$1;->val$itemIndex:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$1;->val$listener:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudSummaryListener;

    const-string v0, "Summarize_Error_Others"

    invoke-interface {p3, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudSummaryListener;->onFailure(Ljava/lang/String;)V

    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "[summarizeArticle] onSuccess, itemIndex: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$1;->val$itemIndex:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", sentence count: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "[summarizeArticle] onSuccess, summary: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$1;->val$listener:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudSummaryListener;

    const-string p2, "Summarize_OK"

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudSummaryListener;->onSuccess(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public onUnsupportedLanguageFailure()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[summarizeArticle] onUnsupportedLanguageFailure, itemIndex: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$1;->val$itemIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "si__ReadArticlesAloud"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$1;->val$listener:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudSummaryListener;

    const-string v0, "Summarize_Error_Language"

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudSummaryListener;->onFailure(Ljava/lang/String;)V

    return-void
.end method
