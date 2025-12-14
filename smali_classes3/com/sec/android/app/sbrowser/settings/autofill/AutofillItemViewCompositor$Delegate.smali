.class public interface abstract Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor$Delegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Delegate"
.end annotation


# virtual methods
.method public abstract getSummary(I)Ljava/lang/String;
.end method

.method public abstract getTitle(I)Ljava/lang/String;
.end method

.method public abstract hasItem()Z
.end method

.method public abstract isFirstChild(I)Z
.end method

.method public abstract isItemSelected(I)Z
.end method

.method public abstract isLastChild(I)Z
.end method

.method public abstract isShowingActionMode()Z
.end method
