.class Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/toolbar/MoreMenuListEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler$2;->this$0:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismissMoreMenuDialog()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler$2;->this$0:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->dismissPopup()V

    return-void
.end method

.method public getCurrentUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler$2;->this$0:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->i(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;)Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;->getCurrentTabUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTabCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler$2;->this$0:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->i(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;)Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;->getTabCountOfCurrentGroup()I

    move-result p0

    return p0
.end method

.method public isSummaryAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler$2;->this$0:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->i(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;)Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;->isSummaryAvailable()Z

    move-result p0

    return p0
.end method

.method public onItemClick(Landroid/view/MenuItem;Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    const v1, 0x7f0b04f1

    if-eq v0, v1, :cond_3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0b0050

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->isEnabled()Z

    move-result p2

    if-nez p2, :cond_2

    return-void

    :cond_2
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler$2;->this$0:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->i(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;)Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;->onOptionsItemSelected(Landroid/view/MenuItem;Landroid/view/View;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler$2;->this$0:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->dismissPopup()V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler$2;->this$0:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->i(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;)Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;->onOptionsItemSelected(Landroid/view/MenuItem;Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method public onItemLongClick()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler$2;->this$0:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->dismissPopup()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler$2;->this$0:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->i(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;)Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;->onAppMenuLongClick()V

    return-void
.end method

.method public showSummarizePopupWindow(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler$2;->this$0:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->dismissPopup()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler$2;->this$0:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->i(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;)Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuInterface;->showSummarizePopupWindow(Ljava/lang/String;)V

    return-void
.end method
