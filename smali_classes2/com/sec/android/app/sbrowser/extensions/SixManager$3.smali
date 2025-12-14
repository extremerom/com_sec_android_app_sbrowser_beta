.class Lcom/sec/android/app/sbrowser/extensions/SixManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/extensions/SixManager;->showBlockedPopup(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/extensions/SixManager;

.field final synthetic val$data:Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/extensions/SixManager;Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixManager$3;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixManager;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/extensions/SixManager$3;->val$data:Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "showBlockedPopup - ignored: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixManager$3;->val$data:Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SixManager"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/extensions/SixManager$3;->val$data:Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->setIgnoredByUser()V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/extensions/SixManager$3;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixManager;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->flushSixAppData()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/extensions/SixManager$3;->val$data:Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ext_id"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixManager$3;->val$data:Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getAppName()Ljava/lang/String;

    move-result-object p0

    const-string p2, "ext_name"

    invoke-virtual {p1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "ext_blocked_action"

    const-string p2, "ext_not_now"

    invoke-virtual {p1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "601"

    const-string p2, "6152"

    invoke-static {p0, p2, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
