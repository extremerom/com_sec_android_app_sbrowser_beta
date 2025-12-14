.class Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassMigrationDialogLogging;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getScreenID()Ljava/lang/String;
    .locals 0

    const-string p0, "511"

    return-object p0
.end method

.method public recordMovePasswordNeverClicked()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassMigrationDialogLogging;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string v0, "5119"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public recordMovePasswordOkClicked()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/autofill/password/SamsungPassMigrationDialogLogging;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string v0, "5121"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
