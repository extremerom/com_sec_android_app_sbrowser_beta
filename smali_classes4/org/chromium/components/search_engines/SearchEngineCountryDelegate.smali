.class public abstract Lorg/chromium/components/search_engines/SearchEngineCountryDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/search_engines/SearchEngineCountryDelegate$DeviceChoiceEventType;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# virtual methods
.method public getDeviceBrowserSelectedTimestamp()Ljava/time/Instant;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDeviceCountry()Lorg/chromium/base/Promise;
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/chromium/base/Promise<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/chromium/base/Promise;->rejected()Lorg/chromium/base/Promise;

    move-result-object p0

    return-object p0
.end method

.method public getIsDeviceChoiceRequiredSupplier()Lorg/chromium/base/supplier/ObservableSupplier;
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/chromium/base/supplier/ObservableSupplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance p0, Lorg/chromium/base/supplier/ObservableSupplierImpl;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lorg/chromium/base/supplier/ObservableSupplierImpl;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method

.method public isDeviceChoiceDialogEligible()Z
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method
