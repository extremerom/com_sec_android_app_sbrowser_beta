.class public interface abstract Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$Delegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Delegate"
.end annotation


# virtual methods
.method public abstract getAddedEntryCount()I
.end method

.method public abstract getCurrentUrl()Ljava/lang/String;
.end method

.method public abstract getTabId()I
.end method

.method public abstract getTabVisibility()I
.end method

.method public abstract isLoading()Z
.end method
