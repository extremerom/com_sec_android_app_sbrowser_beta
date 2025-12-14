.class public final synthetic Lorg/chromium/components/embedder_support/delegate/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;I)V
    .locals 0

    iput p2, p0, Lorg/chromium/components/embedder_support/delegate/c;->a:I

    iput-object p1, p0, Lorg/chromium/components/embedder_support/delegate/c;->b:Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lorg/chromium/components/embedder_support/delegate/c;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Lorg/chromium/components/embedder_support/delegate/c;->b:Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;

    invoke-static {p0, p1}, Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;->c(Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;I)V

    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lorg/chromium/components/embedder_support/delegate/c;->b:Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;

    invoke-static {p0, p1}, Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;->b(Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;Z)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lorg/chromium/components/embedder_support/delegate/c;->b:Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;

    check-cast p1, Ljava/lang/Void;

    invoke-static {p0, p1}, Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;->d(Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;Ljava/lang/Void;)V

    return-void

    :pswitch_2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Lorg/chromium/components/embedder_support/delegate/c;->b:Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;

    invoke-static {p0, p1}, Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;->a(Lorg/chromium/components/embedder_support/delegate/ColorPickerCoordinator;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
