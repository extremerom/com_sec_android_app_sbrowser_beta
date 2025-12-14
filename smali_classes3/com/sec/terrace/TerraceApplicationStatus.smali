.class public Lcom/sec/terrace/TerraceApplicationStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;,
        Lcom/sec/terrace/TerraceApplicationStatus$TerraceApplicationStateListener;
    }
.end annotation


# static fields
.field private static sActivityStateListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;",
            "Lorg/chromium/base/ApplicationStatus$ActivityStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private static sApplicationStateListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sec/terrace/TerraceApplicationStatus$TerraceApplicationStateListener;",
            "Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/terrace/TerraceApplicationStatus;->sActivityStateListenerMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/terrace/TerraceApplicationStatus;->sApplicationStateListenerMap:Ljava/util/Map;

    return-void
.end method

.method public static getActivityById(Ljava/lang/String;)Landroid/app/Activity;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getRunningActivities()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v0
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getLastTrackedFocusedActivity()Landroid/app/Activity;
    .locals 1

    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getLastTrackedFocusedActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public static getRunningActivities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getRunningActivities()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getStateForActivity(Landroid/app/Activity;)I
    .locals 0

    invoke-static {p0}, Lorg/chromium/base/ApplicationStatus;->getStateForActivity(Landroid/app/Activity;)I

    move-result p0

    return p0
.end method

.method public static getStateForApplication()I
    .locals 1

    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getStateForApplication()I

    move-result v0

    return v0
.end method

.method public static getTaskIdForActivity(Landroid/app/Activity;)I
    .locals 0

    invoke-static {p0}, Lorg/chromium/base/ApplicationStatus;->getTaskIdForActivity(Landroid/app/Activity;)I

    move-result p0

    return p0
.end method

.method public static isEveryActivityDestroyed()Z
    .locals 1

    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->isEveryActivityDestroyed()Z

    move-result v0

    return v0
.end method

.method public static registerApplicationStateListener(Lcom/sec/terrace/TerraceApplicationStatus$TerraceApplicationStateListener;)V
    .locals 2

    sget-object v0, Lcom/sec/terrace/TerraceApplicationStatus;->sApplicationStateListenerMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/terrace/TerraceApplicationStatus$3;

    invoke-direct {v0, p0}, Lcom/sec/terrace/TerraceApplicationStatus$3;-><init>(Lcom/sec/terrace/TerraceApplicationStatus$TerraceApplicationStateListener;)V

    sget-object v1, Lcom/sec/terrace/TerraceApplicationStatus;->sApplicationStateListenerMap:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lorg/chromium/base/ApplicationStatus;->registerApplicationStateListener(Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;)V

    return-void
.end method

.method public static registerStateListenerForActivity(Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;Landroid/app/Activity;)V
    .locals 2

    sget-object v0, Lcom/sec/terrace/TerraceApplicationStatus;->sActivityStateListenerMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/terrace/TerraceApplicationStatus$2;

    invoke-direct {v0, p0}, Lcom/sec/terrace/TerraceApplicationStatus$2;-><init>(Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;)V

    sget-object v1, Lcom/sec/terrace/TerraceApplicationStatus;->sActivityStateListenerMap:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, p1}, Lorg/chromium/base/ApplicationStatus;->registerStateListenerForActivity(Lorg/chromium/base/ApplicationStatus$ActivityStateListener;Landroid/app/Activity;)V

    return-void
.end method

.method public static registerStateListenerForAllActivities(Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;)V
    .locals 2

    sget-object v0, Lcom/sec/terrace/TerraceApplicationStatus;->sActivityStateListenerMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/terrace/TerraceApplicationStatus$1;

    invoke-direct {v0, p0}, Lcom/sec/terrace/TerraceApplicationStatus$1;-><init>(Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;)V

    sget-object v1, Lcom/sec/terrace/TerraceApplicationStatus;->sActivityStateListenerMap:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lorg/chromium/base/ApplicationStatus;->registerStateListenerForAllActivities(Lorg/chromium/base/ApplicationStatus$ActivityStateListener;)V

    return-void
.end method

.method public static unregisterActivityStateListener(Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;)V
    .locals 1

    sget-object v0, Lcom/sec/terrace/TerraceApplicationStatus;->sActivityStateListenerMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/sec/terrace/TerraceApplicationStatus;->sActivityStateListenerMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/base/ApplicationStatus$ActivityStateListener;

    invoke-static {v0}, Lorg/chromium/base/ApplicationStatus;->unregisterActivityStateListener(Lorg/chromium/base/ApplicationStatus$ActivityStateListener;)V

    sget-object v0, Lcom/sec/terrace/TerraceApplicationStatus;->sActivityStateListenerMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static unregisterApplicationStateListener(Lcom/sec/terrace/TerraceApplicationStatus$TerraceApplicationStateListener;)V
    .locals 1

    sget-object v0, Lcom/sec/terrace/TerraceApplicationStatus;->sApplicationStateListenerMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/sec/terrace/TerraceApplicationStatus;->sApplicationStateListenerMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;

    invoke-static {v0}, Lorg/chromium/base/ApplicationStatus;->unregisterApplicationStateListener(Lorg/chromium/base/ApplicationStatus$ApplicationStateListener;)V

    sget-object v0, Lcom/sec/terrace/TerraceApplicationStatus;->sApplicationStateListenerMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
