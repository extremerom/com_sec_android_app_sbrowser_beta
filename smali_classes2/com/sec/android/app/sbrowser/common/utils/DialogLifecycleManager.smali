.class public Lcom/sec/android/app/sbrowser/common/utils/DialogLifecycleManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sDialogMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lm/l;",
            ">;"
        }
    .end annotation
.end field

.field private static sJsAlertCount:I

.field private static sLastDialogShown:Ljava/util/Date;

.field private static sMaxSuccessiveDialogCount:I

.field private static sMaxSuccessiveDialogMillisLimit:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/utils/DialogLifecycleManager;->sDialogMap:Ljava/util/Map;

    const/16 v0, 0xbb8

    sput v0, Lcom/sec/android/app/sbrowser/common/utils/DialogLifecycleManager;->sMaxSuccessiveDialogMillisLimit:I

    const/4 v0, 0x2

    sput v0, Lcom/sec/android/app/sbrowser/common/utils/DialogLifecycleManager;->sMaxSuccessiveDialogCount:I

    return-void
.end method

.method public static addDialog(Landroid/content/Context;Lm/l;)V
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/common/utils/DialogLifecycleManager;->sDialogMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/DialogLifecycleManager;->updateDialogAbusedState()V

    return-void
.end method

.method public static closeDialog(Landroid/content/Context;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/common/utils/DialogLifecycleManager;->sDialogMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm/l;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lm/y;->dismiss()V

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/DialogLifecycleManager;->resetDialogAbusedState()V

    return-void
.end method

.method public static isDialogAbused()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/DialogLifecycleManager;->isDialogAbusedByCount()Z

    move-result v0

    return v0
.end method

.method private static isDialogAbusedByCount()Z
    .locals 2

    sget v0, Lcom/sec/android/app/sbrowser/common/utils/DialogLifecycleManager;->sJsAlertCount:I

    sget v1, Lcom/sec/android/app/sbrowser/common/utils/DialogLifecycleManager;->sMaxSuccessiveDialogCount:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isDialogAbusedByTime()Z
    .locals 4

    sget v0, Lcom/sec/android/app/sbrowser/common/utils/DialogLifecycleManager;->sJsAlertCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    long-to-int v0, v2

    sget-object v2, Lcom/sec/android/app/sbrowser/common/utils/DialogLifecycleManager;->sLastDialogShown:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    long-to-int v2, v2

    sub-int/2addr v0, v2

    sget v2, Lcom/sec/android/app/sbrowser/common/utils/DialogLifecycleManager;->sMaxSuccessiveDialogMillisLimit:I

    if-ge v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private static resetDialogAbusedState()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/sbrowser/common/utils/DialogLifecycleManager;->sJsAlertCount:I

    return-void
.end method

.method private static updateDialogAbusedState()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/DialogLifecycleManager;->isDialogAbusedByTime()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/sbrowser/common/utils/DialogLifecycleManager;->sJsAlertCount:I

    :cond_0
    sget v0, Lcom/sec/android/app/sbrowser/common/utils/DialogLifecycleManager;->sJsAlertCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sec/android/app/sbrowser/common/utils/DialogLifecycleManager;->sJsAlertCount:I

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/utils/DialogLifecycleManager;->sLastDialogShown:Ljava/util/Date;

    return-void
.end method
