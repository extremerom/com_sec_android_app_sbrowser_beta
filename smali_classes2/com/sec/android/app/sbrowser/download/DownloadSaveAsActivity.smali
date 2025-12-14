.class public Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;
.super Lcom/sec/android/app/sbrowser/common/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field private mActionView:Landroid/widget/LinearLayout;

.field private mActivityStopReceiver:Landroid/content/BroadcastReceiver;

.field private mCancelActionView:Landroid/widget/Button;

.field private mDownloadPath:Ljava/lang/String;

.field private mDownloadSaveAsPathForChina:Ljava/lang/String;

.field private mDownloadSourceText:Landroid/widget/TextView;

.field private mExtension:Ljava/lang/String;

.field private mFilename:Ljava/lang/String;

.field private mFilenameEditText:Landroid/widget/EditText;

.field private mFilenameEditTextWatcher:Landroid/text/TextWatcher;

.field private mFilesize:J

.field private mFolderPathTextView:Landroid/widget/TextView;

.field private mInitialFilename:Ljava/lang/String;

.field private final mInvalidCharsPattern:Ljava/util/regex/Pattern;

.field private mIsCancelRequired:Z

.field private mIsChinaUiEnabled:Z

.field private mIsDarkModeEnabled:Z

.field private mIsFromSecureDownload:Z

.field private mIsSecretDownloadEnabled:Z

.field private mNativeCallbackId:J

.field private mNegativeButton:Landroid/widget/TextView;

.field private mPositiveButton:Landroid/widget/TextView;

.field private mSaveActionView:Landroid/widget/Button;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSecretModeChangedListener:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;

.field private mSecureDownloadOaid:Ljava/lang/String;

.field private mSecureDownloadPackageName:Ljava/lang/String;

.field private mSelectFolderLayout:Landroid/widget/LinearLayout;

.field private mTaskName:Ljava/lang/String;

