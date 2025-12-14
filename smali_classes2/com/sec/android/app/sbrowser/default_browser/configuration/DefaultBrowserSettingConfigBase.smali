.class public abstract Lcom/sec/android/app/sbrowser/default_browser/configuration/DefaultBrowserSettingConfigBase;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSupported(Landroid/content/Context;)Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    move-result-object v0

    const-string v1, "SetAsDefaultBrowser"

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->isSupport(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public abstract getCoolingTime(Landroid/content/Context;)I
.end method

.method public abstract getDuration(Landroid/content/Context;)I
.end method

.method public abstract getMaxShowCount(Landroid/content/Context;)I
.end method
