.class public interface abstract Lorg/chromium/components/safe_browsing/SafetyNetApiHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/safe_browsing/SafetyNetApiHandler$Observer;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# virtual methods
.method public abstract enableVerifyApps(J)V
.end method

.method public abstract init(Lorg/chromium/components/safe_browsing/SafetyNetApiHandler$Observer;)Z
.end method

.method public abstract isVerifyAppsEnabled(J)V
.end method

.method public abstract startAllowlistLookup(Ljava/lang/String;I)Z
.end method
