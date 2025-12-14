.class public interface abstract Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer$InfoBarSecurityDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InfoBarSecurityDelegate"
.end annotation


# virtual methods
.method public abstract checkPushPopup(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract needToCheckPushPopup()Z
.end method
