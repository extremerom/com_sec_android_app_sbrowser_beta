.class public Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager$SyncOnState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager$SyncState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SyncOnState"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager$SyncOnState;->lambda$launchCreditCardSettings$2(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic b(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager$SyncOnState;->lambda$launchUsernameAndPasswordSettings$0(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic c(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager$SyncOnState;->lambda$launchProfileSettings$1(Landroid/app/Activity;)V

    return-void
.end method

.method private static synthetic lambda$launchCreditCardSettings$2(Landroid/app/Activity;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$LaunchMode;->CARD:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$LaunchMode;

    invoke-virtual {v0, p0, v1}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->launchSamsungPass(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$LaunchMode;)V

    return-void
.end method

.method private static synthetic lambda$launchProfileSettings$1(Landroid/app/Activity;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$LaunchMode;->ADDRESS:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$LaunchMode;

    invoke-virtual {v0, p0, v1}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->launchSamsungPass(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$LaunchMode;)V

    return-void
.end method

.method private static synthetic lambda$launchUsernameAndPasswordSettings$0(Landroid/app/Activity;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$LaunchMode;->LOGIN:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$LaunchMode;

    invoke-virtual {v0, p0, v1}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->launchSamsungPass(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$LaunchMode;)V

    return-void
.end method


# virtual methods
.method public launchCreditCardSettings(Landroid/app/Activity;)V
    .locals 3

    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/autofill/k;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lcom/sec/android/app/sbrowser/settings/autofill/k;-><init>(Landroid/app/Activity;I)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public launchProfileSettings(Landroid/app/Activity;)V
    .locals 3

    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/autofill/k;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/sec/android/app/sbrowser/settings/autofill/k;-><init>(Landroid/app/Activity;I)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public launchUsernameAndPasswordSettings(Landroid/app/Activity;)V
    .locals 3

    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/autofill/k;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sec/android/app/sbrowser/settings/autofill/k;-><init>(Landroid/app/Activity;I)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
