.class public final synthetic Lcom/sec/android/app/sbrowser/object_capture/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/object_capture/c;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/object_capture/c;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/object_capture/c;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/object_capture/c;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-static {p0, p1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->a(Landroid/view/MenuItem$OnMenuItemClickListener;Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :pswitch_0
    check-cast p0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    invoke-static {p0, p1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->b(Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :pswitch_1
    check-cast p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->a(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
