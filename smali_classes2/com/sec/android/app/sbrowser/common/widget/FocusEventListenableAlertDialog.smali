.class public Lcom/sec/android/app/sbrowser/common/widget/FocusEventListenableAlertDialog;
.super Landroid/app/AlertDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/widget/FocusEventListenableAlertDialog$OnFocusChangeListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/sec/android/app/sbrowser/common/widget/FocusEventListenableAlertDialog$OnFocusChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/widget/FocusEventListenableAlertDialog;->mListener:Lcom/sec/android/app/sbrowser/common/widget/FocusEventListenableAlertDialog$OnFocusChangeListener;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/widget/FocusEventListenableAlertDialog$OnFocusChangeListener;->onFocusChange(Z)V

    return-void
.end method

.method public setOnFocusChangeListener(Lcom/sec/android/app/sbrowser/common/widget/FocusEventListenableAlertDialog$OnFocusChangeListener;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/common/widget/FocusEventListenableAlertDialog$OnFocusChangeListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/widget/FocusEventListenableAlertDialog;->mListener:Lcom/sec/android/app/sbrowser/common/widget/FocusEventListenableAlertDialog$OnFocusChangeListener;

    return-void
.end method
