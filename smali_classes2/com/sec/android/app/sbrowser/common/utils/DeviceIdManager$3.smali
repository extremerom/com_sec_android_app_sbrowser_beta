.class Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager$3;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;->registerContentObserver(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager$3;->this$0:Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager$3;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager$3;->this$0:Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;->c(Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager$3;->this$0:Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager$3;->val$context:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;->initialize(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const-string p0, "DeviceIdManager"

    const-string p1, "clear mOAID"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
