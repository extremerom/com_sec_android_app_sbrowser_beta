.class public final synthetic Lorg/chromium/base/supplier/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/chromium/base/supplier/TransitiveObservableSupplier;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/base/supplier/TransitiveObservableSupplier;I)V
    .locals 0

    iput p2, p0, Lorg/chromium/base/supplier/a;->a:I

    iput-object p1, p0, Lorg/chromium/base/supplier/a;->b:Lorg/chromium/base/supplier/TransitiveObservableSupplier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lorg/chromium/base/supplier/a;->a:I

    iget-object p0, p0, Lorg/chromium/base/supplier/a;->b:Lorg/chromium/base/supplier/TransitiveObservableSupplier;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lorg/chromium/base/supplier/TransitiveObservableSupplier;->b(Lorg/chromium/base/supplier/TransitiveObservableSupplier;Ljava/lang/Object;)V

    return-void

    :pswitch_0
    invoke-static {p0, p1}, Lorg/chromium/base/supplier/TransitiveObservableSupplier;->a(Lorg/chromium/base/supplier/TransitiveObservableSupplier;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
