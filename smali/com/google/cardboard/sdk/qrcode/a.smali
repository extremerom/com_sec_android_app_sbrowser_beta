.class public final synthetic Lcom/google/cardboard/sdk/qrcode/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/cardboard/sdk/qrcode/AsyncTask;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/cardboard/sdk/qrcode/AsyncTask;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/google/cardboard/sdk/qrcode/a;->a:I

    iput-object p1, p0, Lcom/google/cardboard/sdk/qrcode/a;->b:Lcom/google/cardboard/sdk/qrcode/AsyncTask;

    iput-object p2, p0, Lcom/google/cardboard/sdk/qrcode/a;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/google/cardboard/sdk/qrcode/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/cardboard/sdk/qrcode/a;->b:Lcom/google/cardboard/sdk/qrcode/AsyncTask;

    iget-object p0, p0, Lcom/google/cardboard/sdk/qrcode/a;->c:Ljava/lang/Object;

    invoke-static {v0, p0}, Lcom/google/cardboard/sdk/qrcode/AsyncTask;->a(Lcom/google/cardboard/sdk/qrcode/AsyncTask;Ljava/lang/Object;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/cardboard/sdk/qrcode/a;->b:Lcom/google/cardboard/sdk/qrcode/AsyncTask;

    iget-object p0, p0, Lcom/google/cardboard/sdk/qrcode/a;->c:Ljava/lang/Object;

    invoke-static {v0, p0}, Lcom/google/cardboard/sdk/qrcode/AsyncTask;->b(Lcom/google/cardboard/sdk/qrcode/AsyncTask;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
