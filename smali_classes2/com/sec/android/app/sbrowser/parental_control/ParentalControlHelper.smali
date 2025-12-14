.class public Lcom/sec/android/app/sbrowser/parental_control/ParentalControlHelper;
.super Lcom/sec/android/app/sbrowser/parental_control/AbsContentRestrictHelper;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/parental_control/AbsContentRestrictHelper;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControl;->getInstance()Lcom/sec/android/app/sbrowser/parental_control/ParentalControl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControl;->updateParentalControlData()V

    return-void
.end method


# virtual methods
.method public addUrlOnAllowedList(Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControl;->getInstance()Lcom/sec/android/app/sbrowser/parental_control/ParentalControl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControl;->addUrlOnAllowedList(Ljava/lang/String;)V

    return-void
.end method

.method public isUrlBlockedByParentalControl(Ljava/lang/String;)Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControl;->getInstance()Lcom/sec/android/app/sbrowser/parental_control/ParentalControl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControl;->isUrlBlocked(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public sendSaLogging()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlUtil;->getParentalControlStatus()Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;->isChild()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "8210"

    goto :goto_0

    :cond_0
    const-string p0, "8220"

    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager;->getLatestCategory()Ljava/lang/String;

    move-result-object v0

    const-string v1, "201"

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateData()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControl;->getInstance()Lcom/sec/android/app/sbrowser/parental_control/ParentalControl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControl;->updateParentalControlData()V

    return-void
.end method
