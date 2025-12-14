.class Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassServiceManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassServiceManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassServiceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassServiceManager$1;->this$0:Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassServiceManager$1;->this$0:Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassServiceManager;

    sget v0, LG8/b;->a:I

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.samsung.android.privateaccesstokens.IPATService"

    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, LG8/c;

    if-eqz v1, :cond_1

    move-object p2, v0

    check-cast p2, LG8/c;

    goto :goto_0

    :cond_1
    new-instance v0, LG8/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p2, v0, LG8/a;->a:Landroid/os/IBinder;

    move-object p2, v0

    :goto_0
    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassServiceManager;->b(Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassServiceManager;LG8/c;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassServiceManager$1;->this$0:Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassServiceManager;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassServiceManager;->a(Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassServiceManager;)LG8/c;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p1, "PAT Service Binding success"

    const-string p2, "PrivacyPassServiceManager"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassServiceManager$1;->this$0:Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassServiceManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassServiceManager;->a(Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassServiceManager;)LG8/c;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/privacy_pass/PATFeatureConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/privacy_pass/PATFeatureConfigManager;

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/privacy_pass/PATFeatureConfigManager;->isPATEnabled(Z)Z

    move-result p1

    check-cast p0, LG8/a;

    invoke-virtual {p0, p1}, LG8/a;->w0(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "setPatState Error: "

    invoke-static {p0, p1, p2}, Landroidx/recyclerview/widget/P;->r(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassServiceManager$1;->this$0:Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassServiceManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassServiceManager;->b(Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassServiceManager;LG8/c;)V

    return-void
.end method
