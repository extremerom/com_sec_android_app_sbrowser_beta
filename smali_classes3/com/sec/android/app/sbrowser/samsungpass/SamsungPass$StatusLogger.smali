.class Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$StatusLogger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StatusLogger"
.end annotation


# instance fields
.field private mIsActivated:Ljava/lang/Boolean;

.field private mIsInstalled:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$StatusLogger;-><init>()V

    return-void
.end method

.method private recordSamsungPassStatusLog(J)V
    .locals 0

    const-string p0, "0017"

    long-to-float p1, p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;F)V

    return-void
.end method


# virtual methods
.method public updateActivationStatus(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$StatusLogger;->mIsActivated:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const-wide/16 v0, 0x7

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x6

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$StatusLogger;->recordSamsungPassStatusLog(J)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$StatusLogger;->mIsActivated:Ljava/lang/Boolean;

    return-void
.end method

.method public updateInstallationStatus(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$StatusLogger;->mIsInstalled:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$StatusLogger;->recordSamsungPassStatusLog(J)V

    :cond_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$StatusLogger;->mIsInstalled:Ljava/lang/Boolean;

    return-void
.end method
