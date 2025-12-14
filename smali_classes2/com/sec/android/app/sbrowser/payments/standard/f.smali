.class public final synthetic Lcom/sec/android/app/sbrowser/payments/standard/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient$AuthCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient;

.field public final synthetic c:I

.field public final synthetic d:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

.field public final synthetic e:Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient;ILcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;I)V
    .locals 0

    iput p5, p0, Lcom/sec/android/app/sbrowser/payments/standard/f;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/f;->b:Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient;

    iput p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/f;->c:I

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/payments/standard/f;->d:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/payments/standard/f;->e:Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Z)V
    .locals 3

    iget v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/f;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/f;->b:Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient;

    iget v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/f;->c:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/f;->d:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/f;->e:Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient;->b(Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient;ILcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/f;->b:Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient;

    iget v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/f;->c:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/f;->d:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/f;->e:Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient;->a(Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient;ILcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
