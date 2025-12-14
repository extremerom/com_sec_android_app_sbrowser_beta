.class public final synthetic Lorg/chromium/base/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lorg/chromium/base/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lorg/chromium/base/a;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Ljava/lang/Exception;

    invoke-static {p1}, Lorg/chromium/base/Promise;->a(Ljava/lang/Exception;)V

    return-void

    :pswitch_0
    invoke-static {p1}, Lorg/chromium/base/CallbackUtils;->a(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
