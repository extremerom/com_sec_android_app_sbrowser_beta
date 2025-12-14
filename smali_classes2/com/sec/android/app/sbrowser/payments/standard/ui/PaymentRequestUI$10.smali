.class Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->createUpdateSectionCallback(I)Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/android/app/sbrowser/payments/standard/common/Callback<",
        "Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

.field final synthetic val$type:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$10;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    iput p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$10;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$10;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    iget v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$10;->val$type:I

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->updateSection(ILcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$10;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->B(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$10;->onResult(Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;)V

    return-void
.end method
