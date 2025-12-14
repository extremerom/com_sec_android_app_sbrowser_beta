.class public final synthetic Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnDragListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/e;->a:I

    iput-object p2, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/e;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/e;->a:I

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/e;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/helper/DragAndDropHelper;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/helper/DragAndDropHelper;->a(Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/helper/DragAndDropHelper;Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result p0

    return p0

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->a(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result p0

    return p0

    :pswitch_1
    check-cast p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->b(Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
