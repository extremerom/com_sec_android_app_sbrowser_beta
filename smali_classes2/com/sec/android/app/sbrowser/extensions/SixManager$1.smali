.class Lcom/sec/android/app/sbrowser/extensions/SixManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager$GetExtListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/extensions/SixManager;->requestExtListFromGalaxyStoreIfNeeded(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/extensions/SixManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/extensions/SixManager;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixManager$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixManager;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/extensions/SixManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetExtList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->updateUnsupportedExtensions(Ljava/util/ArrayList;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixManager$1;->val$context:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/extensions/SixAppDataUpdater;->setSixAppDataList(Landroid/content/Context;)V

    return-void
.end method
