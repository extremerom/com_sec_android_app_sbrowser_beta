.class Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager$2$1;
.super Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback$ResultCallbackOnUiThread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback$ResultCallbackOnUiThread<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager$2;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager$2;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager$2$1;->this$1:Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager$2;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/utils/WorkerThreadCallback$ResultCallbackOnUiThread;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager$2$1;->onResult(Ljava/lang/String;)V

    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 2

    const-string v0, "onResult running for "

    const-string v1, "SixSuggestedListManager"

    invoke-static {v0, p1, v1}, LV0/c;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager$2$1;->this$1:Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager$2;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager$2;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->a(Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;)Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsFragmentCallback$PrefRefreshCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager$2$1;->this$1:Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager$2;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager$2;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->a(Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;)Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsFragmentCallback$PrefRefreshCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsFragmentCallback$PrefRefreshCallback;->onIconDownloaded(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
