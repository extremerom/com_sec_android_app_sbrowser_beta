.class public Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageFactory$NativePageBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NativePageBuilder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildNewTabPage(Landroid/app/Activity;Z)Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/AppInfo;->isCnApk()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/sec/android/app/sbrowser/multi_cp_native/MultiCPNativePage;

    check-cast p1, Lm/n;

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_cp_native/MultiCPNativePage;-><init>(Lm/n;Z)V

    return-object p0

    :cond_0
    new-instance p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessPage;

    check-cast p1, Lm/n;

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessPage;-><init>(Lm/n;Z)V

    return-object p0
.end method
