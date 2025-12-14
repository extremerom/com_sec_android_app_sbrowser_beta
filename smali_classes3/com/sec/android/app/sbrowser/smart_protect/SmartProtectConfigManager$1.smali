.class Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigFileFetcher$ConfigFileFetchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;->fetchConfigFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager$1;->this$0:Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileFetchFailed()V
    .locals 0

    return-void
.end method

.method public onFileFetchSucceeded(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "smart-protect-config.json"

    invoke-static {v0, p1, v1}, Lcom/sec/android/app/sbrowser/common/device/FileUtil;->write(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager$1;->this$0:Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectConfigManager;->fileFetchSucceeded()V

    return-void
.end method
