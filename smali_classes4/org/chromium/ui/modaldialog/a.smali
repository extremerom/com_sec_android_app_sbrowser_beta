.class public final synthetic Lorg/chromium/ui/modaldialog/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/chromium/ui/modaldialog/ModalDialogManager;

.field public final synthetic c:Lorg/chromium/ui/modelutil/PropertyModel;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/ui/modaldialog/ModalDialogManager;Lorg/chromium/ui/modelutil/PropertyModel;I)V
    .locals 0

    iput p3, p0, Lorg/chromium/ui/modaldialog/a;->a:I

    iput-object p1, p0, Lorg/chromium/ui/modaldialog/a;->b:Lorg/chromium/ui/modaldialog/ModalDialogManager;

    iput-object p2, p0, Lorg/chromium/ui/modaldialog/a;->c:Lorg/chromium/ui/modelutil/PropertyModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lorg/chromium/ui/modaldialog/a;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroidx/activity/q;

    iget-object v0, p0, Lorg/chromium/ui/modaldialog/a;->b:Lorg/chromium/ui/modaldialog/ModalDialogManager;

    iget-object p0, p0, Lorg/chromium/ui/modaldialog/a;->c:Lorg/chromium/ui/modelutil/PropertyModel;

    invoke-static {v0, p0, p1}, Lorg/chromium/ui/modaldialog/ModalDialogManager;->c(Lorg/chromium/ui/modaldialog/ModalDialogManager;Lorg/chromium/ui/modelutil/PropertyModel;Landroidx/activity/q;)V

    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/Integer;

    iget-object v0, p0, Lorg/chromium/ui/modaldialog/a;->b:Lorg/chromium/ui/modaldialog/ModalDialogManager;

    iget-object p0, p0, Lorg/chromium/ui/modaldialog/a;->c:Lorg/chromium/ui/modelutil/PropertyModel;

    invoke-static {v0, p0, p1}, Lorg/chromium/ui/modaldialog/ModalDialogManager;->a(Lorg/chromium/ui/modaldialog/ModalDialogManager;Lorg/chromium/ui/modelutil/PropertyModel;Ljava/lang/Integer;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
