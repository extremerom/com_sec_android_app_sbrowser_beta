.class Lcom/sec/android/app/sbrowser/webapp/Webapp$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/app_banner/AppBannerManager$AppBannerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/webapp/Webapp;->initAppBanner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/webapp/Webapp;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/webapp/Webapp;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp$4;->this$0:Lcom/sec/android/app/sbrowser/webapp/Webapp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isIncognitoModeEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onAcceptBannerInstallation(II)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp$4;->this$0:Lcom/sec/android/app/sbrowser/webapp/Webapp;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/webapp/Webapp;->e(Lcom/sec/android/app/sbrowser/webapp/Webapp;I)V

    return-void
.end method

.method public onPWAStatusUpdated(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/Webapp$4;->this$0:Lcom/sec/android/app/sbrowser/webapp/Webapp;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/webapp/Webapp;->d(Lcom/sec/android/app/sbrowser/webapp/Webapp;)Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;->setPwaType(I)V

    return-void
.end method
