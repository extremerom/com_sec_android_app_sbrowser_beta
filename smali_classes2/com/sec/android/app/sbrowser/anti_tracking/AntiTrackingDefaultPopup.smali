.class public Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingDefaultPopup;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.sec.android.app.sbrowser.anti_tracking.AntiTrackingDefaultPopup"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingDefaultPopup;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingDefaultPopup;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingDefaultPopup;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingDefaultPopup;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public showAntiTrackingDefaultDialog()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingDefaultPopup$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingDefaultPopup$1;-><init>(Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingDefaultPopup;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
