.class public final synthetic Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler;ZI)V
    .locals 0

    iput p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/e;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/e;->b:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/e;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/e;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/e;->b:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/e;->c:Z

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler;->g(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler;Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/e;->b:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/e;->c:Z

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler;->k(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler;Z)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/e;->b:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/e;->c:Z

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler;->r(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
