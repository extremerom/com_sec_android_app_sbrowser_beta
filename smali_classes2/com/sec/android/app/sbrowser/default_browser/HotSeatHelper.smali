.class public Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper$HotSeatStatus;
    }
.end annotation


# static fields
.field private static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.sec.android.app.launcher.settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper;-><init>()V

    return-object v0
.end method

.method private getHotseatItemCount(Landroid/content/Context;)I
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "get_hotseat_item_count"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "itemcount"

    const/4 v0, -0x2

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static declared-synchronized getInstance()Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper;
    .locals 4

    const-class v0, Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper;

    monitor-enter v0

    :try_start_0
    const-class v1, Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper;

    new-instance v2, Lcom/sec/android/app/sbrowser/common/sites/b;

    const/16 v3, 0xf

    invoke-direct {v2, v3}, Lcom/sec/android/app/sbrowser/common/sites/b;-><init>(I)V

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public getHotseatItem(Landroid/content/Context;I)Landroid/content/ComponentName;
    .locals 2

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "index"

    invoke-virtual {p0, v0, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "get_hotseat_item"

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, p0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string p1, "invocation_result"

    const/4 p2, -0x2

    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const-string p2, "component"

    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    if-nez p1, :cond_1

    instance-of p1, p0, Landroid/content/ComponentName;

    if-eqz p1, :cond_1

    check-cast p0, Landroid/content/ComponentName;

    return-object p0

    :cond_1
    return-object v1
.end method

.method public isExistingInHotseat(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper$HotSeatStatus;
    .locals 5

    const-string v0, "HotSeatHelper"

    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper;->getHotseatItemCount(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, p1, v2}, Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper;->getHotseatItem(Landroid/content/Context;I)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string p0, "Samsung Internet is in hotseat"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper$HotSeatStatus;->EXIST:Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper$HotSeatStatus;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper$HotSeatStatus;->NOT_EXIST:Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper$HotSeatStatus;

    return-object p0

    :goto_1
    const-string p1, "not supported samsung launcher!!"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper$HotSeatStatus;->NOT_SUPPORTED:Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper$HotSeatStatus;

    return-object p0
.end method
