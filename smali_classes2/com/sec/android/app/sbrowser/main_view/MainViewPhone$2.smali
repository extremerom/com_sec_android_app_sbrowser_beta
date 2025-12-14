.class Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$2;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->launchNewTabAfterAnimation(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$2;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$2;->lambda$run$0()V

    return-void
.end method

.method private synthetic lambda$run$0()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->r(Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "si__MainViewPhone"

    const-string v1, "[mNewTabAnimTimer] time out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->q(Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/b;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/main_view/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
