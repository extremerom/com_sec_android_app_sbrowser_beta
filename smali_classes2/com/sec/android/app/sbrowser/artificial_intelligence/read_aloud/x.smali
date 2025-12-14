.class public final synthetic Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput p5, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/x;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/x;->b:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/x;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/x;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/x;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/x;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/x;->b:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/x;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/x;->d:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/x;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->k(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/x;->b:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/x;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/x;->d:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/x;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->C(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/x;->b:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/x;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/x;->d:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/x;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->u(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
