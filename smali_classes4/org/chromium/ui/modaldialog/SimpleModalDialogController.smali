.class public Lorg/chromium/ui/modaldialog/SimpleModalDialogController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/ui/modaldialog/ModalDialogProperties$Controller;


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mActionCallback:Lorg/chromium/base/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public onDismiss(Lorg/chromium/ui/modelutil/PropertyModel;I)V
    .locals 1

    iget-object p1, p0, Lorg/chromium/ui/modaldialog/SimpleModalDialogController;->mActionCallback:Lorg/chromium/base/Callback;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/ui/modaldialog/SimpleModalDialogController;->mActionCallback:Lorg/chromium/base/Callback;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    return-void
.end method
