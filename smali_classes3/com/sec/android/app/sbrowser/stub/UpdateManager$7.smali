.class Lcom/sec/android/app/sbrowser/stub/UpdateManager$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/stub/UpdateManager;->handleRecommendUpdate(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/stub/UpdateManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/stub/UpdateManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/stub/UpdateManager$7;->this$0:Lcom/sec/android/app/sbrowser/stub/UpdateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p0, "201"

    const-string p2, "2093"

    invoke-static {p0, p2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->setLastCheckTime()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->setUpdatePopupShowedCountWithIncreasing()V

    return-void
.end method
