.class public final synthetic Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;

.field public final synthetic c:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;I)V
    .locals 0

    iput p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/E;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/E;->b:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/E;->c:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCallback(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/E;->a:I

    check-cast p1, Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/E;->b:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/E;->c:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->b(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/E;->b:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/E;->c:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->m(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
