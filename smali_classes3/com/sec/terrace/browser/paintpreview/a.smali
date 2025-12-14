.class public final synthetic Lcom/sec/terrace/browser/paintpreview/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator;I)V
    .locals 0

    iput p2, p0, Lcom/sec/terrace/browser/paintpreview/a;->a:I

    iput-object p1, p0, Lcom/sec/terrace/browser/paintpreview/a;->b:Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/sec/terrace/browser/paintpreview/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/sec/terrace/browser/paintpreview/a;->b:Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {p0, p1}, Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator;->a(Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator;Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Lcom/sec/terrace/browser/paintpreview/a;->b:Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator;->onCompositorResult(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
