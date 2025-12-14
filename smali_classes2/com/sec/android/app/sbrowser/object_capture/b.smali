.class public final synthetic Lcom/sec/android/app/sbrowser/object_capture/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/object_capture/b;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/object_capture/b;->b:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/object_capture/b;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/object_capture/b;->b:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->b(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;)V

    return-void

    :pswitch_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->c(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;)V

    return-void

    :pswitch_1
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->a(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;)V

    return-void

    :pswitch_2
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;->d(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureModel;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
