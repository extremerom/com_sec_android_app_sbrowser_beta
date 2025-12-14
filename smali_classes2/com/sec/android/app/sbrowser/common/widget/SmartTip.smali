.class public abstract Lcom/sec/android/app/sbrowser/common/widget/SmartTip;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/widget/SmartTip$EmptyListener;,
        Lcom/sec/android/app/sbrowser/common/widget/SmartTip$Listener;
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mLastState:I

.field protected mListener:Lcom/sec/android/app/sbrowser/common/widget/SmartTip$Listener;

.field protected mPopup:Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;

.field protected mTargetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/widget/SmartTip;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/widget/SmartTip;->mTargetView:Landroid/view/View;

    new-instance p1, Lcom/sec/android/app/sbrowser/common/widget/SmartTip$EmptyListener;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/common/widget/SmartTip$EmptyListener;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/widget/SmartTip;->mListener:Lcom/sec/android/app/sbrowser/common/widget/SmartTip$Listener;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/widget/SmartTip;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/widget/SmartTip;->mPopup:Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->dismiss(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/widget/SmartTip;->mPopup:Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "si__SmartTip"

    const-string v0, "FallbackException in dismiss of SmartTip"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public abstract getButtonResId()I
.end method

.method public abstract getMessageResId()I
.end method

.method public abstract getMessageString()Ljava/lang/String;
.end method

.method public getString(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/widget/SmartTip;->mTargetView:Landroid/view/View;

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isShowing()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/widget/SmartTip;->mPopup:Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->isShowing()Z

    move-result p0
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    const-string p0, "si__SmartTip"

    const-string v1, "FallbackException in isShowing of SmartTip"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/widget/SmartTip;->mListener:Lcom/sec/android/app/sbrowser/common/widget/SmartTip$Listener;

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/common/widget/SmartTip$Listener;->onSmartTipClicked(Lcom/sec/android/app/sbrowser/common/widget/SmartTip;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/widget/SmartTip;->onClickState()V

    return-void
.end method

.method public onClickState()V
    .locals 0

    return-void
.end method

.method public onExpandedState()V
    .locals 0

    return-void
.end method

.method public onHintState()V
    .locals 0

    return-void
.end method

.method public onShow()V
    .locals 0

    return-void
.end method

.method public onStateChanged(I)V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->STATE_DISMISSED:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v0}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/widget/SmartTip;->mLastState:I

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->STATE_HINT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v0}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/widget/SmartTip;->onHintState()V

    goto :goto_2

    :cond_1
    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->STATE_EXPANDED:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v0}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/widget/SmartTip;->mListener:Lcom/sec/android/app/sbrowser/common/widget/SmartTip$Listener;

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/common/widget/SmartTip$Listener;->onSmartTipExpanded(Lcom/sec/android/app/sbrowser/common/widget/SmartTip;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/widget/SmartTip;->onExpandedState()V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "FallbackException:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "si__SmartTip"

    invoke-static {p0, p1, v0}, Landroidx/recyclerview/widget/P;->q(Lcom/sec/sbrowser/spl/util/FallbackException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method

.method public show()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/widget/SmartTip;->mTargetView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/widget/SmartTip;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/widget/SmartTip;->mPopup:Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->dismiss(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/widget/SmartTip;->mPopup:Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/widget/SmartTip;->showAsExpanded()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->STATE_EXPANDED:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v0}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/widget/SmartTip;->mLastState:I

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->STATE_DISMISSED:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v0}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/widget/SmartTip;->mLastState:I

    :goto_0
    new-instance v0, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/widget/SmartTip;->mTargetView:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/widget/SmartTip;->mPopup:Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/widget/SmartTip;->mContext:Landroid/content/Context;

    const v2, 0x7f060bf9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/widget/SmartTip;->getMessageResId()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/widget/SmartTip;->getMessageString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/widget/SmartTip;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/widget/SmartTip;->mPopup:Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;

    invoke-virtual {v1, v0}, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->setMessage(Ljava/lang/CharSequence;)V

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/widget/SmartTip;->getButtonResId()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/widget/SmartTip;->mPopup:Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/widget/SmartTip;->getButtonResId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/common/widget/SmartTip;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    :cond_5
    iget v0, p0, Lcom/sec/android/app/sbrowser/common/widget/SmartTip;->mLastState:I

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->STATE_EXPANDED:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v1}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/widget/SmartTip;->mPopup:Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->setExpanded(Z)V

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/widget/SmartTip;->mPopup:Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/widget/SmartTip$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/common/widget/SmartTip$1;-><init>(Lcom/sec/android/app/sbrowser/common/widget/SmartTip;)V

    invoke-virtual {v0, v1}, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->setOnStateChangeListener(Lcom/sec/sbrowser/spl/wrapper/SemTipPopup$OnStateChangeListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/widget/SmartTip;->mPopup:Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->DIRECTION_DEFAULT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v1}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->show(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/widget/SmartTip;->onShow()V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string p0, "si__SmartTip"

    const-string v0, "FallbackException in show of SmartTip"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public abstract showAsExpanded()Z
.end method
