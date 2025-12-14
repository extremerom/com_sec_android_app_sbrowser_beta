.class public Lcom/sec/android/app/sbrowser/media/history/MHActivityLauncher;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mIsLaunchingVideoHistory:Z

.field private mMainActivityId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/media/history/MHActivityLauncher;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/history/MHActivityLauncher;->lambda$launchIfNeeded$0()V

    return-void
.end method

.method private synthetic lambda$launchIfNeeded$0()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/history/MHActivityLauncher;->mIsLaunchingVideoHistory:Z

    return-void
.end method

.method private launchInternal(Landroid/app/Activity;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/MHActivityLauncher;->mMainActivityId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/sbrowser/media/history/MHActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "SBrowserMainActivityContextId"

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/MHActivityLauncher;->mMainActivityId:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1, v1}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startActivity(Landroid/app/Activity;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "[MM]MHActivityLauncher"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v0
.end method

.method public static shouldShowVideoHistory(Landroid/app/Activity;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/history/common/MHUtils;->isValidStateForVideoHistory(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public launchIfNeeded(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/media/history/MHActivityLauncher;->mIsLaunchingVideoHistory:Z

    if-eqz v1, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/history/MHActivityLauncher;->mIsLaunchingVideoHistory:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/download/b;

    const/16 v2, 0x9

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/download/b;-><init>(ILjava/lang/Object;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/history/MHActivityLauncher;->mMainActivityId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/history/MHActivityLauncher;->launchInternal(Landroid/app/Activity;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    if-nez p1, :cond_3

    const-string p0, "launch -> activity is null"

    goto :goto_1

    :cond_3
    const-string p0, "launch -> main activity id is empty"

    :goto_1
    const-string p1, "[MM]MHActivityLauncher"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method
