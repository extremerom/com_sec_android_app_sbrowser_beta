.class public Lcom/sec/android/app/sbrowser/common/device/InputFilterUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static sWeakRefToast:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "LH6/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/device/InputFilterUtil;->sWeakRefToast:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static declared-synchronized getEmojiExcludeFilter(Landroid/content/Context;)Landroid/text/InputFilter;
    .locals 2

    const-class v0, Lcom/sec/android/app/sbrowser/common/device/InputFilterUtil;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/sec/android/app/sbrowser/common/device/InputFilterUtil$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/common/device/InputFilterUtil$2;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized getEmojiExcludeFilter(Landroid/content/Context;Landroid/view/View;)Landroid/text/InputFilter;
    .locals 2

    const-class v0, Lcom/sec/android/app/sbrowser/common/device/InputFilterUtil;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/sec/android/app/sbrowser/common/device/InputFilterUtil$3;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/common/device/InputFilterUtil$3;-><init>(Landroid/content/Context;Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static getMaxLengthFilter(Landroid/content/Context;)[Landroid/text/InputFilter;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const v1, 0x7f140677

    const/4 v2, -0x1

    invoke-static {p0, v0, v1, v0, v2}, Lcom/sec/android/app/sbrowser/common/device/InputFilterUtil;->getMaxLengthFilter(Landroid/content/Context;IIII)[Landroid/text/InputFilter;

    move-result-object p0

    return-object p0
.end method

.method public static getMaxLengthFilter(Landroid/content/Context;I)[Landroid/text/InputFilter;
    .locals 2

    const v0, 0x7f140677

    const/4 v1, -0x1

    invoke-static {p0, p1, v0, p1, v1}, Lcom/sec/android/app/sbrowser/common/device/InputFilterUtil;->getMaxLengthFilter(Landroid/content/Context;IIII)[Landroid/text/InputFilter;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getMaxLengthFilter(Landroid/content/Context;IIII)[Landroid/text/InputFilter;
    .locals 1

    const-class p4, Lcom/sec/android/app/sbrowser/common/device/InputFilterUtil;

    monitor-enter p4

    :try_start_0
    new-instance v0, Lcom/sec/android/app/sbrowser/common/device/InputFilterUtil$1;

    invoke-direct {v0, p1, p0, p2, p3}, Lcom/sec/android/app/sbrowser/common/device/InputFilterUtil$1;-><init>(ILandroid/content/Context;II)V

    const/4 p0, 0x1

    new-array p0, p0, [Landroid/text/InputFilter;

    const/4 p1, 0x0

    aput-object v0, p0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p4

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static getWeakRefToast()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/InputFilterUtil;->sWeakRefToast:Ljava/lang/ref/WeakReference;

    return-object v0
.end method
