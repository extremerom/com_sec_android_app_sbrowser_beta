.class public Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticator;
    .locals 1

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getLastTrackedFocusedActivity()Landroid/app/Activity;

    move-result-object p0

    new-instance v0, Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorImpl;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorImpl;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method
