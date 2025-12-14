.class public Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassAttesterManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sBridge:Lcom/sec/terrace/browser/privacy_pass/TerracePrivacyPassAttesterManager$AttesterBridge;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassAttesterManager$1;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassAttesterManager$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassAttesterManager;->sBridge:Lcom/sec/terrace/browser/privacy_pass/TerracePrivacyPassAttesterManager$AttesterBridge;

    return-void
.end method

.method public static initialize()V
    .locals 2

    const-string v0, "PrivacyPassAttesterManager"

    const-string v1, "initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassAttesterManager;->sBridge:Lcom/sec/terrace/browser/privacy_pass/TerracePrivacyPassAttesterManager$AttesterBridge;

    invoke-static {v0}, Lcom/sec/terrace/browser/privacy_pass/TerracePrivacyPassAttesterManager;->setBridge(Lcom/sec/terrace/browser/privacy_pass/TerracePrivacyPassAttesterManager$AttesterBridge;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassServiceManager;->getInstance()Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassServiceManager;->initialize()V

    return-void
.end method

.method public static runFailCallback()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassAttesterManager$3;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassAttesterManager$3;-><init>()V

    invoke-static {v0}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static runSuccessCallback(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassAttesterManager$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassAttesterManager$2;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setPatState(Z)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassServiceManager;->getInstance()Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassServiceManager;->getService()LG8/c;

    move-result-object v0

    const-string v1, "PrivacyPassAttesterManager"

    if-nez v0, :cond_0

    const-string p0, "PAT Service not yet binded"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    check-cast v0, LG8/a;

    invoke-virtual {v0, p0}, LG8/a;->w0(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "setPatState Error: "

    invoke-static {p0, v0, v1}, Landroidx/recyclerview/widget/P;->r(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
