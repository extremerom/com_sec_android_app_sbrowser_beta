.class Lcom/sec/android/app/sbrowser/authentication/RegistrationFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;)Lcom/sec/android/app/sbrowser/common/model/authentication/Registration;
    .locals 2

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getLastTrackedFocusedActivity()Landroid/app/Activity;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/sbrowser/authentication/RegistrationFactory$1;->$SwitchMap$com$sec$android$app$sbrowser$authentication$Authenticator$Type:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance p1, Lcom/sec/android/app/sbrowser/authentication/IrisRegistration;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/authentication/IrisRegistration;-><init>(Landroid/app/Activity;)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p1, Lcom/sec/android/app/sbrowser/authentication/SamsungFingerprintRegistration;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/authentication/SamsungFingerprintRegistration;-><init>(Landroid/app/Activity;)V

    return-object p1
.end method
