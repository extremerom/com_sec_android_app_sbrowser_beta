.class public interface abstract Lcom/sec/android/app/sbrowser/tab/Tab$Delegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/tab/Tab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Delegate"
.end annotation


# static fields
.field public static final EMPTY:Lcom/sec/android/app/sbrowser/tab/Tab$Delegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/tab/Tab$Delegate$1;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/tab/Tab$Delegate$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/tab/Tab$Delegate;->EMPTY:Lcom/sec/android/app/sbrowser/tab/Tab$Delegate;

    return-void
.end method


# virtual methods
.method public clearBitmapData()V
    .locals 0

    return-void
.end method

.method public extractTextMenu()V
    .locals 0

    return-void
.end method

.method public isExtensionSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isHoverScrollEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isMainViewTab()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public notifyWebContentsCreated(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public shouldExemptFromTrackingProtection()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public shouldPerformPullToRefresh()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportPullToRefresh()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
