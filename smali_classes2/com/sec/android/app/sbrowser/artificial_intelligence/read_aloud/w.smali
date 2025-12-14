.class public final synthetic Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;

.field public final synthetic c:Ljava/lang/Integer;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/w;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/w;->b:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/w;->c:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/w;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/w;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/w;->f:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/w;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/w;->b:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/w;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/w;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/w;->f:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/w;->c:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/w;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/w;->c:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/w;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/w;->b:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/w;->e:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/w;->f:Ljava/lang/String;

    invoke-static {v2, v0, v1, v3, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->f(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/w;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/w;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/w;->b:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/w;->f:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/w;->c:Ljava/lang/Integer;

    invoke-static {v2, p0, v0, v1, v3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->t(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
