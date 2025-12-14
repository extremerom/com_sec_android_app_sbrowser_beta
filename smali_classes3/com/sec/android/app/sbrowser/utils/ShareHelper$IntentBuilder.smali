.class public Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/utils/ShareHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentBuilder"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public bringToFront()Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    const/high16 v1, 0x4400000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_0
    return-object p0
.end method

.method public build()Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public chooserIntent(Landroid/content/Intent;)Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;->chooserIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IntentSender;)Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;

    move-result-object p0

    return-object p0
.end method

.method public chooserIntent(Landroid/content/Intent;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/android/app/sbrowser/broadcast_receiver/ShareIntentChooserReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;->mContext:Landroid/content/Context;

    const/high16 v2, 0x8000000

    invoke-static {}, Lcom/sec/terrace/base/TerraceApiCompatibilityUtils;->getPendingIntentFlagMutable()I

    move-result v3

    or-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;->chooserIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IntentSender;)Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;

    move-result-object p0

    return-object p0
.end method

.method public chooserIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IntentSender;)Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;->mContext:Landroid/content/Context;

    const v0, 0x7f140f2b

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-static {p1, p2, p3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;Landroid/content/IntentSender;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;->mIntent:Landroid/content/Intent;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance p2, Landroid/content/ComponentName;

    sget p3, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->TYPE_SBROWSER_LAUNCHER_ACTIVITY:I

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->getClassName(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "com.sec.android.app.sbrowser.beta"

    invoke-direct {p2, v0, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    new-array p3, p3, [Landroid/os/Parcelable;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/os/Parcelable;

    const-string p3, "android.intent.extra.EXCLUDE_COMPONENTS"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object p0
.end method

.method public chooserIntent(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, p2}, Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;->chooserIntent(Landroid/content/Intent;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;

    move-result-object p0

    return-object p0
.end method

.method public noUserAction()Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    const/high16 v1, 0x40000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_0
    return-object p0
.end method
