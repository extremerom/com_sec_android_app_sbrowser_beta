.class Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/sbrowser_tab/MainViewTabCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->initMainViewTabClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAIOptionItemsStatusChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->q(Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->o(Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getAppMenu()Lcom/sec/android/app/sbrowser/common/model/main/menu/IAppMenu;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/common/model/main/menu/IAppMenu;->notifyAiOptionStatusChanged(I)V

    return-void
.end method

.method public onExtractTextEnded()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->enableAiButton()V

    return-void
.end method

.method public onExtractTextStarted()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->updateAiButtonVisibility(Z)V

    return-void
.end method

.method public onObjectCaptureEnded()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->enableAiButton()V

    return-void
.end method

.method public onObjectCaptureStarted()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->updateAiButtonVisibility(Z)V

    return-void
.end method
