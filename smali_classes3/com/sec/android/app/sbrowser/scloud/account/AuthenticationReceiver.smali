.class public Lcom/sec/android/app/sbrowser/scloud/account/AuthenticationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-nez p2, :cond_0

    const-string p0, "AuthenticationReceiver"

    const-string p1, "Invalid Params"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance p0, Landroid/content/Intent;

    const-string p2, "com.sec.android.app.sbrowser.beta.SIGN_IN_SAMSUNG_ACCOUNT_SDK"

    invoke-direct {p0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x24000000

    invoke-virtual {p0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/16 p2, 0x2be

    const/high16 v0, 0xc000000

    invoke-static {p1, p2, p0, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result p2

    if-eqz p2, :cond_1

    const p2, 0x7f140dad

    goto :goto_0

    :cond_1
    const p2, 0x7f140dac

    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/notification/NotificationChannelCreator;->createAllNotificationChannel(Landroid/content/Context;)V

    new-instance v0, LU0/o;

    const-string v1, "SBROWSER_SAMSUNG_ACCOUNT_NOTIFICATION_CHANNEL"

    invoke-direct {v0, p1, v1}, LU0/o;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, v0, LU0/o;->z:Landroid/app/Notification;

    const v2, 0x7f08070b

    iput v2, v1, Landroid/app/Notification;->icon:I

    const v1, 0x7f1400cf

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LU0/o;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, LU0/o;->e:Ljava/lang/CharSequence;

    invoke-static {p2}, LU0/o;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, LU0/o;->f:Ljava/lang/CharSequence;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, LU0/o;->e(I)V

    iput-object p0, v0, LU0/o;->g:Landroid/app/PendingIntent;

    const/16 p0, 0x8

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, LU0/o;->f(IZ)V

    const/16 p0, 0x10

    invoke-virtual {v0, p0, v1}, LU0/o;->f(IZ)V

    new-instance p0, LU0/m;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, LJ8/i;-><init>(I)V

    invoke-static {p2}, LU0/o;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, LU0/m;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, LU0/o;->h(LJ8/i;)V

    invoke-virtual {v0}, LU0/o;->b()Landroid/app/Notification;

    move-result-object p0

    const-string p2, "notification"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    const/16 p2, 0x2bd

    invoke-virtual {p1, p2, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method
