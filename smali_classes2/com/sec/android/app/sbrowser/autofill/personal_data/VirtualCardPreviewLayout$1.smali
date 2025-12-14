.class Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;Landroid/app/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout$1;->this$0:Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout$1;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout$1;->this$0:Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;->e(Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;)Lcom/sec/terrace/Terrace;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/Terrace;->applyVirtualCard(Z)V

    return-void
.end method
