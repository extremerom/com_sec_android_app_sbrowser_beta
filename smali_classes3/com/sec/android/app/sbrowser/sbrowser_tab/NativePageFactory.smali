.class public Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageFactory$NativePageBuilder;
    }
.end annotation


# static fields
.field private static sNativePageBuilder:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageFactory$NativePageBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageFactory$NativePageBuilder;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageFactory$NativePageBuilder;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageFactory;->sNativePageBuilder:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageFactory$NativePageBuilder;

    return-void
.end method

.method public static createNativePageForURL(Ljava/lang/String;Landroid/app/Activity;Z)Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isNativePageUrl(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageFactory;->sNativePageBuilder:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageFactory$NativePageBuilder;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageFactory$NativePageBuilder;->buildNewTabPage(Landroid/app/Activity;Z)Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static setNativePageBuilderForTesting(Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageFactory$NativePageBuilder;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sput-object p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageFactory;->sNativePageBuilder:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageFactory$NativePageBuilder;

    return-void
.end method
