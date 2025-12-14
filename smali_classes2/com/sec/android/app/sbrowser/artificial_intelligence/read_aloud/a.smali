.class public final synthetic Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/a;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/a;->b:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCallback(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/a;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/a;->b:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler;->b(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler;Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler;->F(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler;Ljava/lang/Boolean;)V

    return-void

    :pswitch_1
    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler;->E(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
