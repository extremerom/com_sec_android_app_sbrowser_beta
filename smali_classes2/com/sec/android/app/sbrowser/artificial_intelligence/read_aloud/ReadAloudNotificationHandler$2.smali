.class Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudNotificationHandler$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudNotificationHandler;->createNotificationListener()Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/notification/ReadAloudNotificationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudNotificationHandler;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudNotificationHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudNotificationHandler$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudNotificationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNext()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudNotificationHandler$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudNotificationHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudNotificationHandler;->c(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudNotificationHandler;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;->goNext()V

    return-void
.end method

.method public onNextArticle()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudNotificationHandler$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudNotificationHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudNotificationHandler;->c(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudNotificationHandler;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;->goNextArticle()V

    return-void
.end method

.method public onPause(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudNotificationHandler$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudNotificationHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudNotificationHandler;->c(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudNotificationHandler;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;->pause()V

    return-void
.end method

.method public onPlay(I)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudNotificationHandler$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudNotificationHandler;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudNotificationHandler;->c(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudNotificationHandler;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;->canRestart()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudNotificationHandler$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudNotificationHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudNotificationHandler;->c(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudNotificationHandler;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;->restart()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudNotificationHandler$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudNotificationHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudNotificationHandler;->c(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudNotificationHandler;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;->play(ZZ)V

    :goto_0
    return-void
.end method

.method public onPrev()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudNotificationHandler$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudNotificationHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudNotificationHandler;->c(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudNotificationHandler;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;->goPrev()V

    return-void
.end method

.method public onPrevArticle()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudNotificationHandler$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudNotificationHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudNotificationHandler;->c(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudNotificationHandler;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;->goPrevArticle()V

    return-void
.end method

.method public onStop(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudNotificationHandler$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudNotificationHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudNotificationHandler;->c(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudNotificationHandler;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;->stop()V

    return-void
.end method
