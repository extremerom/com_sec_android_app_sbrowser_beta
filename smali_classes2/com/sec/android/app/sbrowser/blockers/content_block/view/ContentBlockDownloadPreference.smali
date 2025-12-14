.class public Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;
.super Landroidx/preference/Preference;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$RequestDownloadCallback;
    }
.end annotation


# instance fields
.field private final mAccDelegate:Landroid/view/View$AccessibilityDelegate;

.field private mActivity:Landroid/app/Activity;

.field private mBadgeVisible:Z

.field private mCurrentStatus:I

.field private mDownloadButton:Landroid/widget/ImageButton;

.field private mDownloadCancelButton:Landroid/widget/Button;

.field private mDownloadContainer:Landroid/view/View;

.field private mDownloadProgressBar:Landroid/widget/ProgressBar;

.field private mDownloadProgressCallback:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$DownloadProgressCallback;

.field private mDownloadProgressContainer:Landroid/view/View;

.field private mDownloadSummary:Landroid/widget/TextView;

.field private mDownloadSummaryContainer:Landroid/view/View;

.field private mDownloadSummaryPercentage:Landroid/widget/TextView;

.field private mIcon:Landroid/widget/ImageView;

.field private mIsDownloadProgress:Z

.field private mIsEnabledCancelButton:Z

.field private mIsStubDownloadSupported:Z

.field private mItemContainer:Landroid/view/View;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRequestDownloadCallback:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$RequestDownloadCallback;

.field private mTextIconFirstChar:Ljava/lang/String;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;

