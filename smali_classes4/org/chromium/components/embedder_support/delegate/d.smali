.class public final synthetic Lorg/chromium/components/embedder_support/delegate/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;I)V
    .locals 0

    iput p2, p0, Lorg/chromium/components/embedder_support/delegate/d;->a:I

    iput-object p1, p0, Lorg/chromium/components/embedder_support/delegate/d;->b:Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget v0, p0, Lorg/chromium/components/embedder_support/delegate/d;->a:I

    iget-object p0, p0, Lorg/chromium/components/embedder_support/delegate/d;->b:Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1, p2}, Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;->b(Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_0
    invoke-static {p0, p1, p2}, Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;->a(Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;Landroid/content/DialogInterface;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
