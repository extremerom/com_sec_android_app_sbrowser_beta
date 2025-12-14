.class Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/si_translate/TranslateBarBridge$TranslateBridgeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar$4;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLanguageCode(Z)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar$4;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getTransBarContainer()Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar$4;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getTransBarContainer()Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;->isTransBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar$4;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isTransBarContainerShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar$4;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getTransBarContainer()Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;->getLanguage(Z)Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;->getCode()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "si__MainViewTransBar"

    const-string v0, "getLanguageCode:en returned"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    move-result-object p0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string p1, "SOURCE"

    goto :goto_0

    :cond_1
    const-string p1, "TARGET"

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getLang(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRuntimeFlags()[Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isTransImg()Z

    move-result p0

    const-string v0, "0"

    const-string v1, "1"

    if-eqz p0, :cond_0

    move-object p0, v1

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isTransCaption()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->supportsImgTransMultiThreading()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v0, v1

    :cond_2
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {p0, v2, v0, v1}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isSplitMode()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar$4;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->g(Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;)Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar$4;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->g(Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;)Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;->isSplitMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar$4;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;)Z

    move-result p0

    return p0
.end method