.field private mViewHolder:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mCurrentStatus:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mBadgeVisible:Z

    new-instance v0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$1;-><init>(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mAccDelegate:Landroid/view/View$AccessibilityDelegate;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mActivity:Landroid/app/Activity;

    const p1, 0x7f0e01aa

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public static bridge synthetic A(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->updateNormalViews()V

    return-void
.end method

.method private canSupportDirectDownload()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.INSTALL_PACKAGES"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mIsStubDownloadSupported:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private canUpdateViews()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mViewHolder:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadSummary:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadSummaryPercentage:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadCancelButton:Landroid/widget/Button;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private changeDownloadProgressStateAndNotify(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mIsDownloadProgress:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadProgressCallback:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$DownloadProgressCallback;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mCurrentStatus:I

    invoke-interface {v0, p1, p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$DownloadProgressCallback;->onDownloadProgress(ZI)V

    :cond_0
    return-void
.end method

.method private clearState()V
    .locals 2

    invoke-virtual {p0}, Landroidx/preference/Preference;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private declared-synchronized dismissProgressDialog()V
    .locals 4

    const-string v0, "Exception: "

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mProgressDialog:Landroid/app/ProgressDialog;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "ContentBlock.DownloadPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->lambda$updateDownloadStatus$0()V

    return-void
.end method

.method private exitDownloadMode()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadProgressContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadSummaryPercentage:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadCancelButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mViewHolder:Landroid/view/View;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setNextFocusDownId(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isShowButtonShapeEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->setDownloadCancelButtonColors(Z)V

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mIsEnabledCancelButton:Z

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->changeDownloadProgressStateAndNotify(Z)V

    return-void
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadContainer:Landroid/view/View;

    return-object p0
.end method

.method public static getAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockFileUtils;->getIconFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    :try_start_0
    sget-object p1, Lcom/sec/sbrowser/spl/wrapper/MajoPackageManager;->ICON_TRAY_SQUIRCLE_MODE:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {p1}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, v0, p1}, Lcom/sec/sbrowser/spl/wrapper/MajoPackageManager;->getDrawableForIconTray(Landroid/content/pm/PackageManager;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getHumanReadableSize(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string p0, "MB"

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/high16 v3, 0x4090000000000000L    # 1024.0

    div-double/2addr v1, v3

    div-double/2addr v1, v3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadProgressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadProgressContainer:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadSummary:Landroid/widget/TextView;

    return-object p0
.end method

.method private synthetic lambda$updateDownloadStatus$0()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->canUpdateViews()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->exitDownloadMode()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->updateNormalViews()V

    :cond_0
    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadSummaryContainer:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static bridge synthetic o(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;)Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$RequestDownloadCallback;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mRequestDownloadCallback:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$RequestDownloadCallback;

    return-object p0
.end method

.method private onCreateView(Landroid/view/View;)Landroid/view/View;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$2;-><init>(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;)V

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mViewHolder:Landroid/view/View;

    const v0, 0x7f0b064c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mItemContainer:Landroid/view/View;

    const v0, 0x7f0b05ef

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mIcon:Landroid/widget/ImageView;

    const v0, 0x7f0b0d66

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mTitleView:Landroid/widget/TextView;

    const v0, 0x7f0b0423

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$3;-><init>(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadButton:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setNextFocusLeftId(I)V

    const v0, 0x7f0b0426

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadContainer:Landroid/view/View;

    const v0, 0x7f0b0453

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadProgressContainer:Landroid/view/View;

    const v0, 0x7f0b0452

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadProgressBar:Landroid/widget/ProgressBar;

    const v0, 0x7f0b045c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadSummaryContainer:Landroid/view/View;

    const v0, 0x7f0b045b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadSummary:Landroid/widget/TextView;

    const v0, 0x7f0b045d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadSummaryPercentage:Landroid/widget/TextView;

    const v0, 0x7f0b0425

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadCancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$4;-><init>(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadCancelButton:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setNextFocusUpId(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isShowButtonShapeEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->setDownloadCancelButtonColors(Z)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/blockers/content_block/download/ApkDownloadManager;->getInstance()Lcom/sec/android/app/sbrowser/blockers/content_block/download/ApkDownloadManager;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->getDownloadNotificationInfo(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->getType()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mCurrentStatus:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->updateDownloadStatus(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)V

    return-object p1
.end method

.method public static bridge synthetic p(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;)V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mCurrentStatus:I

    return-void
.end method

.method private processInstallAfterDownloadApk(Lcom/sec/android/app/sbrowser/common/stub/StubData;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/NetDeviceUtils;->isWifiConnected()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mCurrentStatus:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->canUpdateViews()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->updateNormalViews()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadContainer:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadSummaryPercentage:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadProgressContainer:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadCancelButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadCancelButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mViewHolder:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadCancelButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setNextFocusDownId(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isShowButtonShapeEnabled()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->setDownloadCancelButtonColors(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadSummary:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/stub/StubData;->getContentSize()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->getHumanReadableSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/blockers/content_block/download/ApkDownloadManager;->getInstance()Lcom/sec/android/app/sbrowser/blockers/content_block/download/ApkDownloadManager;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/stub/StubData;->getDownloadURI()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/stub/StubData;->getSignature()Ljava/lang/String;

    move-result-object v8

    move-object v5, p3

    move-object v6, p2

    invoke-virtual/range {v3 .. v8}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->requestInstallAfterDownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "6163"

    int-to-long v0, v0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_1
    return-void
.end method

.method public static bridge synthetic q(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->canUpdateViews()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic r(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->changeDownloadProgressStateAndNotify(Z)V

    return-void
.end method

.method private removeIconFrameWrapperViewIfNeeded(Landroid/widget/ImageView;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    const p1, 0x7f0b02f3

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private requestDownload()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/KnoxModeUtils;->isKnoxMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SecureFolderModeUtils;->isSecureFolderMode()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mIsDownloadProgress:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/NetDeviceUtils;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->showNetworkErrorDialog()V

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->changeDownloadProgressStateAndNotify(Z)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->isInstalledOrUpdatedFromPlayStore(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->canSupportDirectDownload()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$6;-><init>(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;)V

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->requestForNotificationPermissionIfNeeded(Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void

    :cond_4
    :goto_0
    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->sendRequestDownloadCallback(Z)V

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->changeDownloadProgressStateAndNotify(Z)V

    return-void

    :cond_5
    :goto_1
    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->sendRequestDownloadCallback(Z)V

    return-void
.end method

.method private requestDownloadInternal()V
    .locals 5

    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getDefaultAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->getScreenID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "6160"

    invoke-static {v2, v3, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->changeDownloadProgressStateAndNotify(Z)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f140366

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->showProgressDialog(Ljava/lang/String;)V

    new-instance v3, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$8;

    invoke-direct {v3, p0, v1, v0}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$8;-><init>(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "ContentBlock.DownloadPreference"

    const-string v1, "start download apk"

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    invoke-static {v0, v3, v2, p0}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->getDownloadUrl(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/stub/StubRequest$StubListener;ZI)V

    return-void
.end method

.method private requestForNotificationPermissionIfNeeded(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_1

    const-string v0, "android.permission.POST_NOTIFICATIONS"

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->hasRequestedPermissionForNotifications(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mActivity:Landroid/app/Activity;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$7;

    invoke-direct {v2, p0, p1, p2}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$7;-><init>(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;Landroid/content/Context;Ljava/lang/Runnable;)V

    invoke-static {v1, v0, v2}, Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper$PermissionCallback;)V

    return-void

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static bridge synthetic s(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->dismissProgressDialog()V

    return-void
.end method

.method private sendRequestDownloadCallback(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mRequestDownloadCallback:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$RequestDownloadCallback;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$RequestDownloadCallback;->onSuccess()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$RequestDownloadCallback;->onFailure(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setDownloadCancelButtonColors(Z)V
    .locals 2

    if-eqz p1, :cond_1

    :try_start_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadCancelButton:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/sec/sbrowser/spl/wrapper/MajoTextView;->setButtonShapeEnabled(Landroid/widget/TextView;Z)V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to set button shape enabled "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ContentBlock.DownloadPreference"

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadCancelButton:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f080135

    goto :goto_0

    :cond_0
    const p1, 0x7f080136

    :goto_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0602bb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadCancelButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadCancelButton:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0602ba

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadCancelButton:Landroid/widget/Button;

    const p1, 0x7f080134

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_1
    return-void
.end method

.method private setImageIcon(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    const v0, 0x7f0b02f3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setTextIcon(Landroid/widget/ImageView;)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mTextIconFirstChar:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b02f3

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070304

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const p1, 0x7f0800d2

    invoke-virtual {v4, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p1, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mTextIconFirstChar:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private showNetworkErrorDialog()V
    .locals 4

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f140368

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f140367

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lm/k;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    const v3, 0x7f1501c5

    invoke-direct {v2, p0, v3}, Lm/k;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v0}, Lm/k;->setTitle(Ljava/lang/CharSequence;)Lm/k;

    move-result-object p0

    iget-object v0, p0, Lm/k;->a:Lm/h;

    iput-object v1, v0, Lm/h;->f:Ljava/lang/CharSequence;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lm/h;->m:Z

    invoke-virtual {p0}, Lm/k;->create()Lm/l;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showProgressDialog(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mProgressDialog:Landroid/app/ProgressDialog;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isNightModeEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x3f4ccccd    # 0.8f

    invoke-virtual {p1, v0}, Landroid/view/Window;->setDimAmount(F)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x3f266666    # 0.65f

    invoke-virtual {p1, v0}, Landroid/view/Window;->setDimAmount(F)V

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_2
    return-void
.end method

.method private updateDownloadStatus()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->dismissProgressDialog()V

    new-instance v0, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;-><init>()V

    iget v1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mCurrentStatus:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->setType(I)Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->build()Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->updateDownloadStatus(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)V

    return-void
.end method

.method private updateNormalViews()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mIsDownloadProgress:Z

    if-eqz p0, :cond_0

    const/16 p0, 0x8

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public static bridge synthetic v(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;Lcom/sec/android/app/sbrowser/common/stub/StubData;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->processInstallAfterDownloadApk(Lcom/sec/android/app/sbrowser/common/stub/StubData;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic w(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->requestDownload()V

    return-void
.end method

.method public static bridge synthetic x(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->requestDownloadInternal()V

    return-void
.end method

.method public static bridge synthetic y(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->sendRequestDownloadCallback(Z)V

    return-void
.end method

.method public static bridge synthetic z(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->setImageIcon(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public getScreenID()Ljava/lang/String;
    .locals 0

    const-string p0, "609"

    return-object p0
.end method

.method public onBindViewHolder(Lw2/H;)V
    .locals 7

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Lw2/H;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->onCreateView(Landroid/view/View;)Landroid/view/View;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->updateNormalViews()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadCancelButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mIsEnabledCancelButton:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mViewHolder:Landroid/view/View;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mIsEnabledCancelButton:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadCancelButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setNextFocusDownId(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isShowButtonShapeEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->setDownloadCancelButtonColors(Z)V

    iget-object v0, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0804ca

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mItemContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mItemContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v2, v0, v3, v0, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070306

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mTitleView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3, v4}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f140361

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070304

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mIcon:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->removeIconFrameWrapperViewIfNeeded(Landroid/widget/ImageView;)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->getAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager;

    invoke-direct {v3}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    new-instance v6, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$5;

    invoke-direct {v6, p0, v0, v2}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$5;-><init>(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3, v0, v5, v6}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager;->updateAppIcon(Landroid/content/Context;Ljava/util/List;Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback$ResultCallbackOnWorkerThread;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mIcon:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->setTextIcon(Landroid/widget/ImageView;)V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070303

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v0, v4, v3, v2, v5}, Landroid/view/View;->setPaddingRelative(IIII)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mBadgeVisible:Z

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->setBadgeVisible(Z)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadProgressContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadProgressContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v2, v0, v3, v0, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadSummaryContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadSummaryContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v1, v0, v2, v0, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mAccDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->dismissProgressDialog()V

    return-void
.end method

.method public setBadgeVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mBadgeVisible:Z

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setDotVisibility(Z)V

    return-void
.end method

.method public setDownloadProgressCallback(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$DownloadProgressCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadProgressCallback:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$DownloadProgressCallback;

    return-void
.end method

.method public setIsDownloadProgress(ZI)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mIsDownloadProgress:Z

    iput p2, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mCurrentStatus:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->updateDownloadStatus()V

    return-void
.end method

.method public setIsStubDownloadSupported(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mIsStubDownloadSupported:Z

    return-void
.end method

.method public setRequestDownloadCallback(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$RequestDownloadCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mRequestDownloadCallback:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference$RequestDownloadCallback;

    return-void
.end method

.method public setTextIconFirstChar(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mTextIconFirstChar:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public updateDownloadStatus(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)V
    .locals 5

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->getType()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mCurrentStatus:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->setBadgeVisible(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->clearState()V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->getType()I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-eqz v1, :cond_6

    if-eq v1, v3, :cond_4

    const/4 p1, 0x2

    const/4 v4, -0x1

    if-eq v1, p1, :cond_2

    const/4 p1, 0x4

    if-eq v1, p1, :cond_0

    const/4 p1, 0x6

    if-eq v1, p1, :cond_2

    const/4 p1, 0x7

    if-eq v1, p1, :cond_2

    iput v4, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mCurrentStatus:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->canUpdateViews()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->exitDownloadMode()V

    goto/16 :goto_0

    :cond_0
    iput v4, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mCurrentStatus:I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadCancelButton:Landroid/widget/Button;

    if-eqz p1, :cond_1

    new-instance v0, LG6/e;

    const/16 v1, 0x15

    invoke-direct {v0, v1, p0}, LG6/e;-><init>(ILjava/lang/Object;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void

    :cond_2
    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mIsEnabledCancelButton:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->canUpdateViews()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadContainer:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadProgressContainer:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadSummaryPercentage:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadCancelButton:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadCancelButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mViewHolder:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setNextFocusDownId(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isShowButtonShapeEnabled()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->setDownloadCancelButtonColors(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadSummary:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f140365

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->changeDownloadProgressStateAndNotify(Z)V

    goto/16 :goto_0

    :cond_4
    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mIsEnabledCancelButton:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->canUpdateViews()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadProgressContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadSummaryContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadSummary:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadSummary:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->getCurrentProgress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->getPercentCompleted()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadSummaryPercentage:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadSummaryPercentage:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->getHumanReadablePercentage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadCancelButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadCancelButton:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mViewHolder:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadCancelButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setNextFocusDownId(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isShowButtonShapeEnabled()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->setDownloadCancelButtonColors(Z)V

    :cond_5
    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->changeDownloadProgressStateAndNotify(Z)V

    goto :goto_0

    :cond_6
    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mIsEnabledCancelButton:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->canUpdateViews()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadProgressContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadSummaryPercentage:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadCancelButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadCancelButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mViewHolder:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadCancelButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setNextFocusDownId(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isShowButtonShapeEnabled()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->setDownloadCancelButtonColors(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadSummary:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->mDownloadSummary:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->getTotalBytes()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->getMegaBytesFromBytes(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->changeDownloadProgressStateAndNotify(Z)V

    :cond_8
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->canUpdateViews()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;->updateNormalViews()V

    :cond_9
    return-void
.end method
