.class public final synthetic Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/r;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/r;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCallback(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/r;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/r;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler;->onThumbnailBitmapUpdated(Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;->b(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudResultViewHandler;Ljava/lang/Integer;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->d(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;Ljava/lang/String;)V

    return-void

    :pswitch_2
    check-cast p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler$4;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler$4;->c(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler$4;Ljava/lang/Boolean;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
