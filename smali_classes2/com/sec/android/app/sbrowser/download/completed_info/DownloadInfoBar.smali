.class public Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;
.super Lcom/sec/android/app/sbrowser/infobars/InfoBar;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;


# instance fields
.field private mButtonContainer:Landroid/widget/RelativeLayout;

.field private mCloseButton:Landroid/widget/ImageButton;

.field private mContext:Landroid/content/Context;

.field private mCount:I

.field private mDismissRunnable:Ljava/lang/Runnable;

.field private mDownloadInfoBarManager:Lcom/sec/android/app/sbrowser/download/completed_info/IDownloadInfoBarManager;

.field private mHandler:Landroid/os/Handler;

.field private mIsSuccess:Z

.field private mMessageTextView:Landroid/widget/TextView;

.field private mPrimaryButton:Landroid/widget/Button;

.field private mSuccessNotificationId:I

.field private mTerraceDownloadInfo:Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

.field private mTerraceDownloadItem:Lcom/sec/terrace/browser/download/TerraceDownloadItem;

.field mWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;Lcom/sec/android/app/sbrowser/download/completed_info/IDownloadInfoBarManager;Lcom/sec/terrace/browser/download/TerraceDownloadItem;ZI)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, ""

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;ILjava/lang/CharSequence;)V

    new-instance p2, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar$1;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar$1;-><init>(Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mDismissRunnable:Ljava/lang/Runnable;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x1

    iput p2, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mCount:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mContext:Landroid/content/Context;

    new-instance p2, Ljava/lang/ref/WeakReference;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mWeakReference:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mDownloadInfoBarManager:Lcom/sec/android/app/sbrowser/download/completed_info/IDownloadInfoBarManager;

    invoke-virtual {p4}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getDownloadInfo()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mTerraceDownloadInfo:Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mTerraceDownloadItem:Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    iput-boolean p5, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mIsSuccess:Z

    iput p6, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mSuccessNotificationId:I

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mCloseButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mCount:I

    return p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mPrimaryButton:Landroid/widget/Button;

    return-object p0
.end method

.method private setInfoBarButtonBackground(Z)V
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mPrimaryButton:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/sec/sbrowser/spl/wrapper/MajoTextView;->setButtonShapeEnabled(Landroid/widget/TextView;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mPrimaryButton:Landroid/widget/Button;

    invoke-static {p0, v0}, Lcom/sec/sbrowser/spl/wrapper/MajoTextView;->setButtonShapeEnabled(Landroid/widget/TextView;Z)V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed to set button shape enabled "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DownloadInfoBar"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mPrimaryButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mContext:Landroid/content/Context;

    const v1, 0x7f060293

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mPrimaryButton:Landroid/widget/Button;

    const p1, 0x7f080185

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public createView()Landroid/view/View;
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e01f4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0614

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mCloseButton:Landroid/widget/ImageButton;

    const v3, 0x7f080170

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mCloseButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar$2;-><init>(Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mCloseButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar$3;

    invoke-direct {v3, p0}, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar$3;-><init>(Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mCloseButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar$4;

    invoke-direct {v3, p0}, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar$4;-><init>(Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0b01f5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mPrimaryButton:Landroid/widget/Button;

    new-instance v3, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar$5;

    invoke-direct {v3, p0}, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar$5;-><init>(Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mPrimaryButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/view/View;->setNextFocusUpId(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mPrimaryButton:Landroid/widget/Button;

    new-instance v2, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar$6;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar$6;-><init>(Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mIsSuccess:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mPrimaryButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f140491

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->getScreenID()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mCount:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "8770"

    invoke-static {v1, v3, v2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mPrimaryButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f140497

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->getScreenID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "8766"

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const v1, 0x7f0b0617

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mMessageTextView:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mIsSuccess:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mTerraceDownloadInfo:Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    invoke-virtual {v3}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const v4, 0x7f1404a5

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const v6, 0x7f120022

    invoke-virtual {v3, v6, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mContext:Landroid/content/Context;

    const v4, 0x7f140468

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mTerraceDownloadInfo:Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    invoke-virtual {v4}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    const v1, 0x7f0b043c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mButtonContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mDismissRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isShowButtonShapeEnabled()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->setInfoBarButtonBackground(Z)V

    return-object v0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    return-object p0
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 0

    const-string p0, "878"

    return-object p0
.end method

.method public isSuccess()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mIsSuccess:Z

    return p0
.end method

.method public onCloseButtonClicked()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->onCloseButtonClicked()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->getInfoBarContainer()Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->removeInfoBar(Lcom/sec/android/app/sbrowser/infobars/InfoBar;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mDownloadInfoBarManager:Lcom/sec/android/app/sbrowser/download/completed_info/IDownloadInfoBarManager;

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/download/completed_info/IDownloadInfoBarManager;->onDismissed(Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPrimaryButtonClicked()V
    .locals 10

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mIsSuccess:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mTerraceDownloadInfo:Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mTerraceDownloadInfo:Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getOriginalUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mTerraceDownloadInfo:Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getReferrer()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mTerraceDownloadInfo:Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mTerraceDownloadInfo:Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getDownloadGuid()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mTerraceDownloadInfo:Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->isOffTheRecord()Z

    move-result v6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mTerraceDownloadItem:Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getSystemDownloadId()J

    move-result-wide v7

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Lcom/sec/android/app/sbrowser/download/DownloadFileUtils;->checkReadStoragePermissionAndOpenFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJZ)V

    iget v0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mSuccessNotificationId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const-string v1, "DownloadNotificationService"

    iget v2, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mSuccessNotificationId:I

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mSuccessNotificationId:I

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/download/DNSUtils;->hideDanglingSummaryNotification(Landroid/content/Context;I)V

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mCount:I

    const/4 v1, 0x1

    const-string v2, "8772"

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->getScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    invoke-static {v0, v2, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->getScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-static {v0, v2, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->getDownloadManagerService()Lcom/sec/android/app/sbrowser/download/DownloadManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mTerraceDownloadInfo:Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->showRetryDialog(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->getScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "8769"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->onCloseButtonClicked()V

    return-void
.end method

.method public updateCount()V
    .locals 6

    iget v0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mCount:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mMessageTextView:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mCount:I

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mTerraceDownloadInfo:Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    invoke-virtual {v4}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const v5, 0x7f120022

    invoke-virtual {v2, v5, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mButtonContainer:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->mDismissRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
