.class public final synthetic Lcom/sec/android/app/sbrowser/hide_toolbar/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/d;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/d;->b:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCallback(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/d;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/d;->b:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    check-cast p1, Landroid/graphics/Bitmap;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->onBottomBarBitmapCaptured(Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->onTopBarBitmapCaptured(Landroid/graphics/Bitmap;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
