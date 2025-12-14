.class Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoRepository$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoClient$RequestBackgroundInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoRepository;->requestBackgroundInfo(Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoRepository;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoRepository;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoRepository$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoRepository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Landroid/content/Context;I)V
    .locals 0

    const-string p0, "Fail to get background - ErrorCode: "

    const-string p1, "QuickAccessBackgroundInfoRepository"

    invoke-static {p2, p0, p1}, Lt/b;->x(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/domain/QuickAccessBackgroundInfo;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoRepository$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoRepository;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoRepository;->a(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoRepository;)Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoPreference;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoPreference;->setBackgroundInfo(Lcom/sec/android/app/sbrowser/quickaccess/domain/QuickAccessBackgroundInfo;)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/quickaccess/domain/QuickAccessBackgroundInfo;->getPopupBgColor()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/quickaccess/domain/QuickAccessBackgroundInfo;->getPopupDividerColor()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/quickaccess/domain/QuickAccessBackgroundInfo;->getPopupItemTitleColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/quickaccess/domain/QuickAccessBackgroundInfo;->getHomeBgColor()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p1, v0, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Update background from server - [popupBgColor: #%X] [popupDividerColor: #%X] [popupItemTitleColor: #%X][homeBgColor: #%X]"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "QuickAccessBackgroundInfoRepository"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
