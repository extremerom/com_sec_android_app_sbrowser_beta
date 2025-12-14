.class Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager$1;
.super LH6/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->showReopenSnackBar(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager$1;->this$0:Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed(LH6/o;I)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager$1;->this$0:Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->d(Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager$1;->this$0:Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->e(Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onDismissed(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, LH6/o;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager$1;->onDismissed(LH6/o;I)V

    return-void
.end method
