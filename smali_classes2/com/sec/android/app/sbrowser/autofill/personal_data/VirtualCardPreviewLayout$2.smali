.class Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout$2;
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout$2;->this$0:Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout$2;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getInstance()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout$2;->this$0:Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;->b(Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getCreditCard(Ljava/lang/String;)Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout$2;->this$0:Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;->d(Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->setNumber(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->setIsVirtualCard(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout$2;->this$0:Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;->a(Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->setCvcForVirtualCard(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout$2;->this$0:Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;->c(Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->setMonth(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout$2;->this$0:Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;->f(Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->setYear(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getInstance()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->updateCreditCardCache(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout$2;->this$0:Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;->e(Lcom/sec/android/app/sbrowser/autofill/personal_data/VirtualCardPreviewLayout;)Lcom/sec/terrace/Terrace;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/terrace/Terrace;->applyVirtualCard(Z)V

    return-void
.end method
