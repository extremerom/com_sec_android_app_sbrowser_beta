.class public Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$BitmapCallback;,
        Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$NotiType;
    }
.end annotation


# static fields
.field private static sNotiId:I


# instance fields
.field private mFetchBitmapRetryCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager;LU0/o;Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;Ljava/lang/String;Landroid/content/Context;Landroid/app/NotificationManager;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager;->lambda$sendNotification$0(LU0/o;Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;Ljava/lang/String;Landroid/content/Context;Landroid/app/NotificationManager;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager;->mFetchBitmapRetryCount:I

    return p0
.end method

.method private blur(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    invoke-static {p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p0

    invoke-static {p0, p2}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object p1

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-static {p0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object p0

    const/high16 v1, 0x41c80000    # 25.0f

    invoke-virtual {p0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    invoke-virtual {p0, p1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    invoke-virtual {p0, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    invoke-virtual {v0, p2}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    return-object p2
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager;->mFetchBitmapRetryCount:I

    return-void
.end method

.method public static createNotificationChannel(Landroid/content/Context;)V
    .locals 4

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/notification/NotificationChannelCreator;->createAllNotificationChannel(Landroid/content/Context;)V

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v1, Landroid/app/NotificationChannel;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f140831

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x4

    const-string v3, "SBROWSER_NEWS_NOTIFICAION_CHANNEL"

    invoke-direct {v1, v3, p0, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    invoke-virtual {v1, p0}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager;Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$BitmapCallback;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p3, p4, p1}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager;->fetchBitmapFromUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$BitmapCallback;)V

    return-void
.end method

.method public static deleteNotificationChannel(Landroid/content/Context;)V
    .locals 1

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    if-eqz p0, :cond_0

    const-string v0, "SBROWSER_NEWS_NOTIFICAION_CHANNEL"

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private fetchBitmapFromUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$BitmapCallback;)V
    .locals 8
    .param p4    # Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$BitmapCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/l;->a()Lcom/bumptech/glide/j;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/j;->D(Ljava/lang/Object;)Lcom/bumptech/glide/j;

    move-result-object v0

    new-instance v7, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$1;-><init>(Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager;Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$BitmapCallback;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ll4/f;->a:LR5/n;

    const/4 p1, 0x0

    invoke-virtual {v0, v7, p1, v0, p0}, Lcom/bumptech/glide/j;->A(Li4/d;Lh4/f;Lh4/a;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private generateImageOnBlur(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v2, v0, 0x2

    if-lt v2, v1, :cond_0

    return-object p2

    :cond_0
    mul-int/lit8 v3, v1, 0x2

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Canvas;->drawColor(I)V

    sub-int v6, v1, v2

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v2, v6

    new-instance v7, Landroid/graphics/Rect;

    const/4 v8, 0x0

    invoke-direct {v7, v8, v6, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-direct {v2, v8, v8, v6, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v6, 0x1

    invoke-virtual {p2, v4, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager;->blur(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v5, p0, v7, v2, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    sub-int/2addr p1, v0

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v2, v1

    int-to-float v1, v2

    div-float/2addr v1, v0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v5, p2, p1, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v3
.end method

.method private getNotificationBuilder(Landroid/content/Context;)LU0/o;
    .locals 1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager;->createNotificationChannel(Landroid/content/Context;)V

    new-instance p0, LU0/o;

    const-string v0, "SBROWSER_NEWS_NOTIFICAION_CHANNEL"

    invoke-direct {p0, p1, v0}, LU0/o;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object p0
.end method

.method private static increaseAndGetNotiId()I
    .locals 1

    sget v0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager;->sNotiId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager;->sNotiId:I

    return v0
.end method

.method private initNotificationId()V
    .locals 1

    new-instance p0, Ljava/util/Random;

    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    mul-int/2addr p0, v0

    const v0, 0x2f3b5e

    add-int/2addr p0, v0

    sput p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager;->sNotiId:I

    return-void
.end method

.method private lambda$sendNotification$0(LU0/o;Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;Ljava/lang/String;Landroid/content/Context;Landroid/app/NotificationManager;Landroid/graphics/Bitmap;)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p6, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/core/graphics/drawable/IconCompat;

    invoke-direct {v1, v0}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    iput-object p6, v1, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    iput-object v1, p1, LU0/o;->h:Landroidx/core/graphics/drawable/IconCompat;

    :cond_0
    sget-object v1, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$2;->$SwitchMap$com$sec$android$app$sbrowser$contents_push$ContentsPushNotificationManager$NotiType:[I

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;->getNotiType()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$NotiType;->lookup(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$NotiType;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v1, p2

    if-eq p2, v0, :cond_3

    const/4 p3, 0x2

    if-eq p2, p3, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p6, :cond_4

    new-instance p2, LU0/l;

    const/4 p3, 0x2

    invoke-direct {p2, p3}, LJ8/i;-><init>(I)V

    invoke-direct {p0, p4, p6}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager;->generateImageOnBlur(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 p3, 0x0

    if-nez p0, :cond_2

    move-object p4, p3

    goto :goto_0

    :cond_2
    new-instance p4, Landroidx/core/graphics/drawable/IconCompat;

    invoke-direct {p4, v0}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    iput-object p0, p4, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    :goto_0
    iput-object p4, p2, LU0/l;->d:Landroidx/core/graphics/drawable/IconCompat;

    iput-object p3, p2, LU0/l;->e:Landroidx/core/graphics/drawable/IconCompat;

    iput-boolean v0, p2, LU0/l;->f:Z

    invoke-virtual {p1, p2}, LU0/o;->h(LJ8/i;)V

    goto :goto_1

    :cond_3
    new-instance p0, LU0/m;

    const/4 p2, 0x2

    invoke-direct {p0, p2}, LJ8/i;-><init>(I)V

    invoke-static {p3}, LU0/o;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, LU0/m;->d:Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, LU0/o;->h(LJ8/i;)V

    :cond_4
    :goto_1
    if-eqz p5, :cond_5

    sget p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager;->sNotiId:I

    invoke-virtual {p1}, LU0/o;->b()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p5, p0, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "notification sent. Id :"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget p1, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager;->sNotiId:I

    const-string p2, "ContentsPushNotificationManager"

    invoke-static {p0, p1, p2}, Lw2/j;->j(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public sendNotification(Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;)V
    .locals 16

    move-object/from16 v7, p0

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    sget v0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager;->sNotiId:I

    if-nez v0, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager;->initNotificationId()V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;->getContentLink()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-class v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {v0, v8, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "noti_id"

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;->getSubType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "push_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "topic"

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;->getTopic()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->getInstance()Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->getPushReceivedTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "push_time"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager;->increaseAndGetNotiId()I

    move-result v1

    const/high16 v3, 0xc000000

    invoke-static {v8, v1, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    invoke-direct {v1, v8, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->getInstance()Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->isEnableTopic()Z

    move-result v4

    if-eqz v4, :cond_1

    const-class v4, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f14039d

    goto :goto_0

    :cond_1
    const-class v4, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f140052

    :goto_0
    const-string v6, "sbrowser.settings.show_fragment"

    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v6, "from"

    const-string v9, "noti"

    invoke-virtual {v4, v6, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v2, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "push_settings_entry"

    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-static {v8, v4, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    new-instance v6, Landroid/content/Intent;

    const-class v9, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationBroadcastReceiver;

    invoke-direct {v6, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ".action.CONTENTS_PUSH_GET_LESS_NEWS"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "notification_id"

    sget v9, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager;->sNotiId:I

    invoke-virtual {v6, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget v2, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager;->sNotiId:I

    invoke-static {v8, v2, v6, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-direct {v7, v8}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager;->getNotificationBuilder(Landroid/content/Context;)LU0/o;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushLogging;->getInstance()Lcom/sec/android/app/sbrowser/contents_push/ContentsPushLogging;

    move-result-object v9

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;->getTopic()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;->getImageLink()Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    const/4 v15, 0x0

    invoke-virtual/range {v9 .. v15}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushLogging;->getParameterForRefererServerLogging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;->getPublisher()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;->getTitle()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v3, LU0/o;->z:Landroid/app/Notification;

    const v12, 0x7f08070b

    iput v12, v11, Landroid/app/Notification;->icon:I

    const v11, 0x7f0607fb

    invoke-virtual {v8, v11}, Landroid/content/Context;->getColor(I)I

    move-result v11

    iput v11, v3, LU0/o;->u:I

    invoke-static {v6}, LU0/o;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v3, LU0/o;->e:Ljava/lang/CharSequence;

    invoke-static {v10}, LU0/o;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v3, LU0/o;->f:Ljava/lang/CharSequence;

    const/16 v6, 0x10

    const/4 v11, 0x1

    invoke-virtual {v3, v6, v11}, LU0/o;->f(IZ)V

    const/16 v6, 0x8

    invoke-virtual {v3, v6, v11}, LU0/o;->f(IZ)V

    iput v11, v3, LU0/o;->v:I

    iput-object v0, v3, LU0/o;->g:Landroid/app/PendingIntent;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0, v1}, LU0/o;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f14039c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v11, v0, v2}, LU0/o;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const-string v0, "notification"

    invoke-virtual {v8, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/app/NotificationManager;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;->getId()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/sec/android/app/sbrowser/contents_push/a;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v2, v3

    move-object/from16 v3, p1

    move-object v4, v10

    move-object v5, v8

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/contents_push/a;-><init>(Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager;LU0/o;Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;Ljava/lang/String;Landroid/content/Context;Landroid/app/NotificationManager;)V

    invoke-direct {v7, v8, v9, v11, v12}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager;->fetchBitmapFromUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$BitmapCallback;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSILog;->sendPushReceived(Ljava/lang/String;)V

    return-void
.end method
