.class Lorg/chromium/content/browser/AttributionOsLevelManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/AttributionOsLevelManager;->getMeasurementApiStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/u;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1

    const-string p0, "AttributionManager"

    const-string v0, "Failed to get measurement API status"

    invoke-static {p0, v0, p1}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    invoke-static {p1}, Lorg/chromium/content/browser/AttributionOsLevelManager;->c(Ljava/lang/Throwable;)I

    move-result p1

    invoke-static {p0, p1}, Lorg/chromium/content/browser/AttributionOsLevelManager;->d(II)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p1}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lorg/chromium/content/browser/AttributionOsLevelManager;->d(II)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/AttributionOsLevelManager$3;->onSuccess(Ljava/lang/Integer;)V

    return-void
.end method
