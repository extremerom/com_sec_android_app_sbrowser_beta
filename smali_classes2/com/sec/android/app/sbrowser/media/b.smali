.class public final synthetic Lcom/sec/android/app/sbrowser/media/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$VisibleResultCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/media/b;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleResult(ZLandroid/graphics/Rect;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/media/b;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/b;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/media/assistant/MAController;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/media/assistant/MAController;->a(Lcom/sec/android/app/sbrowser/media/assistant/MAController;ZLandroid/graphics/Rect;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/media/MediaHandler;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->f(Lcom/sec/android/app/sbrowser/media/MediaHandler;ZLandroid/graphics/Rect;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