.field private mWarningText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/BaseActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mIsCancelRequired:Z

    new-instance v0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity$1;-><init>(Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mFilenameEditTextWatcher:Landroid/text/TextWatcher;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mIsFromSecureDownload:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isChina()Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mIsChinaUiEnabled:Z

    const-string v0, "[\\*\uff0a/\\\\\\?:<>\\|\"]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mInvalidCharsPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method private actionBarBackground()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mActionView:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f060139

    goto :goto_0

    :cond_0
    const v1, 0x7f060224

    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method private actionBarResourceInit()V
    .locals 3

    const v0, 0x7f0b007d

    invoke-virtual {p0, v0}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mActionView:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0080

    invoke-virtual {p0, v0}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mCancelActionView:Landroid/widget/Button;

    const v0, 0x7f0b0084

    invoke-virtual {p0, v0}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mSaveActionView:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mCancelActionView:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->getGlobalFontSize()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070c7a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mCancelActionView:Landroid/widget/Button;

    int-to-float v0, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mSaveActionView:Landroid/widget/Button;

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->actionBarBackground()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->showButtonBackground()V

    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mCancelActionView:Landroid/widget/Button;

    const v1, 0x7f060168

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mSaveActionView:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method private adjustDialogWidth()V
    .locals 3

    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->getSmallestDeviceWidthDp(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0x258

    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070473

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070474

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private cancelDownload()V
    .locals 10

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mIsCancelRequired:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->getDownloadManagerService()Lcom/sec/android/app/sbrowser/download/DownloadManagerService;

    move-result-object v1

    iget-wide v4, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mNativeCallbackId:J

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const-string v2, ""

    const-string v3, ""

    move-object v9, p0

    invoke-virtual/range {v1 .. v9}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->onPreDownloadResult(Ljava/lang/String;Ljava/lang/String;JJZLandroid/app/Activity;)V

    return-void
.end method

.method private checkAndDisableSave(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mInvalidCharsPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :cond_1
    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->setEnabledDownloadButton(Z)V

    return-void
.end method

.method private checkAndStartDownload()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mFilenameEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mExtension:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->getScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "8805"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lm/k;

    const v1, 0x7f1501c5

    invoke-direct {v0, p0, v1}, Lm/k;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity$8;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity$8;-><init>(Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;)V

    const v3, 0x7f1402c1

    invoke-virtual {v0, v3, v1}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity$7;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity$7;-><init>(Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;)V

    const v3, 0x7f14045f

    invoke-virtual {v0, v3, v1}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object v0

    iget-object v1, v0, Lm/k;->a:Lm/h;

    iput-boolean v2, v1, Lm/h;->m:Z

    const v1, 0x7f140467

    invoke-virtual {v0, v1}, Lm/k;->e(I)V

    const v1, 0x7f140466

    invoke-virtual {v0, v1}, Lm/k;->a(I)V

    invoke-virtual {v0}, Lm/k;->create()Lm/l;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mFilenameEditText:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->hideKeyboard(Landroid/view/View;)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mFilenameEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->hideKeyboardAndStartDownload()V

    :goto_1
    return-void

    :cond_3
    :goto_2
    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->setEnabledWarningText(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mWarningText:Landroid/widget/TextView;

    const v1, 0x7f1404a0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mIsChinaUiEnabled:Z

    const/4 v1, 0x0

    const v2, 0x7f06039a

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mPositiveButton:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mPositiveButton:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mSaveActionView:Landroid/widget/Button;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mSaveActionView:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Landroid/view/View;->setEnabled(Z)V

    :goto_3
    return-void
.end method

.method private createReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mActivityStopReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity$3;-><init>(Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mActivityStopReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->registerBroadcastReceiver()V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->lambda$init$0()V

    return-void
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->lambda$hideKeyboardAndStartDownload$2()V

    return-void
.end method

.method private hideKeyboardAndStartDownload()V
    .locals 4

    const-string v0, "DownloadSaveAsActivity"

    const-string v1, "Start Download with selecting save button"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mIsSecretDownloadEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->getScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1005"

    const-string v2, "Download file in Secret Mode"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mFilenameEditText:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->hideKeyboard(Landroid/view/View;)Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/download/g;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/download/g;-><init>(Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;I)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->lambda$init$1(Landroid/view/View;Z)V

    return-void
.end method

.method private init()V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-string v3, "extra_data_key"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/download/DownloadDataHolder;->getData(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v0, "DownloadSaveAsActivity"

    const-string v2, "Failed to retrieve PreDownloadInfo from holder. Aborting."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mIsCancelRequired:Z

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;->getFilename()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->setFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mFilename:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mIsChinaUiEnabled:Z

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;->getPath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mDownloadSaveAsPathForChina:Ljava/lang/String;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/common/download/DownloadPathUtils;->getDownloadSaveAsPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mDownloadPath:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;->getPath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mDownloadPath:Ljava/lang/String;

    :goto_0
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;->getCallbackID()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mNativeCallbackId:J

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;->getFilesize()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mFilesize:J

    iget-boolean v5, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mIsChinaUiEnabled:Z

    if-nez v5, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->getDownloadManagerService()Lcom/sec/android/app/sbrowser/download/DownloadManagerService;

    move-result-object v5

    iget-wide v6, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mNativeCallbackId:J

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->isValidCallbackID(J)Z

    move-result v5

    if-nez v5, :cond_3

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mIsCancelRequired:Z

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_3
    iput-object v4, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mInitialFilename:Ljava/lang/String;

    const v4, 0x7f0b0456

    invoke-virtual {p0, v4}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mWarningText:Landroid/widget/TextView;

    const v4, 0x7f0b0501

    invoke-virtual {p0, v4}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mFilenameEditText:Landroid/widget/EditText;

    const v4, 0x7f0b0458

    invoke-virtual {p0, v4}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mDownloadSourceText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mFilenameEditText:Landroid/widget/EditText;

    const-string v5, "inputType=PredictionOff;inputType=filename;disableEmoticonInput=true"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mFilename:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mDownloadPath:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p0, v4, v5, v6}, Lcom/sec/android/app/sbrowser/download/DownloadFileUtils;->getUniqueFilename(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mFilenameEditText:Landroid/widget/EditText;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isNightModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mFilenameEditText:Landroid/widget/EditText;

    const v5, 0x7f060d9f

    invoke-virtual {p0, v5}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setHighlightColor(I)V

    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mFilenameEditText:Landroid/widget/EditText;

    new-instance v5, LK6/b;

    const/4 v6, 0x4

    invoke-direct {v5, v6, p0}, LK6/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mFilenameEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mFilenameEditText:Landroid/widget/EditText;

    const/16 v5, 0xc8

    invoke-static {p0, v5}, Lcom/sec/android/app/sbrowser/common/device/InputFilterUtil;->getMaxLengthFilter(Landroid/content/Context;I)[Landroid/text/InputFilter;

    move-result-object v5

    aget-object v5, v5, v0

    new-instance v6, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity$6;

    invoke-direct {v6, p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity$6;-><init>(Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;)V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/InputFilterUtil;->getEmojiExcludeFilter(Landroid/content/Context;)Landroid/text/InputFilter;

    move-result-object v7

    const/4 v8, 0x3

    new-array v8, v8, [Landroid/text/InputFilter;

    aput-object v5, v8, v0

    aput-object v6, v8, v1

    const/4 v1, 0x2

    aput-object v7, v8, v1

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mFilenameEditText:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mFilenameEditText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mFilenameEditTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/download/PreDownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mIsChinaUiEnabled:Z

    if-nez v3, :cond_6

    if-nez v1, :cond_5

    const v1, 0x7f0b0459

    invoke-virtual {p0, v1}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mDownloadSourceText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/download_intercept/rule/DLInterceptUtil;->isSupportDLIntercept()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "isFromSecureDownload"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mIsFromSecureDownload:Z

    if-eqz v0, :cond_7

    const-string v0, "SecureDownloadPackageName"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mSecureDownloadPackageName:Ljava/lang/String;

    const-string v0, "SecureDownloadOaidValue"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mSecureDownloadOaid:Ljava/lang/String;

    :cond_7
    return-void
.end method

.method private initChina()V
    .locals 3

    const-string v0, "DownloadSaveAsActivity"

    const-string v1, "init china"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    const v0, 0x7f150204

    invoke-virtual {p0, v0}, Lm/n;->setTheme(I)V

    const v0, 0x7f0e01f9

    invoke-virtual {p0, v0}, Lm/n;->setContentView(I)V

    const v0, 0x7f0b053e

    invoke-virtual {p0, v0}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->actionBarResourceInit()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->setLightStatusBarTheme()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->init()V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mDownloadPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mDownloadSaveAsPathForChina:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mDownloadPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/download/DownloadPathUtils;->setDownloadSaveAsPath(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, v0}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mFolderPathTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mDownloadPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/download/DownloadPathUtils;->getReadablePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b0429

    invoke-virtual {p0, v0}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0603bf

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    const v0, 0x7f0b042a

    invoke-virtual {p0, v0}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mSelectFolderLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity$2;-><init>(Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initGlobal()V
    .locals 9

    const-string v0, "DownloadSaveAsActivity"

    const-string v1, "initGlobal"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0e01fa

    invoke-virtual {p0, v0}, Lm/n;->setContentView(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->updateView()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->init()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mFilename:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mDownloadPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/download/DownloadFileUtils;->isFileExisting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->isDownloadRenamePopupEnabled()Z

    move-result v1

    const v2, 0x7f0b0460

    invoke-virtual {p0, v2}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(I)Z

    move-result v3

    const/16 v4, 0x8

    if-eqz v3, :cond_1

    new-instance v3, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity$4;

    invoke-direct {v3, p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity$4;-><init>(Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;)V

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mSecretModeChangedListener:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->getInstance(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    move-result-object v3

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mSecretModeChangedListener:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;

    invoke-virtual {v3, v5}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->addListener(Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;)V

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mIsSecretDownloadEnabled:Z

    if-eqz v3, :cond_0

    const v3, 0x7f14049d

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    const v3, 0x7f14049e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const v2, 0x7f0b045e

    invoke-virtual {p0, v2}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-wide v5, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mFilesize:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-lez v3, :cond_3

    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f14049f

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mFilesize:J

    invoke-static {p0, v5, v6}, Lcom/sec/android/app/sbrowser/download/DownloadUtils;->getStringForDownloadedBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    if-nez v0, :cond_5

    if-nez v1, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->isSecretDownloadEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mFilenameEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0b0454

    invoke-virtual {p0, v0}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    const v0, 0x7f0b0a42

    invoke-virtual {p0, v0}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity$5;-><init>(Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const v0, 0x7f0b0084

    invoke-virtual {p0, v0}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mPositiveButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mPositiveButton:Landroid/widget/TextView;

    const v1, 0x7f14049b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    const v0, 0x7f0b0080

    invoke-virtual {p0, v0}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mNegativeButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mNegativeButton:Landroid/widget/TextView;

    const v1, 0x7f140698

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->showButtonBackground()V

    return-void
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;)Ljava/util/regex/Pattern;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mInvalidCharsPattern:Ljava/util/regex/Pattern;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->cancelDownload()V

    return-void
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->checkAndDisableSave(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$hideKeyboardAndStartDownload$2()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->startDownload()V

    return-void
.end method

.method private lambda$init$0()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    sget-object v0, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Lf1/P;->a(Landroid/view/View;)Lf1/w0;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lf1/w0;->a:Lf1/u0;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lf1/u0;->o(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$init$1(Landroid/view/View;Z)V
    .locals 2

    if-nez p2, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->hideKeyboard(Landroid/view/View;)Z

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscape()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/sec/android/app/sbrowser/download/g;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/sec/android/app/sbrowser/download/g;-><init>(Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;I)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mFilenameEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x2e

    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mFilenameEditText:Landroid/widget/EditText;

    const/4 v0, -0x1

    if-le p2, v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    :goto_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/widget/EditText;->setSelection(II)V

    :goto_1
    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->hideKeyboardAndStartDownload()V

    return-void
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->resetRenameText()V

    return-void
.end method

.method public static bridge synthetic o(Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->selectFolder()V

    return-void
.end method

.method public static bridge synthetic p(Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;)V
    .locals 1

    const v0, 0x7f14046c

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->setWarningText(I)V

    return-void
.end method

.method public static bridge synthetic q(Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->showFileNameAndExistenceWarningTextIfRequired()V

    return-void
.end method

.method private registerBroadcastReceiver()V
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "MPACTIVITY_STOP_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mActivityStopReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "com.sec.android.app.sbrowser.beta.permission.MPACTIVITY_PERMISSION"

    const/4 v3, 0x0

    invoke-static {p0, v1, v0, v2, v3}, Lcom/sec/android/app/sbrowser/common/device/ContextUtils;->registerExportedBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private resetRenameText()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->getScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "8807"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mFilenameEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mFilenameEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mFilename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, LB/e;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mExtension:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mFilenameEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mFilenameEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method private selectFolder()V
    .locals 4

    const-string v0, "Select Folder"

    const-string v1, "DownloadSaveAsActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.myfiles.PICK_DATA_DOWNLOAD"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "uri"

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mDownloadPath:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, v0, v2}, Landroidx/activity/p;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "ActivityNotFoundExceptioncom.sec.android.app.myfiles.PICK_DATA_DOWNLOAD"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setEnabledDownloadButton(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mIsDarkModeEnabled:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0603cb

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const v1, 0x7f06039b

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mFilenameEditText:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_2

    :cond_1
    const v0, 0x7f0600fb

    if-eqz p1, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    const v1, 0x7f06039a

    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mFilenameEditText:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :goto_2
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mIsChinaUiEnabled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mSaveActionView:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mSaveActionView:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mPositiveButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mPositiveButton:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->setEnabledWarningText(Z)V

    :goto_3
    return-void
.end method

.method private setEnabledWarningText(Z)V
    .locals 3

    const v0, 0x7f0b0454

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mWarningText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mFilenameEditText:Landroid/widget/EditText;

    const v1, 0x7f0603c5

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0, v0}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mWarningText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mFilenameEditText:Landroid/widget/EditText;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mIsDarkModeEnabled:Z

    if-eqz v1, :cond_1

    const v1, 0x7f0603cb

    goto :goto_0

    :cond_1
    const v1, 0x7f0603ca

    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0, v0}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f0601e0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    return-void
.end method

.method private setFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p1, "DownloadSaveAsActivity"

    const-string v0, "Filename is null or empty using default file name"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "DownloadFile"

    :cond_1
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mExtension:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mExtension:Ljava/lang/String;

    :goto_0
    return-object p1
.end method

.method private setLightStatusBarTheme()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setLightStatusBarTheme(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setLightStatusBarTheme(Landroid/content/Context;Z)V

    :goto_0
    return-void
.end method

.method private setWarningText(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->setEnabledDownloadButton(Z)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->setEnabledWarningText(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mWarningText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private showButtonBackground()V
    .locals 2

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mIsChinaUiEnabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mCancelActionView:Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/sec/sbrowser/spl/wrapper/MajoTextView;->setButtonShapeEnabled(Landroid/widget/TextView;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mSaveActionView:Landroid/widget/Button;

    invoke-static {p0, v1}, Lcom/sec/sbrowser/spl/wrapper/MajoTextView;->setButtonShapeEnabled(Landroid/widget/TextView;Z)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mPositiveButton:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/sec/sbrowser/spl/wrapper/MajoTextView;->setButtonShapeEnabled(Landroid/widget/TextView;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mNegativeButton:Landroid/widget/TextView;

    invoke-static {p0, v1}, Lcom/sec/sbrowser/spl/wrapper/MajoTextView;->setButtonShapeEnabled(Landroid/widget/TextView;Z)V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to set button shape enabled "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DownloadSaveAsActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private showFileNameAndExistenceWarningTextIfRequired()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mFilenameEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    :cond_0
    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const v0, 0x7f14046c

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->setWarningText(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mDownloadPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/download/DownloadFileUtils;->isFileExisting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f14046b

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->setWarningText(I)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mWarningText:Landroid/widget/TextView;

    const v0, 0x7f1404a0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method private startDownload()V
    .locals 10

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mIsCancelRequired:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mFilenameEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mFilename:Ljava/lang/String;

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mIsChinaUiEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mDownloadPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/download/DownloadPathUtils;->setDownloadSaveAsPath(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->getDownloadManagerService()Lcom/sec/android/app/sbrowser/download/DownloadManagerService;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mDownloadPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mFilename:Ljava/lang/String;

    iget-wide v4, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mNativeCallbackId:J

    iget-wide v6, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mFilesize:J

    const/4 v8, 0x1

    move-object v9, p0

    invoke-virtual/range {v1 .. v9}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->onPreDownloadResult(Ljava/lang/String;Ljava/lang/String;JJZLandroid/app/Activity;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mInitialFilename:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mFilename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "8829"

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->getScreenID()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->getScreenID()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->getScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "8832"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/download_intercept/rule/DLInterceptUtil;->isSupportDLIntercept()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mIsFromSecureDownload:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mSecureDownloadPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mSecureDownloadOaid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/download_intercept/ui/RecommendAppController;->requestRecommendAppInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private updateActivityWidth()V
    .locals 4

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/WindowUtils;->getWindowWidth(Landroid/app/Activity;)I

    move-result v1

    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    int-to-float v3, v1

    invoke-static {v2, v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getDialogWidthRatio(FI)F

    move-result v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private updateView()V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mIsChinaUiEnabled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->adjustDialogWidth()V

    const v0, 0x7f0b0455

    invoke-virtual {p0, v0}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0715f3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setBlurUiHighUltraThick(Landroid/content/Context;Landroid/view/View;I)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mIsChinaUiEnabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object p1

    const v0, 0x7f14049c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0
.end method

.method public getParentTask()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mTaskName:Ljava/lang/String;

    return-object p0
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mIsSecretDownloadEnabled:Z

    if-eqz p0, :cond_0

    const-string p0, "878"

    goto :goto_0

    :cond_0
    const-string p0, "302"

    :goto_0
    return-object p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/J;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "uri"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mDownloadPath:Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/download/DownloadPathUtils;->getWritablePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mDownloadPath:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mFolderPathTextView:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/download/DownloadPathUtils;->getReadablePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b0080

    if-eq p1, v0, :cond_2

    const v0, 0x7f0b0084

    if-eq p1, v0, :cond_1

    const v0, 0x7f0b053e

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->getScreenID()Ljava/lang/String;

    move-result-object p1

    const-string v0, "8323"

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->selectFolder()V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->checkAndStartDownload()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(I)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->getScreenID()Ljava/lang/String;

    move-result-object p1

    const-string v0, "8830"

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->getScreenID()Ljava/lang/String;

    move-result-object p1

    const-string v0, "8833"

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->cancelDownload()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lm/n;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSystemSupportNightTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mIsDarkModeEnabled:Z

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->updateActivityWidth()V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mIsChinaUiEnabled:Z

    if-nez v0, :cond_2

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->updateView()V

    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "saveAsActivityParent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mTaskName:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mIsDarkModeEnabled:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->isSecretDownloadEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mIsSecretDownloadEnabled:Z

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mIsChinaUiEnabled:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->initChina()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->initGlobal()V

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->createReceiver()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lm/n;->onDestroy()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mSecretModeChangedListener:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->getInstance(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mSecretModeChangedListener:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->removeListener(Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;)V

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mIsCancelRequired:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->cancelDownload()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mActivityStopReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mActivityStopReceiver:Landroid/content/BroadcastReceiver;

    :cond_2
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_4

    const/16 p1, 0x42

    if-eq p2, p1, :cond_0

    const/16 p1, 0xa0

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mPositiveButton:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mSaveActionView:Landroid/widget/Button;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->checkAndStartDownload()V

    :cond_3
    return p3

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/J;->onPause()V

    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->cancelDownload()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mIsChinaUiEnabled:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isNightModeEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const v0, 0x7f010015

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/J;->onResume()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->getScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "8831"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->getScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "8828"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mIsChinaUiEnabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mFilenameEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mFilenameEditText:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->showKeyboardWithDelay(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->mFilenameEditText:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->hideKeyboard(Landroid/view/View;)Z

    :goto_1
    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Lm/n;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Lm/n;->onStop()V

    return-void
.end method
