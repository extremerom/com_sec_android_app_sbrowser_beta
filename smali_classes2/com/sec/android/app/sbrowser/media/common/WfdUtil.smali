.class public Lcom/sec/android/app/sbrowser/media/common/WfdUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "[MM]WfdUtil"

.field private static sINSTANCE:Lcom/sec/android/app/sbrowser/media/common/WfdUtil;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static destroy()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/sbrowser/media/common/WfdUtil;->sINSTANCE:Lcom/sec/android/app/sbrowser/media/common/WfdUtil;

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/media/common/WfdUtil;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/media/common/WfdUtil;->sINSTANCE:Lcom/sec/android/app/sbrowser/media/common/WfdUtil;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/media/common/WfdUtil;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/media/common/WfdUtil;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/media/common/WfdUtil;->sINSTANCE:Lcom/sec/android/app/sbrowser/media/common/WfdUtil;

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/media/common/WfdUtil;->sINSTANCE:Lcom/sec/android/app/sbrowser/media/common/WfdUtil;

    return-object v0
.end method


# virtual methods
.method public startMirroring(Landroid/content/Context;)V
    .locals 3

    if-nez p1, :cond_0

    sget-object p0, Lcom/sec/android/app/sbrowser/media/common/WfdUtil;->TAG:Ljava/lang/String;

    const-string p1, "startMirroring failed as null context."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object p0, Lcom/sec/android/app/sbrowser/media/common/WfdUtil;->TAG:Ljava/lang/String;

    const-string v0, "startMirroring"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.smartmirroring"

    const-string v2, "com.samsung.android.smartmirroring.CastingDialog"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v0, 0x14240000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "more_actions_package_name"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "more_actions_screen_sharing_mode"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "more_actions_connection_m2tv"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/sec/android/app/sbrowser/media/common/WfdUtil;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "exception : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
