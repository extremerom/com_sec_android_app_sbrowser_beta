.class public Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassActivator;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private create()Lcom/sec/android/app/sbrowser/common/model/authentication/Registration;
    .locals 1

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getLastTrackedFocusedActivity()Landroid/app/Activity;

    move-result-object p0

    new-instance v0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassRegistration;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassRegistration;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method


# virtual methods
.method public register(Lcom/sec/android/app/sbrowser/common/model/authentication/Registration$Callback;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassActivator;->create()Lcom/sec/android/app/sbrowser/common/model/authentication/Registration;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/authentication/Registration;->run(Lcom/sec/android/app/sbrowser/common/model/authentication/Registration$Callback;)V

    return-void
.end method
