.class public Lcom/sec/android/app/sbrowser/payments/standard/widget/AlwaysDismissedDialog;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;


# instance fields
.field mOwnerActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/AlwaysDismissedDialog;->mOwnerActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    invoke-static {p0}, Lcom/sec/terrace/TerraceApplicationStatus;->unregisterActivityStateListener(Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;)V

    return-void
.end method

.method public onActivityStateChange(Landroid/app/Activity;I)V
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/AlwaysDismissedDialog;->dismiss()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    if-ne p2, p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/AlwaysDismissedDialog;->onResume()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public show()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/AlwaysDismissedDialog;->mOwnerActivity:Landroid/app/Activity;

    invoke-static {p0, v0}, Lcom/sec/terrace/TerraceApplicationStatus;->registerStateListenerForActivity(Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;Landroid/app/Activity;)V

    return-void
.end method
