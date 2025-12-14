.class Lcom/sec/terrace/browser/webapps/installer/TinApkInstallManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/webapps/installer/TinApkInstallManager;->installAsyncInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/sec/terrace/base/TerraceCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/browser/webapps/installer/TinApkInstallManager;

.field final synthetic val$callback:Lcom/sec/terrace/base/TerraceCallback;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/webapps/installer/TinApkInstallManager;Lcom/sec/terrace/base/TerraceCallback;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstallManager$1;->this$0:Lcom/sec/terrace/browser/webapps/installer/TinApkInstallManager;

    iput-object p2, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstallManager$1;->val$callback:Lcom/sec/terrace/base/TerraceCallback;

    iput-object p3, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstallManager$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled()V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstallManager$1;->val$callback:Lcom/sec/terrace/base/TerraceCallback;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/terrace/base/TerraceCallback;->onResult(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstallManager$1;->this$0:Lcom/sec/terrace/browser/webapps/installer/TinApkInstallManager;

    invoke-static {v0}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstallManager;->a(Lcom/sec/terrace/browser/webapps/installer/TinApkInstallManager;)Ljava/util/HashMap;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstallManager$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onInstallApkFailure()V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstallManager$1;->val$callback:Lcom/sec/terrace/base/TerraceCallback;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/terrace/base/TerraceCallback;->onResult(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstallManager$1;->this$0:Lcom/sec/terrace/browser/webapps/installer/TinApkInstallManager;

    invoke-static {v0}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstallManager;->a(Lcom/sec/terrace/browser/webapps/installer/TinApkInstallManager;)Ljava/util/HashMap;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstallManager$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onInstallApkSuccess()V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstallManager$1;->val$callback:Lcom/sec/terrace/base/TerraceCallback;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/terrace/base/TerraceCallback;->onResult(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstallManager$1;->this$0:Lcom/sec/terrace/browser/webapps/installer/TinApkInstallManager;

    invoke-static {v0}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstallManager;->a(Lcom/sec/terrace/browser/webapps/installer/TinApkInstallManager;)Ljava/util/HashMap;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstallManager$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
