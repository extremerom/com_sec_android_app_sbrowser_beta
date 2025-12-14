.class Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$LiveTextControllerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->prepareAndStartProgressBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$2;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearExtractTextInfo()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$2;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->didRemoveClientView()Z

    return-void
.end method

.method public getBottomMargin()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$2;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->d(Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;)Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$Delegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$Delegate;->getBottomMargin()I

    move-result p0

    return p0
.end method

.method public getTopMargin()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$2;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->e(Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$2;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->d(Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;)Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$Delegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$Delegate;->getTopMargin()I

    move-result p0

    return p0
.end method

.method public getVisibleViewRect()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$2;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->i(Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;)Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getCurrentViewRect()Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    :goto_0
    return-object p0
.end method

.method public isProgressBarVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$2;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->m(Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;)Z

    move-result p0

    return p0
.end method

.method public origin()Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$OriginType;
    .locals 0

    sget-object p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$OriginType;->IMAGE:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$OriginType;

    return-object p0
.end method

.method public requestUpdatedElementRect()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$2;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->i(Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;)Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getContextMenuImageElementBounds()V

    :cond_0
    return-void
.end method

.method public scrollBy(FF)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$2;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->i(Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;)Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    if-eqz p0, :cond_0

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/Terrace;->scrollBy(II)V

    :cond_0
    return-void
.end method

.method public updateBrowserControlsState(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$2;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->p(Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;I)V

    return-void
.end method
