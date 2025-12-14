.class public interface abstract Lcom/sec/android/app/sbrowser/common/artificial_intelligence/model/IReadAloudSupplier;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getCurrentTabId()I
.end method

.method public abstract getReadAloudSupplierMode()Ljava/lang/String;
.end method

.method public abstract getReadAloudSupplierType()I
.end method

.method public abstract getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract isFindOnPageRunning()Z
.end method

.method public abstract isReadAloudAvailable()Z
.end method

.method public abstract isValidTab(I)Z
.end method

.method public abstract onReadAloudToolbarMaximized()V
.end method

.method public abstract onReadAloudToolbarMinimized()V
.end method
