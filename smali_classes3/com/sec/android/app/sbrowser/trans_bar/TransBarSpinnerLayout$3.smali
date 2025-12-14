.class Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->initializeTargetSpinner(Landroid/view/View;Landroid/widget/FrameLayout;Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout$3;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismissDropDown()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout$3;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->e(Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout$3;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->mTargetSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->seslDismissPopup()V

    return-void
.end method

.method public getLangList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout$3;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->a(Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;)Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayoutClient;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout$3;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->a(Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;)Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayoutClient;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayoutClient;->getLangList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLanguage(Z)Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout$3;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->a(Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;)Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayoutClient;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout$3;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->a(Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;)Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayoutClient;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayoutClient;->getLanguage(Z)Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onUpdateSourceLang(Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout$3;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->a(Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;)Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayoutClient;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout$3;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->a(Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;)Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayoutClient;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayoutClient;->onUpdateSourceLang(Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;)V

    return-void
.end method

.method public sendEventLog()V
    .locals 1

    const-string p0, "201"

    const-string v0, "20057"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
