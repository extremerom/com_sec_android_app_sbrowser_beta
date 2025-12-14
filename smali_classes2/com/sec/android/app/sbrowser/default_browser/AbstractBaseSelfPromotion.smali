.class public abstract Lcom/sec/android/app/sbrowser/default_browser/AbstractBaseSelfPromotion;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected mConfig:Lcom/sec/android/app/sbrowser/default_browser/configuration/DefaultBrowserSettingConfigBase;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/default_browser/configuration/DefaultBrowserSettingConfigBase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/default_browser/AbstractBaseSelfPromotion;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/default_browser/AbstractBaseSelfPromotion;->mConfig:Lcom/sec/android/app/sbrowser/default_browser/configuration/DefaultBrowserSettingConfigBase;

    return-void
.end method

.method private checkDurationAndUpdateTimestamp()Z
    .locals 11

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/default_browser/AbstractBaseSelfPromotion;->getLastShowTimestamp()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/default_browser/AbstractBaseSelfPromotion;->getShowingCount()I

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/default_browser/AbstractBaseSelfPromotion;->mConfig:Lcom/sec/android/app/sbrowser/default_browser/configuration/DefaultBrowserSettingConfigBase;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/default_browser/AbstractBaseSelfPromotion;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/sec/android/app/sbrowser/default_browser/configuration/DefaultBrowserSettingConfigBase;->getCoolingTime(Landroid/content/Context;)I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "days from last showing : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v3, v4}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AbstractBaseSelfPromotion"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/default_browser/AbstractBaseSelfPromotion;->mConfig:Lcom/sec/android/app/sbrowser/default_browser/configuration/DefaultBrowserSettingConfigBase;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/default_browser/AbstractBaseSelfPromotion;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v8}, Lcom/sec/android/app/sbrowser/default_browser/configuration/DefaultBrowserSettingConfigBase;->getMaxShowCount(Landroid/content/Context;)I

    move-result v6

    const/4 v8, 0x0

    if-lt v2, v6, :cond_1

    const/4 v2, -0x1

    if-eq v5, v2, :cond_0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    int-to-long v5, v5

    invoke-virtual {v2, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    cmp-long v2, v3, v5

    if-ltz v2, :cond_0

    const-string v2, "satisfied cooling time: initialize status"

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/default_browser/AbstractBaseSelfPromotion;->initializePreference()V

    goto :goto_0

    :cond_0
    return v8

    :cond_1
    :goto_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/default_browser/AbstractBaseSelfPromotion;->mConfig:Lcom/sec/android/app/sbrowser/default_browser/configuration/DefaultBrowserSettingConfigBase;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/default_browser/AbstractBaseSelfPromotion;->mContext:Landroid/content/Context;

    invoke-virtual {v5, p0}, Lcom/sec/android/app/sbrowser/default_browser/configuration/DefaultBrowserSettingConfigBase;->getDuration(Landroid/content/Context;)I

    move-result p0

    int-to-long v5, p0

    invoke-virtual {v2, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    const-wide/16 v9, -0x1

    cmp-long p0, v0, v9

    if-eqz p0, :cond_3

    cmp-long p0, v3, v5

    if-ltz p0, :cond_2

    goto :goto_1

    :cond_2
    return v8

    :cond_3
    :goto_1
    const-string p0, "satisfied duration: "

    invoke-static {v5, v6, p0, v7}, Lt/b;->y(JLjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method private isNeedToShow()Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/default_browser/AbstractBaseSelfPromotion;->checkDurationAndUpdateTimestamp()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public abstract getLastShowTimestamp()J
.end method

.method public abstract getShowingCount()I
.end method

.method public abstract initializePreference()V
.end method

.method public abstract show()V
.end method

.method public showIfNeeded()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/default_browser/AbstractBaseSelfPromotion;->isNeedToShow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/default_browser/AbstractBaseSelfPromotion;->updatePreference()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/default_browser/AbstractBaseSelfPromotion;->show()V

    :cond_0
    return-void
.end method

.method public abstract updatePreference()V
.end method
