.class Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager$GetExtListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->registerGetExtListCallback(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager$1;->val$context:Landroid/content/Context;

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

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager$1;->val$context:Landroid/content/Context;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->b(Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method
