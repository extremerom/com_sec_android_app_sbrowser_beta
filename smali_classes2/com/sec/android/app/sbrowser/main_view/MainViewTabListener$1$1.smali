.class Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/si_log/SchedulerParams;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->getSchedulerParams()Lcom/sec/android/app/sbrowser/common/model/si_log/SchedulerParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1$1;->this$1:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1$1;->this$1:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public getPushUserId()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getInstance()Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getPushUserId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isDefaultBrowser()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/default_browser/SelfPromotionMananger;->getInstance()Lcom/sec/android/app/sbrowser/default_browser/SelfPromotionMananger;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1$1;->this$1:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/default_browser/SelfPromotionMananger;->isSamsungInternetSetAsDefaultBrowser(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "1"

    goto :goto_0

    :cond_0
    const-string p0, "0"

    :goto_0
    return-object p0
.end method

.method public isHotSeat()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper;->getInstance()Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1$1;->this$1:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper;->isExistingInHotseat(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper$HotSeatStatus;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabListener$2;->$SwitchMap$com$sec$android$app$sbrowser$default_browser$HotSeatHelper$HotSeatStatus:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, "2"

    return-object p0

    :cond_0
    const-string p0, "1"

    return-object p0

    :cond_1
    const-string p0, "0"

    return-object p0
.end method
