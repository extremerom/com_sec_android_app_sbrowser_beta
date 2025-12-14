.class public Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupView$Delegate;
.implements Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupView$Listener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mReaderOption:Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOption;

.field private final mReaderOptionListener:Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionListener;

.field private mReaderOptionPopupView:Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionListener;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionHandler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionHandler;->mReaderOptionListener:Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionListener;

    new-instance p1, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOption;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOption;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionHandler;->mReaderOption:Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOption;

    return-void
.end method


# virtual methods
.method public getFontScale()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionHandler;->mReaderOption:Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOption;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOption;->getFontScale()I

    move-result p0

    return p0
.end method

.method public getThemeColor()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionHandler;->mReaderOption:Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOption;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOption;->getThemeColor()I

    move-result p0

    return p0
.end method

.method public hideReaderOptionPopup()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionHandler;->isReaderOptionPopupShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ReaderOptionHandler"

    const-string v1, "[hideReaderOptionPopup]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionHandler;->mReaderOptionPopupView:Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupView;->hideReaderOptionPopup()V

    return-void
.end method

.method public isBlackTheme()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionHandler;->mReaderOption:Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOption;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOption;->isBlackTheme()Z

    move-result p0

    return p0
.end method

.method public isEnlargeable()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionHandler;->mReaderOption:Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOption;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOption;->isEnlargeable()Z

    move-result p0

    return p0
.end method

.method public isReaderOptionPopupShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionHandler;->mReaderOptionPopupView:Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupView;->isPopupShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSepiaTheme()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionHandler;->mReaderOption:Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOption;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOption;->isSepiaTheme()Z

    move-result p0

    return p0
.end method

.method public isShrinkable()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionHandler;->mReaderOption:Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOption;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOption;->isShrinkable()Z

    move-result p0

    return p0
.end method

.method public isThemeAvailable()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getInstance()Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->isThemeAvailable()Z

    move-result p0

    return p0
.end method

.method public isWhiteTheme()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionHandler;->mReaderOption:Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOption;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOption;->isWhiteTheme()Z

    move-result p0

    return p0
.end method

.method public notifyFontScaleChanged()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionHandler;->mReaderOption:Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOption;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOption;->loadFontScale()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[notifyFontScaleChanged] : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionHandler;->mReaderOption:Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOption;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOption;->getFontScale()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReaderOptionHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionHandler;->updateFontScaleButton()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionHandler;->mReaderOptionListener:Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionListener;->onFontScaleChanged()V

    return-void
.end method

.method public notifyReaderThemeChanged()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionHandler;->mReaderOption:Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOption;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOption;->loadThemeColor()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[notifyReaderThemeChanged] : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionHandler;->mReaderOption:Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOption;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOption;->getThemeColor()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReaderOptionHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionHandler;->updateThemeButton()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionHandler;->mReaderOptionListener:Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionListener;->onThemeColorChanged()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionHandler;->updateReaderOptionPopup()V

    :cond_1
    return-void
.end method

.method public onEnlargeButtonClick()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionHandler;->mReaderOption:Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOption;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOption;->enlarge()V

    return-void
.end method

.method public onPopupHide()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionHandler;->sendSALoggingForPopupHide()V

    return-void
.end method

.method public onPopupShow()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionHandler;->sendSALoggingForPopupShow()V

    return-void
.end method

.method public onShrinkButtonClick()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionHandler;->mReaderOption:Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOption;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOption;->shrink()V

    return-void
.end method

.method public onThemeButtonClick(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionHandler;->mReaderOption:Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOption;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOption;->setThemeColor(I)V

    return-void
.end method

.method public sendSALoggingForPopupHide()V
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionHandler;->mContext:Landroid/content/Context;

    instance-of v1, v0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    if-eqz v1, :cond_0

    instance-of v1, v0, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;->getScreenID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionHandler;->getThemeColor()I

    move-result v1

    int-to-long v1, v1

    const-string v3, "2252"

    invoke-static {v0, v3, v1, v2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionHandler;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;->getScreenID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionHandler;->getFontScale()I

    move-result p0

    int-to-long v1, p0

    const-string p0, "2253"

    invoke-static {v0, p0, v1, v2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public sendSALoggingForPopupShow()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionHandler;->mContext:Landroid/content/Context;

    instance-of v0, p0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    if-eqz v0, :cond_0

    instance-of v0, p0, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string v0, "2251"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setReaderOption(Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOption;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionHandler;->mReaderOption:Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOption;

    return-void
.end method

.method public showReaderOptionPopup(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionHandler;->isReaderOptionPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ReaderOptionHandler"

    const-string v1, "[showReaderOptionPopup]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p0, p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupView;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupView$Delegate;Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupView$Listener;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionHandler;->mReaderOptionPopupView:Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupView;->showReaderOptionPopup(Landroid/view/View;)V

    return-void
.end method

.method public updateFontScaleButton()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionHandler;->isReaderOptionPopupShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionHandler;->mReaderOptionPopupView:Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupView;->updateFontScaleButton()V

    return-void
.end method

.method public updateReaderOptionPopup()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionHandler;->isReaderOptionPopupShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionHandler;->mReaderOptionPopupView:Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupView;->updatePopupSize()V

    return-void
.end method

.method public updateThemeButton()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionHandler;->isReaderOptionPopupShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionHandler;->mReaderOptionPopupView:Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupView;->updateThemeColorButton()V

    return-void
.end method
