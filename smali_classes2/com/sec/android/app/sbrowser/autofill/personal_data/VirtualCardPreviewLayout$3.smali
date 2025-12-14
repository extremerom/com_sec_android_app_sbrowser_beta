.class Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout$3;->this$0:Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-ne p2, v1, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout$3;->this$0:Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;->e(Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;)Lcom/sec/terrace/Terrace;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/Terrace;->applyVirtualCard(Z)V

    :cond_0
    return v1
.end method
