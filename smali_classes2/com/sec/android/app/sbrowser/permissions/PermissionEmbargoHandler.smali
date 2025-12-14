.class public Lcom/sec/android/app/sbrowser/permissions/PermissionEmbargoHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mDomain:Ljava/lang/String;

.field private final mEmbargoPeriodDays:I

.field private final mPermissionType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/app/sbrowser/permissions/PermissionEmbargoHandler;->mPermissionType:I

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/permissions/PermissionEmbargoHandler;->mDomain:Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    move-result-object p1

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "embargo_period_days"

    const/4 v1, 0x7

    const-string v2, "NotificationManager"

    invoke-virtual {p1, v2, p2, v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInt(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/permissions/PermissionEmbargoHandler;->mEmbargoPeriodDays:I

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/permissions/PermissionEmbargoHandler;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/permissions/PermissionEmbargoHandler;->lambda$showNotificationsBlockedMessage$0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$showNotificationsBlockedMessage$0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/permissions/PermissionEmbargoHandler;->launchAllowDenyNotificationScreen()V

    return-void
.end method


# virtual methods
.method public launchAllowDenyNotificationScreen()V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getLastTrackedFocusedActivity()Landroid/app/Activity;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-class v1, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sbrowser.settings.show_fragment"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x7f0b0073

    invoke-static {p0, v1, v0}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startActivity(Landroid/app/Activity;ILandroid/content/Intent;)V

    const-string p0, "201"

    const-string v0, "5236"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPermissionEmbargoed()V
    .locals 2

    const-string v0, "PermissionEmbargoHandler"

    const-string v1, "onPermissionEmbargoed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/app/sbrowser/permissions/PermissionEmbargoHandler;->mPermissionType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/permissions/PermissionEmbargoHandler;->showNotificationsBlockedMessage()V

    :cond_0
    return-void
.end method

.method public showNotificationsBlockedMessage()V
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getLastTrackedFocusedActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/permissions/PermissionEmbargoHandler;->mEmbargoPeriodDays:I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/permissions/PermissionEmbargoHandler;->mDomain:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const v4, 0x7f120035

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, LH6/o;->i(Landroid/view/View;Ljava/lang/CharSequence;II)LH6/o;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/save_image/d;

    const/16 v2, 0x1a

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/save_image/d;-><init>(ILjava/lang/Object;)V

    const p0, 0x7f140052

    invoke-virtual {v0, p0, v1}, LH6/o;->j(ILandroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, LH6/o;->l()V

    const-string p0, "201"

    const-string v0, "5239"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "5235"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
