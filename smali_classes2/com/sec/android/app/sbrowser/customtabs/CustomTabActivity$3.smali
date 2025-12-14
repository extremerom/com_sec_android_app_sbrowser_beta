.class Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity$3;
.super Landroidx/activity/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity$3;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    invoke-direct {p0, p2}, Landroidx/activity/u;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity$3;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->getCustomTabAI()Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArtificialIntelligence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArtificialIntelligence;->checkOnBackPressed()Z

    move-result v0

    const-string v1, "si__CustomTabActivity"

    if-eqz v0, :cond_0

    const-string p0, "handleOnBackPressed(): finish read aloud"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity$3;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->B(Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;)Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity$3;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->B(Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;)Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "handleOnBackPressed(): exit fullscreen"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity$3;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mRootUiCoordinator:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->isFindOnPageRunning()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "handleOnBackPressed(): finish find on page"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity$3;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mRootUiCoordinator:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->finishFindOnPage()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity$3;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->B(Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;)Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity$3;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->B(Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;)Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "handleOnBackPressed(): canGoBack is true"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity$3;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->B(Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;)Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->goBack()V

    return-void

    :cond_3
    const-string v0, "handleOnBackPressed(): close tab"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity$3;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->closeTab()V

    return-void
.end method
