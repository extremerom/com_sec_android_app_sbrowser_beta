.class public Lcom/sec/android/app/sbrowser/SBrowserMainActivity4;
.super Lcom/sec/android/app/sbrowser/SBrowserMainActivity;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/main_activity/IMainActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity4;->printLog()V

    return-void
.end method


# virtual methods
.method public getOpenInOtherWindowActivity()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public printLog()V
    .locals 1

    const-string p0, "CMI"

    const-string v0, "SBrowserMainActivity4 start"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
