.class public Lcom/sec/android/app/sbrowser/main_activity/BackgroundCallerHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mActivity:Lm/n;

.field private mPackageNameForBackgroundCaller:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lm/n;)V
    .locals 0
    .param p1    # Lm/n;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_activity/BackgroundCallerHandler;->mActivity:Lm/n;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/main_activity/BackgroundCallerHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_activity/BackgroundCallerHandler;->lambda$showBackgroundCallerInfoIfRequired$0()V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/main_activity/BackgroundCallerHandler;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_activity/BackgroundCallerHandler;->lambda$showSnackBar$1(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method private isSystemBuild(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 2

    const-string p0, "BackgroundCallerHandler"

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1, p2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1}, Ljava/lang/SecurityException;-><init>()V

    throw p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string p1, "Caller with package name "

    const-string v1, " is not in the system build"

    invoke-static {p1, p2, v1, p0}, LB/e;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :catch_1
    const-string p1, "Package with name "

    const-string v1, " not found"

    invoke-static {p1, p2, v1, p0}, LB/e;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private synthetic lambda$showBackgroundCallerInfoIfRequired$0()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_activity/BackgroundCallerHandler;->showSnackBar()V

    return-void
.end method

.method private synthetic lambda$showSnackBar$1(Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    const-string p2, "extra_pkg_name"

    invoke-static {p2, p1}, Lt/b;->e(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_activity/BackgroundCallerHandler;->mActivity:Lm/n;

    const-class v1, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-class v0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sbrowser.settings.show_fragment"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const-string v0, "sbrowser.settings.show_fragment_args"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_activity/BackgroundCallerHandler;->mActivity:Lm/n;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startActivity(Landroid/app/Activity;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public confirmBackgroundCaller(Landroid/content/Intent;)V
    .locals 1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->getPackageNameIfBackgroundCaller(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_activity/BackgroundCallerHandler;->mPackageNameForBackgroundCaller:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_activity/BackgroundCallerHandler;->showBackgroundCallerInfoIfRequired()V

    return-void
.end method

.method public isActivityResumed()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_activity/BackgroundCallerHandler;->mActivity:Lm/n;

    invoke-virtual {p0}, Landroidx/activity/p;->getLifecycle()Landroidx/lifecycle/D;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/L;

    iget-object p0, p0, Landroidx/lifecycle/L;->d:Landroidx/lifecycle/C;

    sget-object v0, Landroidx/lifecycle/C;->RESUMED:Landroidx/lifecycle/C;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/C;->a(Landroidx/lifecycle/C;)Z

    move-result p0

    return p0
.end method

.method public setPackageNameForBackgroundCaller(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_activity/BackgroundCallerHandler;->mPackageNameForBackgroundCaller:Ljava/lang/String;

    return-void
.end method

.method public showBackgroundCallerInfoIfRequired()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_activity/BackgroundCallerHandler;->mPackageNameForBackgroundCaller:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/download/b;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/download/b;-><init>(ILjava/lang/Object;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public showSnackBar()V
    .locals 7

    const-string v0, "BackgroundCallerHandler"

    const-string v1, "Try to show snack bar"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_activity/BackgroundCallerHandler;->isActivityResumed()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_activity/BackgroundCallerHandler;->mPackageNameForBackgroundCaller:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_activity/BackgroundCallerHandler;->mPackageNameForBackgroundCaller:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/main_activity/BackgroundCallerHandler;->mPackageNameForBackgroundCaller:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_activity/BackgroundCallerHandler;->mActivity:Lm/n;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/sec/android/app/sbrowser/main_activity/BackgroundCallerHandler;->isSystemBuild(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "Package"

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "is SYSTEM app and not shows snackbar"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "Could not get app information : "

    invoke-static {v2, v1, v0}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/main_activity/BackgroundCallerHandler;->mActivity:Lm/n;

    const v5, 0x7f140630

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "<b>"

    const-string v6, "</b>"

    invoke-static {v5, v2, v6}, LV0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/utils/decoder/StringUtils;->naturalizeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/main_activity/BackgroundCallerHandler;->mActivity:Lm/n;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/utils/decoder/StringUtils;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->make(Landroid/app/Activity;Ljava/lang/CharSequence;)LH6/o;

    move-result-object v2

    iput v3, v2, LH6/m;->k:I

    new-instance v4, LFa/b;

    const/4 v5, 0x6

    invoke-direct {v4, v5, p0, v1}, LFa/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const v5, 0x7f140052

    invoke-virtual {v2, v5, v4}, LH6/o;->j(ILandroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_activity/BackgroundCallerHandler;->mActivity:Lm/n;

    const v4, 0x7f060223

    invoke-virtual {p0, v4}, Landroid/content/Context;->getColor(I)I

    move-result p0

    iget-object v4, v2, LH6/m;->i:LH6/l;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    invoke-virtual {v3}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->getActionView()Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v2}, LH6/o;->l()V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "Done:"

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method
