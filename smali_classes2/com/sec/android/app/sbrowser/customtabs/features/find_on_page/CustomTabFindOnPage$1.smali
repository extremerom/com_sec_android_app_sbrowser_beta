.class Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;->startFindOnPage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage$1;->this$0:Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public focusOutFromFindOnPage()V
    .locals 0

    return-void
.end method

.method public onFindNext()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage$1;->this$0:Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;->c(Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;)Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPageListener;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage$1;->this$0:Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;->b(Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPageListener;->onStartFindText(Ljava/lang/String;Z)V

    return-void
.end method

.method public onFindPrev()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage$1;->this$0:Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;->c(Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;)Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPageListener;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage$1;->this$0:Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;->b(Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPageListener;->onStartFindText(Ljava/lang/String;Z)V

    return-void
.end method

.method public onFindText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage$1;->this$0:Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;->d(Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage$1;->this$0:Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;->c(Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;)Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPageListener;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPageListener;->onStartFindText(Ljava/lang/String;Z)V

    return-void
.end method

.method public onFinishFindOnPage()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage$1;->this$0:Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;->c(Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;)Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPageListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPageListener;->onFinishFindOnPage()V

    return-void
.end method

.method public onLaunchVoiceRecognizer()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage$1;->this$0:Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;->c(Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;)Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPageListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPageListener;->onLaunchVoiceRecognizer()V

    return-void
.end method

.method public onStopFindText()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage$1;->this$0:Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;->d(Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage$1;->this$0:Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;->c(Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPage;)Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPageListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/find_on_page/CustomTabFindOnPageListener;->onStopFindText()V

    return-void
.end method
