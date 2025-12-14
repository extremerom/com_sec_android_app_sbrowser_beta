.class public Lcom/sec/android/app/sbrowser/tab/IntentBasedTerraceCallback;
.super Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/tab/IntentBasedTerraceCallback$InnerReceiver;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/sec/terrace/TerraceListenerCallback;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;-><init>(Lcom/sec/terrace/TerraceListenerCallback;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/tab/IntentBasedTerraceCallback$InnerReceiver;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/tab/IntentBasedTerraceCallback$InnerReceiver;-><init>(Lcom/sec/android/app/sbrowser/tab/IntentBasedTerraceCallback;)V

    new-instance p0, Landroid/content/IntentFilter;

    const-string v1, "com.sec.android.app.sbrowser.beta.action.terrace_callback"

    invoke-direct {p0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0, p0}, Lcom/sec/android/app/sbrowser/common/device/ContextUtils;->registerExportedBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/tab/IntentBasedTerraceCallback;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab/IntentBasedTerraceCallback;->notifyTerraceCallback(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/tab/IntentBasedTerraceCallback;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab/IntentBasedTerraceCallback;->notifyTerraceCallback(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private notifyReportCrash([Ljava/lang/String;)V
    .locals 2

    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const-string v0, "notifyReportCrash wasOomProtected:"

    const-string v1, "IntentBasedTerraceCallback"

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->mCallback:Lcom/sec/terrace/TerraceListenerCallback;

    const/4 v0, 0x7

    invoke-interface {p0, p1, v0}, Lcom/sec/terrace/TerraceListenerCallback;->onReportCrash(ZI)V

    return-void
.end method

.method private notifyTerraceCallback(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/tab/IntentBasedTerraceCallback;->notifyTerraceCallback(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private notifyTerraceCallback(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "onReportCrash"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/tab/IntentBasedTerraceCallback;->notifyReportCrash([Ljava/lang/String;)V

    :goto_0
    return-void
.end method
